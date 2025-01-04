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
FutureOr<List<FragmentThreadMin>> recentThreads(Ref ref) {
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
class RecentActivity extends _$RecentActivity {
  int _page = 1;
  bool _hasNext = false;
  late Future<QueryActivitiesPage> Function({int page, int perPage}) _fetcher;
  @override
  FutureOr<List<QueryActivitiesPageactivities>> build() async {
    final type = ref.watch(activityTypeProvider);
    _fetcher =
        type == ActivityType.following ? followingActivities : globalActivities;
    final res = await _fetcher(page: _page, perPage: _activityPerPage);
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    return res.activities?.filterNull() ?? [];
  }

  Future<void> loadMore() async {
    if (!_hasNext) return;
    _page++;
    final res = await _fetcher(page: _page, perPage: _activityPerPage);
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    final prevState = await future;
    state = AsyncData([...prevState, ...(res.activities?.filterNull() ?? [])]);
  }

  Future<void> toggleLike(QueryActivitiesPageactivities activity) async {
    final json = activity.toJson();
    final id = json['id'] as int?;
    logger.d("toggling like $id");
    if (id == null) return;
    final activities = await future;
    final index = activities.indexWhere((e) =>
        e.maybeWhen(orElse: () => false, listActivity: (e) => e.id == id));
    logger.d("index $index");
    if (index < 0) return;
    await toggleActivityLike(id);
    final newActivity = await fetchActivity(activityId: id);
    final asActivity = newActivity.maybeWhen(
      orElse: () => throw Error(),
      listActivity: (e) =>
          QueryActivitiesPageactivitiesListActivity.fromJson(e.toJson()),
      messageActivity: (e) =>
          QueryActivitiesPageactivitiesMessageActivity.fromJson(e.toJson()),
      textActivity: (e) =>
          QueryActivitiesPageactivitiesTextActivity.fromJson(e.toJson()),
    );
    logger.d(newActivity.toJson());
    activities[index] = asActivity;
    logger.d('updating state');
    state = AsyncData(activities);
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
