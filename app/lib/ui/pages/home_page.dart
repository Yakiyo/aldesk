import 'package:aldesk/ui/components/overview/home_page_overview.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:anilist/anilist.dart';

import '../components/layout/fab.dart';
import '../components/utilities/my_future_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const Fab(),
        floatingActionButtonLocation: ExpandableFab.location,
        body: const SingleChildScrollView(child: HomePageBody()));
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final currentAnimeF = () async {
      final user = await viewer().then((v) => v.unwrap());
      return paginatedMediaList(
          userId: user.id,
          mediaType: EnumMediaType.ANIME,
          mediaStatus: EnumMediaListStatus.CURRENT);
    }();
    final currentMangaF = () async {
      final user = await viewer().then((v) => v.unwrap());
      return paginatedMediaList(
          userId: user.id,
          mediaType: EnumMediaType.MANGA,
          mediaStatus: EnumMediaListStatus.CURRENT);
    }();
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyFutureBuilder(
                future: currentAnimeF,
                builder: (value) {
                  final medias = value.mediaList
                          ?.whereType<FragmentMediaList>()
                          .toList() ??
                      [];
                  medias.sort((a, b) => a > b ? -1 : 1);
                  return CurrentList(
                    controller: ScrollController(),
                    title: "Anime In Progress",
                    mediaList: medias,
                  );
                }),
            const SizedBox(height: 20),
            MyFutureBuilder(
                future: currentMangaF,
                builder: (value) {
                  final medias = value.mediaList
                          ?.whereType<FragmentMediaList>()
                          .toList() ??
                      [];
                  medias.sort((a, b) => a > b ? -1 : 1);
                  return CurrentList(
                    controller: ScrollController(),
                    title: "Manga In Progress",
                    mediaList: medias,
                  );
                })
          ],
        ),
      ),
    );
  }
}
