import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/anilist/providers.dart';
import '../components/layout/my_scaffold.dart';
import '../components/misc/async_widget.dart';
import '../components/overview/activities.dart';
import '../components/overview/media_list_view.dart';
import '../components/overview/recent_reviews.dart';
import '../components/overview/forum_activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(builder: (context, ref, child) {
              final trending = ref.watch(trendingMediaItemProvider);
              return AsyncWidgetConsumer(
                value: trending,
                builder: (context, value) => MediaListView(
                  medias: value,
                  title: 'Trending Now',
                  seeMore: "/search?sort=TRENDING_DESC",
                ),
              );
            }),
            Consumer(builder: (context, ref, child) {
              final popular = ref.watch(popularMediaItemProvider);
              return AsyncWidgetConsumer(
                value: popular,
                builder: (context, value) => MediaListView(
                  medias: value,
                  title: 'Popular All Time',
                  seeMore: "/search?sort=POPULAR_DESC",
                ),
              );
            }),
            Consumer(builder: (context, ref, child) {
              final reviews = ref.watch(recentReviewsProvider);
              return AsyncWidgetConsumer(
                value: reviews,
                builder: (context, value) => ReviewListView(reviews: value),
              );
            }),
            Consumer(builder: (context, ref, child) {
              final threads = ref.watch(recentThreadsProvider);
              return AsyncWidgetConsumer(
                value: threads,
                builder: (context, value) => ThreadsGridView(threads: value),
              );
            }),
            const SizedBox(height: 50),
            const Activities(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
