import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/extensions.dart';
import '../../auth/data/token.dart';

part 'media_list.g.dart';

@riverpod
class MediaListItem extends _$MediaListItem {
  late int _mediaId;
  @override
  FutureOr<FragmentMediaList?> build(int mediaId) async {
    _mediaId = mediaId;
    final userId =
        await ref.read(authUserProvider.selectAsync((user) => user.id));
    try {
      final entry = await mediaListEntry(mediaId: mediaId, userId: userId);
      return entry;
    } on ApiErrors catch (e) {
      if (e.errors.any(
          (element) => element.message.toLowerCase().contains("not found"))) {
        return null;
      }
      rethrow;
    }
  }

  Future<void> updateData(MediaListFormData data) async {
    final mediaList = await saveMediaListEntry(
        mediaId: _mediaId,
        private: data.private,
        progress: data.progress,
        progressVolumes: data.progressVolumes,
        status: data.status,
        score: data.score.toDouble(),
        repeat: data.repeat,
        notes: data.notes,
        startedAt: InputFuzzyDateInput(
            year: data.startedAt?.year,
            month: data.startedAt?.month,
            day: data.startedAt?.day),
        completedAt: InputFuzzyDateInput(
          year: data.completedAt?.year,
          month: data.completedAt?.month,
          day: data.completedAt?.day,
        ));
    state = AsyncData(mediaList);
  }
}

@riverpod
FutureOr<String> mediaListStatus(Ref ref, int mediaId) async {
  final status = await ref.watch(
      mediaListItemProvider(mediaId).selectAsync((entry) => entry?.status));
  return status == null
      ? "Add to list"
      : status.name.toLowerCase().capitalize();
}

@riverpod
class FormData extends _$FormData {
  late int _mediaId;
  @override
  FutureOr<MediaListFormData> build(int mediaId) async {
    _mediaId = mediaId;
    final entry = await ref.watch(mediaListItemProvider(mediaId).future);
    if (entry == null) {
      return MediaListFormData.defaultValue();
    }

    final lists =
        entry.customLists?.map((key, value) => MapEntry(key, value as bool)) ??
            {};

    return MediaListFormData(
        customLists: lists,
        status: entry.status,
        score: entry.score?.toInt() ?? 0,
        progress: entry.progress ?? 0,
        progressVolumes: entry.progressVolumes ?? 0,
        repeat: entry.repeat ?? 0,
        private: entry.private ?? false,
        hiddenFromStatusLists: entry.hiddenFromStatusLists ?? false,
        startedAt: fromFuzzyDate(entry.startedAt?.year, entry.startedAt?.month,
            entry.startedAt?.day),
        completedAt: fromFuzzyDate(entry.completedAt?.year,
            entry.completedAt?.month, entry.completedAt?.day),
        notes: entry.notes,
        isFavourite: entry.media?.isFavourite ?? false);
  }

  Future<void> updateData(MediaListFormData newData) {
    return ref
        .read(mediaListItemProvider(_mediaId).notifier)
        .updateData(newData);
  }
}

DateTime? fromFuzzyDate(int? year, int? month, int? day) {
  if ([year, month, day].every((element) => element != null)) {
    return DateTime(year!, month!, day!);
  }
  return null;
}

class MediaListFormData {
  final Map<String, bool> customLists;
  final EnumMediaListStatus? status;
  final int score;
  final int progress;
  final int? progressVolumes;
  final int repeat;
  final bool private;
  final bool hiddenFromStatusLists;
  final bool isFavourite;
  final DateTime? startedAt;
  final DateTime? completedAt;
  final String? notes;

  MediaListFormData(
      {required this.status,
      required this.score,
      required this.progress,
      required this.progressVolumes,
      required this.repeat,
      required this.private,
      required this.hiddenFromStatusLists,
      required this.startedAt,
      required this.completedAt,
      required this.notes,
      required this.isFavourite,
      this.customLists = const {}});

  MediaListFormData copyWith({
    EnumMediaListStatus? status,
    int? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    bool? private,
    bool? hiddenFromStatusLists,
    DateTime? startedAt,
    DateTime? completedAt,
    String? notes,
    bool? isFavourite,
    Map<String, bool>? customLists,
  }) {
    return MediaListFormData(
      status: status ?? this.status,
      score: score ?? this.score,
      progress: progress ?? this.progress,
      progressVolumes: progressVolumes ?? this.progressVolumes,
      repeat: repeat ?? this.repeat,
      private: private ?? this.private,
      hiddenFromStatusLists:
          hiddenFromStatusLists ?? this.hiddenFromStatusLists,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      notes: notes ?? this.notes,
      isFavourite: isFavourite ?? this.isFavourite,
      customLists: customLists ?? this.customLists,
    );
  }

  factory MediaListFormData.defaultValue() {
    return MediaListFormData(
      status: EnumMediaListStatus.PLANNING,
      score: 0,
      progress: 0,
      progressVolumes: 0,
      repeat: 0,
      private: false,
      hiddenFromStatusLists: false,
      startedAt: DateTime.now(),
      completedAt: null,
      notes: null,
      isFavourite: false,
      customLists: {},
    );
  }
}
