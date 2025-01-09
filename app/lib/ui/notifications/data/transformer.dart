// utility to convert different notification type to a common type

import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

import '../../../config/routing/routes.dart';

/// Convert a notification to a common type
NotificationUnion transformNotification(
    QueryNotificationsPagenotifications notification) {
  return notification.maybeWhen(
    orElse: () {
      final json = notification.toJson();
      return NotificationUnion(
          id: json['id'] as int,
          createdAt: json['createdAt'] as int,
          context: [
            "Unknown notification type ${json['type']} received. Please file a bug report.\n"
                "In the meantime, consider viewing it on the website."
          ],
          route: "https://anilist.co/notifications",
          image: null);
    },
    airingNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          "Episode ",
          HighlightedText(i.episode.toString()),
          " of ",
          HighlightedText(i.media?.title?.userPreferred ?? "<unknown>"),
          " aired"
        ],
        route: Routes.mediaWithId(i.media!.id),
        image: i.media?.coverImage?.large),
    followingNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " started following you"
        ],
        route: "/user/${i.user?.id}",
        image: i.user?.avatar?.large),
    activityMessageNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: ["${i.user?.name} sent you a message"],
        // TODO: this needs some fixing in the future
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    activityMentionNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " mentioned you in an activity"
        ],
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    activityReplyNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " replied to your activity"
        ],
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    activityReplySubscribedNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " replied to an activity you're subscribed to"
        ],
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    activityLikeNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " liked your activity"
        ],
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    activityReplyLikeNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " liked your activity reply"
        ],
        route: "/activity/${i.activityId}",
        image: i.user?.avatar?.large),
    threadCommentMentionNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " mentioned you in a thread comment"
        ],
        // NOTE: this should generally take us to comment, but i dont plan to support that YET
        route: "/forum/thread/${i.thread!.id}",
        image: i.user?.avatar?.large),
    threadCommentReplyNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " replied to your thread comment"
        ],
        route: "/forum/thread/${i.thread!.id}",
        image: i.user?.avatar?.large),
    threadCommentSubscribedNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " replied to a thread you're subscribed to"
        ],
        route: "/forum/thread/${i.thread!.id}",
        image: i.user?.avatar?.large),
    threadLikeNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " liked your thread"
        ],
        route: "/forum/thread/${i.thread!.id}",
        image: i.user?.avatar?.large),
    threadCommentLikeNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.user?.name ?? "<unknown>"),
          " liked your thread comment"
        ],
        route: "/forum/thread/${i.thread!.id}",
        image: i.user?.avatar?.large),
    relatedMediaAdditionNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.media?.title?.userPreferred ?? "<unknown>"),
          " was recently added to site"
        ],
        route: "/media/${i.media!.id}",
        image: i.media?.coverImage?.large),
    mediaDataChangeNotification: (i) => NotificationUnion(
        id: i.id,
        createdAt: i.createdAt ?? 0,
        context: [
          HighlightedText(i.media?.title?.userPreferred ?? "<unknown>"),
          " received."
        ],
        subtitle: i.reason,
        route: "/media/${i.media!.id}"),
    mediaMergeNotification: (i) => NotificationUnion(
      id: i.id,
      createdAt: i.createdAt ?? 0,
      context: [
        HighlightedText(i.deletedMediaTitles?.join(", ") ?? ""),
        " were merged into ${i.media?.title?.userPreferred ?? "<unknown>"}"
      ],
      subtitle: i.reason,
      route: "/media/${i.media!.id}",
    ),
    mediaDeletionNotification: (i) => NotificationUnion(
      id: i.id,
      createdAt: i.createdAt ?? 0,
      context: [
        HighlightedText(i.deletedMediaTitle ?? "<unknown>"),
        " was deleted from site"
      ],
      subtitle: i.reason,
      route: "https://anilist.co/notifications",
    ),
  );
}

/// A common type for notifications
///
/// [id] is the id of the notification
/// [createdAt] is the time the notification was created
/// [context] is the message of the notification
/// [image] is the image associated with the notification (optional)
///
/// [route] is the route the notification should navigate to. It can be a local
/// route or a web URL
class NotificationUnion {
  final int id;
  final DateTime createdAt;
  final List<dynamic> context;
  final String route;
  final String? subtitle;
  final String? image;
  final Map<String, dynamic> extra;

  NotificationUnion(
      {required this.id,
      required int createdAt,
      required this.context,
      required this.route,
      this.subtitle,
      this.image,
      this.extra = const {}})
      : createdAt = DateTime.fromMillisecondsSinceEpoch(createdAt * 1000);

  TextSpan contextSpan(BuildContext context) {
    return TextSpan(children: [
      for (final item in this.context)
        if (item is HighlightedText)
          TextSpan(
              text: item.text,
              style: TextStyle(color: Theme.of(context).colorScheme.primary))
        else
          TextSpan(
              text: item.toString(),
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color))
    ]);
  }
}

class HighlightedText {
  final String text;

  HighlightedText(this.text);
}
