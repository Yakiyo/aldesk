import 'package:aldesk/ui/components/misc/kaomoji.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/layout/my_scaffold.dart';
import '../components/misc/async_widget.dart';
import '../components/overview/media_list_view.dart';
import '../components/overview/review_list_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final Future<List<FragmentMediaMin>> _trending;
  late final Future<List<FragmentMediaMin>> _popular;
  late final Future<List<FragmentReview>> _reviews;

  @override
  void initState() {
    _trending = trendingMedia().then(
        (value) => value.media?.whereType<FragmentMediaMin>().toList() ?? []);
    _popular = popularMedia().then(
        (value) => value.media?.whereType<FragmentMediaMin>().toList() ?? []);
    _reviews = paginatedReviews(perPage: 5)
        .then((page) => (page.reviews ?? []).filterNull());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            AsyncWidget(
              future: _trending,
              loading: (context) => const SizedBox(
                width: double.infinity,
                child: KaomojiLoader(),
              ),
              builder: (context, value) => MediaListView(
                  title: 'Trending Now',
                  seeMore: "/search?sort=TRENDING_DESC",
                  medias: value),
            ),
            AsyncWidget(
              future: _popular,
              loading: (context) => const SizedBox(
                width: double.infinity,
                child: KaomojiLoader(),
              ),
              builder: (context, value) => MediaListView(
                  title: 'Popular All Time',
                  seeMore: "/search?sort=POPULAR_DESC",
                  medias: value),
            ),
            AsyncWidget(
              future: _reviews,
              loading: (context) => const SizedBox(
                width: double.infinity,
                child: KaomojiLoader(),
              ),
              builder: (context, value) => ReviewListView(reviews: value),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
