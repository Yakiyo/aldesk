import 'dart:async';

import 'package:aldesk/core/utils/get.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<PackageInfo> packageInfo(Ref ref) {
  return PackageInfo.fromPlatform();
}

@riverpod
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
