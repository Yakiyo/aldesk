import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';
import 'filters.dart';
import 'sort.dart';

part 'provider.g.dart';

typedef MediaListMedia
    = QueryMediaListCollectionMediaListCollectionlistsentries;

@Riverpod(keepAlive: true)
FutureOr<QueryMediaListCollectionMediaListCollection> mediaList(
    Ref ref, int userId, EnumMediaType type) async {
  ref.invalidateAfter(const Duration(minutes: 5));
  logger.i('Fetching ${type.name} list for user $userId');
  final res = await mediaListCollection(mediaType: type, userId: userId);
  return res;
}

@riverpod
FutureOr<List<String>> listNames(
    Ref ref, int userId, EnumMediaType type) async {
  final lists = await ref.watch(mediaListProvider(userId, type)
      .selectAsync((value) => value.lists?.filterNull() ?? []));
  return lists.map((e) => e.name).toList().filterNull();
}

@riverpod
FutureOr<List<MediaListCollection>> mediaListData(
    Ref ref, int userId, EnumMediaType type) async {
  final res = await ref.watch(mediaListProvider(userId, type)
      .selectAsync((value) => value.lists?.filterNull() ?? []));

  var data = res.map((list) => MediaListCollection(
      name: list.name ?? "", entries: list.entries?.filterNull() ?? []));

  final filters = ref.watch(listFilterProvider);
  final sort = ref.watch(mediaListSortProvider);
  final query = filters.query;
  final list = filters.list;
  final genres = filters.genres;
  final format = filters.format;
  final status = filters.status;
  // filter out only the list that is specified
  if (list != null) {
    data = data.where((e) => e.name == list).toList();
  }

  return data.map((list) {
    return list
        .filterByQuery(query)
        .filterByGenres(genres)
        .filterByFormat(format)
        .filterByStatus(status)
        .sortEntries(sort);
  }).toList();
}

/// A class that represents a media list collection.
///
/// Contains the media list name and its associated entries
class MediaListCollection {
  final String name;
  final List<MediaListMedia> entries;

  MediaListCollection({required this.name, required this.entries});

  MediaListCollection filterByQuery(String? query) {
    if (query == null || query.isEmpty) return this;
    // filter entries by query, search the title first, then the notes,
    // otherwise return false
    final entries = this.entries.where((entry) {
      final inTitle = (entry.media?.title?.userPreferred ?? "")
          .toLowerCase()
          .contains(query.toLowerCase());
      final inNotes =
          (entry.notes ?? "").toLowerCase().contains(query.toLowerCase());
      return inTitle || inNotes;
    });
    return MediaListCollection(name: name, entries: entries.toList());
  }

  MediaListCollection filterByGenres(List<String>? genres) {
    if (genres == null || genres.isEmpty) return this;
    final entries = this.entries.where((entry) {
      final entryGenres = entry.media?.genres?.filterNull() ?? [];
      return genres.every((genre) => entryGenres.contains(genre));
    });
    return MediaListCollection(name: name, entries: entries.toList());
  }

  MediaListCollection filterByFormat(EnumMediaFormat? format) {
    if (format == null) return this;
    final entries = this.entries.where((entry) {
      return entry.media?.format == format;
    });
    return MediaListCollection(name: name, entries: entries.toList());
  }

  MediaListCollection filterByStatus(EnumMediaStatus? status) {
    if (status == null) return this;
    final entries = this.entries.where((entry) {
      return entry.media?.status == status;
    });
    return MediaListCollection(name: name, entries: entries.toList());
  }

  MediaListCollection sortEntries(ListSort sort) {
    var entries = this.entries.toList();
    switch (sort) {
      case ListSort.title:
        entries.sort((a, b) {
          return a.media?.title?.userPreferred
                  ?.compareTo(b.media?.title?.userPreferred ?? "") ??
              0;
        });
        break;
      case ListSort.progress:
        entries.sort((a, b) {
          return (b.progress ?? 0).compareTo(a.progress ?? 0);
        });
        break;
      case ListSort.score:
        entries.sort((a, b) {
          return (b.score ?? 0).compareTo(a.score ?? 0);
        });
        break;
      case ListSort.lastUpdated:
        entries.sort((a, b) {
          return (b.updatedAt ?? 0).compareTo(a.updatedAt ?? 0);
        });
        break;
      case ListSort.lastAdded:
        entries.sort((a, b) {
          return (b.createdAt ?? 0).compareTo(a.createdAt ?? 0);
        });
        break;
      case ListSort.completedDate:
        entries.sort((a, b) {
          final bc = DateTime(b.completedAt?.year ?? 0,
              b.completedAt?.month ?? 0, b.completedAt?.day ?? 0);
          final ac = DateTime(a.completedAt?.year ?? 0,
              a.completedAt?.month ?? 0, a.completedAt?.day ?? 0);
          return bc.compareTo(ac);
        });
      case ListSort.startDate:
        entries.sort((a, b) {
          final bc = DateTime(b.startedAt?.year ?? 0, b.startedAt?.month ?? 0,
              b.startedAt?.day ?? 0);
          final ac = DateTime(a.startedAt?.year ?? 0, a.startedAt?.month ?? 0,
              a.startedAt?.day ?? 0);
          return bc.compareTo(ac);
        });
    }
    return MediaListCollection(name: name, entries: entries);
  }
}
