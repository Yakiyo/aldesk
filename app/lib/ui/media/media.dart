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
          child: MediaPageBody(media: value),
        ),
      ),
    );
  }
}

const _tabs = ["Overview", "Relations", "Staff"];

class MediaPageBody extends StatefulWidget {
  final QueryMediaMedia media;
  const MediaPageBody({super.key, required this.media});

  @override
  State<MediaPageBody> createState() => _MediaPageBodyState();
}

class _MediaPageBodyState extends State<MediaPageBody>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;
  int _index = 0;

  @override
  void initState() {
    _controller = TabController(length: _tabs.length, vsync: this);
    _controller.addListener(_onTabChange);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_onTabChange);
    super.dispose();
  }

  void _onTabChange() {
    setState(() {
      _index = _controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroSection(
            banner: widget.media.bannerImage,
            coverImage: widget.media.coverImage?.large,
            title: widget.media.title?.romaji,
            description: widget.media.description),
        TabBar(
          tabs: _tabs.map((e) => Tab(text: e)).toList(),
          controller: _controller,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: IndexedStack(
            index: _index,
            key: ValueKey(_index),
            children: [
              Overview(media: widget.media),
              const Text("Relations"),
              const Text("Staff")
            ],
          ),
        )
      ],
    );
  }
}
