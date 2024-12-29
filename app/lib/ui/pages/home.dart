import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/layout/my_scaffold.dart';
import '../components/misc/async_widget.dart';
import '../components/overview/media_list_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final Future<List<FragmentMediaMin>> _trending;
  late final Future<List<FragmentMediaMin>> _popular;

  @override
  void initState() {
    _trending = trendingMedia().then(
        (value) => value.media?.whereType<FragmentMediaMin>().toList() ?? []);
    _popular = popularMedia().then(
        (value) => value.media?.whereType<FragmentMediaMin>().toList() ?? []);
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
              builder: (context, value) => MediaListView(
                  title: 'Trending now',
                  seeMore: "/search?sort=TRENDING_DESC",
                  medias: value),
            ),
            AsyncWidget(
              future: _popular,
              builder: (context, value) => MediaListView(
                  title: 'Popular all time',
                  seeMore: "/search?sort=POPULAR_DESC",
                  medias: value),
            ),
          ],
        ),
      ),
    );
  }
}
