import 'package:anilist/models.dart';

extension Compare on FragmentMediaList {
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
    // if this is airing while other is not, then this is greater
    if (self.media!.status == EnumMediaStatus.RELEASING) {
      if (other.media!.status != EnumMediaStatus.RELEASING) {
        return true;
      }
      // if both are airing, the one with the sooner next airing date is greater
      return self.media!.nextAiringEpisode!.timeUntilAiring <
          other.media!.nextAiringEpisode!.timeUntilAiring;
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