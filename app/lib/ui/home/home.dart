import 'package:aldesk/config/routing/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/routing/routes.dart';
import '../core/widgets/async_widget.dart';
import '../core/widgets/my_scaffold.dart';
import 'data/activity.dart';
import 'data/medias.dart';
import 'data/socials.dart';
import 'widgets/activities.dart';
import 'widgets/forum.dart';
import 'widgets/medias.dart';
import 'widgets/reviews.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Trending Now",
                    style: Theme.of(context).textTheme.displaySmall),
                IconButton(
                  onPressed: () {
                    // TODO: consider using enum for sort here
                    context
                        .push(Routes.search, extra: {"sort": "TRENDING_DESC"});
                  },
                  icon: const Icon(Icons.open_in_new),
                )
              ],
            ),
            Consumer(builder: (context, ref, child) {
              final trending = ref.watch(trendingMediaItemProvider);
              return AsyncWidgetConsumer(
                value: trending,
                builder: (context, value) => MediaListView(medias: value),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Popular All Time",
                    style: Theme.of(context).textTheme.displaySmall),
                IconButton(
                  onPressed: () {
                    context
                        .push(Routes.search, extra: {"sort": "POPULAR_DESC"});
                  },
                  icon: const Icon(Icons.open_in_new),
                )
              ],
            ),
            Consumer(builder: (context, ref, child) {
              final popular = ref.watch(popularMediaItemProvider);
              return AsyncWidgetConsumer(
                value: popular,
                builder: (context, value) => MediaListView(medias: value),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Forum Activity",
                    style: Theme.of(context).textTheme.displaySmall),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Consumer(
                      builder: (context, ref, child) => IconButton(
                          tooltip:
                              "Refresh threads (auto refreshes every 2 mins)",
                          onPressed: () {
                            ref.invalidate(recentThreadsProvider);
                          },
                          icon: const Icon(Icons.refresh)),
                    ),
                    IconButton(
                      onPressed: () {
                        context.to(Routes.forum);
                      },
                      icon: const Icon(Icons.open_in_new),
                    ),
                  ],
                ),
              ],
            ),
            Consumer(builder: (context, ref, child) {
              final threads = ref.watch(recentThreadsProvider);
              return AsyncWidgetConsumer(
                value: threads,
                builder: (context, value) => ThreadsGridView(threads: value),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Recent Reviews",
                    style: Theme.of(context).textTheme.displaySmall),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Consumer(
                      builder: (context, ref, child) => IconButton(
                          tooltip:
                              "Refresh reviews (auto refreshes every 5 mins)",
                          onPressed: () {
                            ref.invalidate(recentReviewsProvider);
                          },
                          icon: const Icon(Icons.refresh)),
                    ),
                    IconButton(
                      onPressed: () {
                        context.to(Routes.reviews);
                      },
                      icon: const Icon(Icons.open_in_new),
                    ),
                  ],
                )
              ],
            ),
            Consumer(builder: (context, ref, child) {
              final reviews = ref.watch(recentReviewsProvider);
              return AsyncWidgetConsumer(
                value: reviews,
                builder: (context, value) => ReviewListView(reviews: value),
              );
            }),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Activities",
                    style: Theme.of(context).textTheme.displaySmall),
                Consumer(
                  builder: (context, ref, child) {
                    final type = ref.watch(activityTypeProvider);
                    final border = ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                          color: Theme.of(context).colorScheme.primary)),
                    );
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Consumer(
                          builder: (context, ref, child) => IconButton(
                              tooltip:
                                  "Refresh activities (auto refreshes every minute)",
                              onPressed: () {
                                ref.invalidate(recentActivityProvider);
                              },
                              icon: const Icon(Icons.refresh)),
                        ),
                        TextButton(
                            style:
                                type == ActivityType.following ? border : null,
                            onPressed: () {
                              updateActivityType(ActivityType.following, ref);
                            },
                            child: const Text("Following")),
                        TextButton(
                            style: type == ActivityType.global ? border : null,
                            onPressed: () {
                              updateActivityType(ActivityType.global, ref);
                            },
                            child: const Text("Global")),
                      ],
                    );
                  },
                ),
              ],
            ),
            const Activities(),
            Align(
              alignment: Alignment.center,
              child: Consumer(
                builder: (context, ref, child) => ElevatedButton(
                    onPressed: () {
                      ref.read(recentActivityProvider.notifier).loadMore();
                    },
                    child: const Text("Load More")),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
