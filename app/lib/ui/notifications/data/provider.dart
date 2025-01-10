import 'package:anilist/anilist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
Future<int> unreadNotification(Ref ref) {
  // every 15 mins, we invalidate the provider, so it refetches the data
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching unread notification count");
  return unreadNotificationCount();
}
