// providers related to anilist api

import 'dart:async';

import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/get.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Future<int> unreadNotification(Ref ref) {
  // every 15 mins, we invalidate the provider, so it refetches the data
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching unread notification count");
  return unreadNotificationCount();
}

// popular and trending medias do not change that easily over the span of a single
// app runtime, so we just cache them and invalidate them every 15 minutes

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> trendingMediaItem(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching trending media");
  return trendingMedia().then((value) => value.media?.filterNull() ?? []);
}

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> popularMediaItem(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching popular media");
  return popularMedia().then((value) => value.media?.filterNull() ?? []);
}

// reviews are more likely to change quickly, so we cache them for 5 mins
@Riverpod(keepAlive: true)
FutureOr<List<FragmentReview>> recentReviews(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 5));
  logger.i("Fetching recent reviews");
  return paginatedReviews(perPage: 5)
      .then((value) => value.reviews?.filterNull() ?? []);
}

// update threads every 2 mins cause they change more often because of user replies
@Riverpod(keepAlive: true)
FutureOr<List<QueryThreadsPagethreads>> recentThreads(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 2));
  logger.i("Fetching recent threads");
  return paginatedThreads(
          perPage: 6,
          sort: [EnumThreadSort.REPLIED_AT_DESC, EnumThreadSort.ID_DESC])
      .then((value) => value.threads?.filterNull() ?? []);
}

extension TimeRef on Ref {
  void invalidateAfter(Duration duration) {
    final timer = Timer(duration, () => invalidateSelf());
    onDispose(() {
      if (timer.isActive) {
        timer.cancel();
      }
    });
  }
}

// keep it a multiple of 6, so that theres always a full row of activities
// since max 3 activities are shown in a row and 2 rows are shown when screen is
// not wide enough
const _activityPerPage = 18;

@riverpod
class GlobalActivities extends _$GlobalActivities {
  int _page = 1;
  @override
  FutureOr<List<QueryActivitiesPageactivities>> build() {
    return globalActivities(page: _page, perPage: _activityPerPage)
        .then((page) => page.activities?.filterNull() ?? []);
  }

  Future<void> loadMore() async {
    _page++;
    final newActivities =
        await globalActivities(page: _page, perPage: _activityPerPage)
            .then((page) => page.activities?.filterNull() ?? []);
    final prevActivities = await future;

    state = AsyncData([...prevActivities, ...newActivities]);
  }
}

@riverpod
class FollowingActivities extends _$FollowingActivities {
  int _page = 1;
  bool _hasNext = true;
  @override
  FutureOr<List<QueryActivitiesPageactivities>> build() async {
    return _getActivities();
  }

  Future<List<QueryActivitiesPageactivities>> _getActivities() async {
    final page =
        await followingActivities(page: _page, perPage: _activityPerPage);
    _hasNext = page.pageInfo?.hasNextPage ?? false;
    return page.activities?.filterNull() ?? [];
  }

  Future<void> loadMore() async {
    // prevent over progression, since sometimes there aren't any more pages
    // for example, a newly signed in user might not have many activities
    if (!_hasNext) return;
    _page++;
    final newActivities = await _getActivities();
    final prevActivities = await future;

    state = AsyncData([...prevActivities, ...newActivities]);
  }
}

@riverpod
Future<List<QueryActivitiesPageactivities>> generalActivity(Ref ref) {
  final type = ref.watch(activityTypeProvider);
  if (type == ActivityType.following) {
    return ref.watch(followingActivitiesProvider.future);
  } else {
    return ref.watch(globalActivitiesProvider.future);
  }
}

enum ActivityType {
  following,
  global,
}

@riverpod
ActivityType activityType(Ref ref) {
  final str = pref.getString("activityType") ?? "following";
  return ActivityType.values.firstWhere(
    (e) => e.name == str,
    orElse: () => ActivityType.following,
  );
}

void updateActivityType(ActivityType type, WidgetRef ref) async {
  await pref.setString("activityType", type.name);
  ref.invalidate(activityTypeProvider);
}
