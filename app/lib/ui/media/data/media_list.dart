import 'package:aldesk/config/utils/extensions.dart';
import 'package:aldesk/ui/auth/data/token.dart';
import 'package:anilist/models.dart';
import 'package:anilist/anilist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_list.g.dart';

@Riverpod(keepAlive: true)
class MediaListItem extends _$MediaListItem {
  @override
  FutureOr<FragmentMediaList?> build(int mediaId) async {
    ref.invalidateAfter(const Duration(minutes: 3));
    final userId =
        await ref.read(authUserProvider.selectAsync((user) => user.id));
    try {
      final entry = await mediaListEntry(mediaId: mediaId, userId: userId);
      return entry;
    } on ApiErrors catch (e) {
      if (e.errors.any((element) => element.message.toLowerCase().contains("not found"))) {
        return null;
      }
      rethrow;
    }
  }
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

    return MediaListFormData(
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
        notes: entry.notes);
  }

  void updateData() {
    // TODO: make api call here

    ref.invalidate(mediaListItemProvider(_mediaId));
  }
}

DateTime? fromFuzzyDate(int? year, int? month, int? day) {
  if ([year, month, day].every((element) => element != null)) {
    return DateTime(year!, month!, day!);
  }
  return null;
}

class MediaListFormData {
  final EnumMediaListStatus? status;
  final int score;
  final int progress;
  final int? progressVolumes;
  final int repeat;
  final bool private;
  final bool hiddenFromStatusLists;
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
      required this.notes});

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
    );
  }
}
