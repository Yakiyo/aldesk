import 'package:aldesk/core/utils/notifications.dart';
import 'package:aldesk/ui/components/misc/kaomoji.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/providers.dart';
import '../components/layout/my_scaffold.dart';
import '../components/misc/async_widget.dart';

class NotificationsPage extends ConsumerStatefulWidget {
  const NotificationsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationsPageState();
}

class _NotificationsPageState extends ConsumerState<NotificationsPage> {
  late Future<QueryNotificationsPage> future;
  late final int unreadCount;
  @override
  void initState() {
    // get initial unread count when page opens
    unreadCount = ref.read(unreadNotificationProvider).value ?? 0;
    future = notifications(page: 1, perPage: 20).then((value) {
      // first time we load the page, we need to invalidate the unread count
      ref.invalidate(unreadNotificationProvider);
      return value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            future = notifications(page: 1, perPage: 20);
          });
        },
        child: AsyncWidget(
          future: future
              .then((value) => value.notifications!.filterNull())
              .then((value) => value.map(transformNotification).toList()),
          builder: (context, value) => _NotificationPageBody(
              notifications: value, initialUnreadCount: unreadCount),
          loading: (context) => const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: KaomojiLoader(),
            ),
          ),
        ),
      ),
    );
  }
}

class _NotificationPageBody extends StatefulWidget {
  final int initialUnreadCount;
  final List<NotificationUnion> notifications;
  const _NotificationPageBody(
      {required this.notifications, required this.initialUnreadCount});

  @override
  State<_NotificationPageBody> createState() => _NotificationPageBodyState();
}

class _NotificationPageBodyState extends State<_NotificationPageBody> {
  int page = 1;
  late List<NotificationUnion> notificationItems;

  @override
  void initState() {
    notificationItems = widget.notifications;
    super.initState();
  }

  void _loadMore() async {
    final newItems = await notifications(page: page + 1, perPage: 20)
        .then((value) => value.notifications!.filterNull())
        .then((value) => value.map(transformNotification).toList());
    setState(() {
      notificationItems.addAll(newItems);
      page++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: 700,
        child: ListView.builder(
          itemCount: notificationItems.length + 1,
          itemBuilder: (context, index) {
            if (index == notificationItems.length) {
              return TextButton(
                  onPressed: _loadMore, child: const Text("Load more"));
            }
            final item = notificationItems[index];
            return InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {
                if (item.route.startsWith("http")) {
                  launchUrl(Uri.parse(item.route));
                } else {
                  context.go(item.route);
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  border: (index < widget.initialUnreadCount)
                      ? Border(
                          right: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2))
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (item.image != null)
                      ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                            item.image!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )),
                    if (item.image == null)
                      const SizedBox(width: 100, height: 100),
                    Expanded(
                      child: Text(item.context),
                    ),
                    Text(timeDifference(item.createdAt)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static String timeDifference(DateTime createdAt) {
    final diff = DateTime.now().difference(createdAt);
    if (diff.inDays > 0) {
      return "${diff.inDays} days ago";
    } else if (diff.inHours > 0) {
      return "${diff.inHours} hours ago";
    } else if (diff.inMinutes > 0) {
      return "${diff.inMinutes} minutes ago";
    } else {
      return "Just now";
    }
  }
}
