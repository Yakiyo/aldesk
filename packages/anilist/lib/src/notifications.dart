import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

import 'consts.dart';

/// Get the authenticated user's notifications.
///
/// Throws [AuthError] if not authenticated.
ReturnType<QueryNotificationsPage> notifications({
  int page = 1,
  int perPage = 15,
  bool resetNotificationCount = true,
  List<EnumNotificationType>? typeIn,
}) {
  if (!isAuthed()) throw AuthError();

  final variables = VariablesQueryNotifications(
    page: page,
    perPage: perPage,
    resetNotificationCount: resetNotificationCount,
    typeIn: typeIn,
  ).toJson();

  return request(
          query: printNode(documentNodeQueryNotifications),
          variables: variables)
      .then((data) => QueryNotifications.fromJson(data).Page!);
}

/// Get the authenticated user's unread notification count.
///
/// Throws [AuthError] if not authenticated.
ReturnType<int> unreadNotificationCount() {
  if (!isAuthed()) throw AuthError();

  return request(
          query: printNode(documentNodeQueryUnreadNotificationCount),
          variables: {})
      .then((data) =>
          QueryUnreadNotificationCount.fromJson(data)
              .Viewer
              ?.unreadNotificationCount ??
          0);
}
