// providers related to anilist api

import 'dart:async';

import 'package:aldesk/core/utils/get.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Future<int> unreadNotification(Ref ref) {
  // every 15 mins, we invalidate the provider, so it refetches the data
  final timer = Timer(const Duration(minutes: 15), () => ref.invalidateSelf());
  // when provider is disposed, we dispose the timer too, if its still active
  // this is necessary when notifications are read from another part of the app,
  // for example, when user visits the notification page, we mark all notifications as read
  ref.onDispose(() {
    if (timer.isActive) {
      timer.cancel();
    }
  });

  logger.i("Fetching unread notification count");
  return unreadNotificationCount();
}

// popular and trending medias do not change that easily over the span of a single
// app runtime, so we just cache them and invalidate them every 15 minutes

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> trendingMediaItem(Ref ref) {
  final timer = Timer(const Duration(minutes: 15), () => ref.invalidateSelf());
  ref.onDispose(() {
    if (timer.isActive) {
      timer.cancel();
    }
  });
  return trendingMedia().then((value) => value.media?.filterNull() ?? []);
}

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> popularMediaItem(Ref ref) {
  final timer = Timer(const Duration(minutes: 15), () => ref.invalidateSelf());
  ref.onDispose(() {
    if (timer.isActive) {
      timer.cancel();
    }
  });
  return popularMedia().then((value) => value.media?.filterNull() ?? []);
}

// reviews are more likely to change quickly, so we cache them for 5 mins
@Riverpod(keepAlive: true)
FutureOr<List<FragmentReview>> recentReviews(Ref ref) {
  final timer = Timer(const Duration(minutes: 5), () => ref.invalidateSelf());
  ref.onDispose(() {
    if (timer.isActive) {
      timer.cancel();
    }
  });
  return paginatedReviews(perPage: 5)
      .then((value) => value.reviews?.filterNull() ?? []);
}
