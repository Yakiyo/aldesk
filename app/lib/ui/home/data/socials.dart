// social activity related items - Reviews and Forum Threads

import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';

part 'socials.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<FragmentReview>> recentReviews(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 5));
  logger.i("Fetching recent reviews");
  return paginatedReviews(perPage: 5)
      .then((value) => value.reviews?.filterNull() ?? []);
}

// update threads every 2 mins cause they change more often because of user replies
@Riverpod(keepAlive: true)
FutureOr<List<FragmentThreadMin>> recentThreads(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 2));
  logger.i("Fetching recent threads");
  return paginatedThreads(
          perPage: 6,
          sort: [EnumThreadSort.REPLIED_AT_DESC, EnumThreadSort.ID_DESC])
      .then((value) => value.threads?.filterNull() ?? []);
}
