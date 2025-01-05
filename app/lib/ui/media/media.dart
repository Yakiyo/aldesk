// The media page
//
// The page displays the hero section [./widgets/hero_section.dart] and shows tabs
// for different sections. Since flutter whines when using a TabBarView within
// a ListView, we use a AnimatedSwitcher with an IndexedStack to switch between
// different tabs. The tabs are themselves contained in individual files
// [./widgets] directory for better organization.

import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/widgets/async_widget.dart';
import '../core/widgets/my_scaffold.dart';
import 'data/provider.dart';
import 'widgets/hero_section.dart';
import 'widgets/info_list.dart';

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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroSection(
            banner: media.bannerImage,
            coverImage: media.coverImage?.large,
            title: media.title?.romaji,
            description: media.description),
        Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Text(
              "Details",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 25),
            )),
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
        const SizedBox(height: 50)
      ],
    );
  }
}
