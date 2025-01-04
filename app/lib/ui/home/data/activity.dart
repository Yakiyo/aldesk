// providers related to anilist api

import 'dart:async';

import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';

part 'activity.g.dart';

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

  /// Toggles like on a specific activity.
  ///
  /// It basically gets the index of the activity in the list, makes a toggle like
  /// mutation, and then updates the activity in the list with the new activity.
  ///
  /// ToggleLikeV2 when returning a ListActivity, does not include a media object,
  /// so we have to manually add it from the previous activity data.
  Future<void> toggleLike(QueryActivitiesPageactivities activity) async {
    final json = activity.toJson();
    final id = json['id'] as int?;
    if (id == null) return;
    final activities = await future;
    final index = activities.indexWhere((e) =>
        e.maybeWhen(orElse: () => false, listActivity: (e) => e.id == id));
    if (index < 0) return;
    final newActivity = await toggleActivityLike(id);
    final asActivity = newActivity.maybeWhen(
      orElse: () => throw Error(),
      listActivity: (e) {
        final ejson = e.toJson();
        ejson['media'] = json['media'];
        return QueryActivitiesPageactivitiesListActivity.fromJson(ejson);
      },
      messageActivity: (e) =>
          QueryActivitiesPageactivitiesMessageActivity.fromJson(e.toJson()),
      textActivity: (e) =>
          QueryActivitiesPageactivitiesTextActivity.fromJson(e.toJson()),
    );
    activities[index] = asActivity;
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
