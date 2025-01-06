import 'package:aldesk/config/routing/routes.dart';
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
              context.push(Routes.home);
            },
          ),
          ListTile(
            title: const Text('Browse'),
            leading: const Icon(Icons.search_outlined),
            onTap: () {
              context.push(Routes.search);
            },
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              context.push(Routes.profile);
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
                  context.push(Routes.libraryAnime);
                },
              ),
              ListTile(
                title: const Text('Manga'),
                leading: const Icon(Icons.book_outlined),
                dense: true,
                onTap: () {
                  context.push(Routes.libraryManga);
                },
              ),
            ],
          ),
          const _NotificationTile(),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings_outlined),
            onTap: () {
              context.push(Routes.settings);
            },
          ),
          if (context.canPop())
            ListTile(
              title: const Text('Back'),
              leading: const Icon(Icons.arrow_back),
              onTap: () {
                // safety net
                if (context.canPop()) context.pop();
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

class _NotificationTile extends ConsumerWidget {
  const _NotificationTile();

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
        context.push(Routes.notifications);
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
