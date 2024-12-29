import 'package:anilist/models.dart';

extension Compare on FragmentMediaList {
  /// Compare two instances of [FragmentMediaList]
  bool operator >(FragmentMediaList other) {
    return isGt(other);
  }

  /// if [this] is greater than [other]
  ///
  /// precedence is determined by the following:
  /// - if only one is airing, the airing one is greater
  /// - if both are airing, the one that'll have a new episode sooner is greater
  /// - if neither are airing, the one that was most recently updated is greater
  bool isGt(FragmentMediaList other) {
    final self = this;
    // for manga we just sort based on last updated
    if ([self.media?.type, other.media?.type]
        .every((element) => element == EnumMediaType.MANGA)) {
      return self.updatedAt! > other.updatedAt!;
    }

    // if this is airing while other is not, then this is greater
    if (self.media!.status == EnumMediaStatus.RELEASING) {
      if (other.media!.status != EnumMediaStatus.RELEASING) {
        return true;
      }
      // if both are airing, the one with the sooner next airing date is greater
      return (self.media!.nextAiringEpisode?.timeUntilAiring ??
              double.infinity) <
          (other.media!.nextAiringEpisode?.timeUntilAiring ?? double.infinity);
    }

    // self is not releasing, but other is, so other is greater
    if (other.media!.status == EnumMediaStatus.RELEASING) {
      return false;
    }
    // if neither is releasing, the one that was most recently updated should
    // be considered greater
    return self.updatedAt! > other.updatedAt!;
  }
}

extension Helpers on FragmentMediaMin {
  /// total episodes or chapters for the media
  int? get total => switch (type) {
        EnumMediaType.ANIME => episodes,
        EnumMediaType.MANGA => chapters,
        _ => null,
      };

  bool get isAnime => type == EnumMediaType.ANIME;
  bool get isManga => !isAnime;
}

/// Converts a dart DateTime object to an EnumMediaSeason
///
/// Based on the information provided in the [Anilist API docs](https://submission-manual.anilist.co/anilist/Release-Data-72ae49d8449842868b73520512b5471e)
EnumMediaSeason timeToSeason(DateTime month) {
  return switch (month.month) {
    DateTime.january ||
    DateTime.february ||
    DateTime.march =>
      EnumMediaSeason.WINTER,
    DateTime.april || DateTime.may || DateTime.june => EnumMediaSeason.SPRING,
    DateTime.july ||
    DateTime.august ||
    DateTime.september =>
      EnumMediaSeason.SUMMER,
    DateTime.october ||
    DateTime.november ||
    DateTime.december =>
      EnumMediaSeason.FALL,
    _ => throw Exception('Invalid month'),
  };
}
