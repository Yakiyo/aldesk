import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../../config/package/package.dart';
import '../../../config/utils/utils.dart';
import '../../notifications/data/provider.dart';
import 'about.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home_sharp),
            onTap: () {
              context.go('/');
            },
          ),
          ListTile(
            title: const Text('Browse'),
            leading: const Icon(Icons.search_outlined),
            onTap: () {
              context.go('/search');
            },
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              context.go('/profile');
            },
          ),
          ExpansionTile(
            title: const Text("Library"),
            leading: const Icon(Icons.shelves),
            shape: const RoundedRectangleBorder(side: BorderSide.none),
            childrenPadding: const EdgeInsets.only(left: 20),
            children: [
              ListTile(
                title: const Text('Anime'),
                leading: const Icon(Icons.video_collection_outlined),
                dense: true,
                onTap: () {
                  context.go('/library/anime');
                },
              ),
              ListTile(
                title: const Text('Manga'),
                leading: const Icon(Icons.book_outlined),
                dense: true,
                onTap: () {
                  context.go('/library/manga');
                },
              ),
            ],
          ),
          const _NotifTile(),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings_outlined),
            onTap: () {
              context.go('/settings');
            },
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _AppInfo(),
            ),
          )
        ],
      ),
    );
  }
}

class _NotifTile extends ConsumerWidget {
  const _NotifTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(unreadNotificationProvider).when(
          data: (data) => data,
          loading: () => 0,
          error: (error, stackTrace) {
            logger.e("Error fetching unread notification count",
                error: error, stackTrace: stackTrace);
            return 0;
          },
        );
    return ListTile(
      title: const Text('Notifications'),
      leading: Badge.count(
        count: count,
        isLabelVisible: count > 0 ? true : false,
        child: const Icon(Icons.notifications_outlined),
      ),
      onTap: () {
        context.go('/notifications');
      },
    );
  }
}

class _AppInfo extends ConsumerWidget {
  const _AppInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(packageInfoProvider);
    return switch (data) {
      AsyncLoading() => const SizedBox.shrink(),
      AsyncError(:final error, :final stackTrace) => () {
          get<Logger>().e('Error loading package info',
              error: error, stackTrace: stackTrace);
          return const Text('Aldesk vX.X.X');
        }(),
      AsyncValue(:final value) => ListTile(
          title: Text(
            '${value?.appName.capitalize()} v${value?.version}',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          leading: const Icon(Icons.info_outlined),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialogWidget(),
            );
          }),
    };
  }
}
