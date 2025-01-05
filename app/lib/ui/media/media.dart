// The media page
//
// The page displays the hero section [./widgets/hero_section.dart] and shows tabs
// for different sections. Since flutter whines when using a TabBarView within
// a ListView, we use a AnimatedSwitcher with an IndexedStack to switch between
// different tabs. The tabs are themselves contained in individual files
// [./widgets] directory for better organization.

import 'package:aldesk/ui/media/data/characters.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/widgets/async_widget.dart';
import '../core/widgets/my_scaffold.dart';
import 'data/media.dart';
import 'data/utils.dart';
import 'widgets/categories.dart';
import 'widgets/characters.dart';
import 'widgets/hero_section.dart';
import 'widgets/info_list.dart';
import 'widgets/relations.dart';

class MediaPage extends ConsumerWidget {
  final int id;
  const MediaPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final media = ref.watch(mediaItemProvider(id));
    return MyScaffold(
      body: AsyncWidgetConsumer(
        value: media,
        builder: (context, value) => Padding(
          padding: const EdgeInsets.all(10),
          child: MediaPageBody(media: value),
        ),
      ),
    );
  }
}

class MediaPageBody extends StatelessWidget {
  final QueryMediaMedia media;
  const MediaPageBody({super.key, required this.media});

  List<String> get genres => media.genres?.filterNull() ?? [];
  List<QueryMediaMediatags> get tags => media.tags?.filterNull() ?? [];
  List<QueryMediaMediarelationsedges> get relations =>
      media.relations?.edges?.filterNull() ?? [];

  @override
  Widget build(BuildContext context) {
    final items = [
      HeroSection(
          siteUrl: media.siteUrl,
          banner: media.bannerImage,
          coverImage: media.coverImage?.large,
          title: media.title?.romaji,
          description: media.description),
      _headerText("Details"),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          // height: 80,
          child: InfoList(media: media),
        ),
      ),
      if (genres.isNotEmpty) _headerText("Genres"),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MediaGenres(genres: genres),
      ),
      if (tags.isNotEmpty) _headerText("Tags"),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MediaTags(tags: tags.sortTags()),
      ),
      if (relations.isNotEmpty) _headerText("Relations"),
      Relations(relations: relations),
      Consumer(builder: (context, ref, child) {
        final length =
            (ref.watch(mediaCharacterProvider(media.id)).valueOrNull ?? [])
                .length;
        if (length == 0) {
          return const SizedBox.shrink();
        }
        final notifier = ref.read(mediaCharacterProvider(media.id).notifier);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _headerText("Characters"),
            TextButton(
              onPressed: notifier.hasNext()
                  ? () {
                      notifier.loadMore();
                    }
                  : null,
              child: const Text("Load More"),
            )
          ],
        );
      }),
      CharacterList(id: media.id),
      const SizedBox(height: 50)
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }

  Widget _headerText(String text) {
    return Builder(builder: (context) {
      return Padding(
          padding: const EdgeInsets.only(left: 25, top: 10),
          child: Text(
            text,
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 25),
          ));
    });
  }
}
