import 'package:aldesk/core/utils/notifications.dart';
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
        ),
      ),
    );
  }
}

class _NotificationPageBody extends StatelessWidget {
  final int initialUnreadCount;
  final List<NotificationUnion> notifications;
  const _NotificationPageBody(
      {required this.notifications, required this.initialUnreadCount});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final item = notifications[index];
            final t = item.createdAt;
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                tileColor: Theme.of(context)
                    .primaryColor
                    .withAlpha((255.0 * 0.4).round()),
                title: Text(item.context),
                subtitle: item.subtitle != null ? Text(item.subtitle!) : null,
                leading: item.image != null
                    ? Image.network(item.image!, width: 50, height: 50)
                    : null,
                trailing:
                    Text("${t.day}/${t.month}/${t.year} ${t.hour}:${t.minute}"),
                onTap: () {
                  if (item.route.startsWith("http")) {
                    launchUrl(Uri.parse(item.route));
                  } else {
                    context.go(item.route);
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
