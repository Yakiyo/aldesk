
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/widgets/async_widget.dart';
import '../core/widgets/my_scaffold.dart';
import 'data/provider.dart';
import 'widgets/hero_section.dart';
import 'widgets/overview.dart';

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
          child: SingleChildScrollView(child: MediaPageBody(media: value)),
        ),
      ),
    );
  }
}

class MediaPageBody extends StatelessWidget {
  final QueryMediaMedia media;
  const MediaPageBody({super.key, required this.media});

  String? get _banner => media.bannerImage;
  String? get _coverImage => media.coverImage?.large;
  static const _tabs = ["Overview", "Relations", "Staff"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeroSection(
              banner: _banner,
              coverImage: _coverImage,
              title: media.title?.romaji,
              description: media.description),
          TabBar(tabs: _tabs.map((e) => Tab(text: e)).toList()),
          Container(
              constraints:
                  const BoxConstraints(minHeight: 500, maxHeight: 700),
              child:
                  TabBarView(children: [
                    Overview(media: media),
                    const Placeholder(),
                    const Placeholder()
                  ]))
        ],
      ),
    );
  }
}

