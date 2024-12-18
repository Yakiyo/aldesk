import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:anilist/anilist.dart';
import 'package:toastification/toastification.dart';

import '../../core/theme.dart';
import '../components/layout/fab.dart';
import '../components/utilities/my_future_builder.dart';

const w = 120.0;
const h = 180.0;

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

class CurrentList extends StatelessWidget {
  final String title;
  final ScrollController controller;
  final List<FragmentMediaList> mediaList;
  const CurrentList(
      {super.key,
      required this.mediaList,
      required this.title,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final children = mediaList
                  .map((entry) => MediaTile(
                        entry: entry,
                      ))
                  .toList();
              // use [Wrap] for larger screens and [ListView] for smaller screens
              if (constraints.maxWidth > 600) {
                return Wrap(
                  children: children,
                );
              } else {
                return SizedBox(
                  height: 180 + 8 * 2,
                  child: Scrollbar(
                    controller: controller,
                    child: ListView(
                      controller: controller,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: children,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

// TODO: make it a stateful widget, on pressing add, increment progress and
// update [entry] and call setState
class MediaTile extends StatefulWidget {
  final FragmentMediaList entry;
  const MediaTile({super.key, required this.entry});

  @override
  State<MediaTile> createState() => _MediaTileState();
}

class _MediaTileState extends State<MediaTile> {
  late FragmentMediaList entry;
  bool _isProcessing = false;

  @override
  void initState() {
    entry = widget.entry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style =
        Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white);
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      width: w,
      height: h,
      child: InkWell(
        // TODO: navigate to series page on tap
        onTap: () {},
        child: Stack(
          alignment: Alignment.bottomCenter,
          fit: StackFit.expand,
          children: [
            Image.network(
              entry.media!.coverImage!.large!,
              fit: BoxFit.cover,
              height: h,
              width: w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(_progressText(), style: style)),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          constraints: BoxConstraints.tight(const Size(20, 20)),
                          splashRadius: 1,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          // when a request is ongoing, disable button
                          onPressed: _isProcessing ? null : _incrementProgress,
                        )),
                  ],
                ),
                Container(
                  width: w,
                  height: 50,
                  margin: const EdgeInsets.all(0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    entry.media!.title!.userPreferred!,
                    softWrap: true,
                    style: style,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (entry.media!.status == EnumMediaStatus.RELEASING &&
                    entry.media!.type == EnumMediaType.ANIME &&
                    _isBehind())
                  Container(
                    width: w,
                    height: 4,
                    color: highlightColor,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  String _progressText() {
    final progress = entry.progress ?? 0;
    final count = entry.media!.type == EnumMediaType.ANIME
        ? entry.media!.episodes
        : entry.media!.chapters;
    return "$progress${count != null ? "/$count" : ""}";
  }

  bool _isBehind() {
    final progress = entry.progress ?? 0;
    final count = (entry.media?.nextAiringEpisode?.episode ?? 1) - 1;
    return progress < count;
  }

  void _incrementProgress() async {
    setState(() {
      _isProcessing = true;
    });
    final result = await incrementProgress(entry: entry, preventOverflow: true);
    if (result.isErr()) {
      if (!mounted) return;
      toastification.show(
        context: context,
        title: const Text("Failed to update progress"),
        description: Text(result.unwrapErr().toString()),
      );
      setState(() {
        _isProcessing = false;
      });
      return;
    }
    setState(() {
      entry = result.unwrap();
      _isProcessing = false;
    });
  }
}
