// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/utils.dart';
import '../../../config/routing/routes.dart';

/// Shows the medias tags and genres
class MediaGenres extends StatelessWidget {
  final List<String> genres;
  const MediaGenres({
    super.key,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    if (genres.isEmpty) return const SizedBox.shrink();
    return Wrap(
      children: [
        for (final genre in genres)
          Padding(
            padding: const EdgeInsets.all(5),
            child: ActionChip(
              color: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.secondary),
              label: Text(genre),
              onPressed: () {
                context.push(Routes.search, extra: {"genre": genre});
              },
            ),
          )
      ],
    );
  }
}

/// Shows the medias tags and genres
class MediaTags extends StatefulWidget {
  final List<QueryMediaMediatags> tags;
  const MediaTags({super.key, required this.tags});

  @override
  State<MediaTags> createState() => _MediaTagsState();
}

class _MediaTagsState extends State<MediaTags> {
  bool _showSpoiler = false;
  bool _showAdult = false;

  void toggleSpoiler() {
    setState(() {
      _showSpoiler = !_showSpoiler;
    });
  }

  void toggleAdult() {
    setState(() {
      _showAdult = !_showAdult;
    });
  }

  int get _spoilerCount => widget.tags.where((e) => e.isSpoiler).length;
  int get _adultCount => widget.tags.where((e) => e.adult).length;

  @override
  Widget build(BuildContext context) {
    if (widget.tags.isEmpty) return const SizedBox.shrink();

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (final tag in widget.tags)
          if (tag.isRegular ||
              (_showSpoiler && tag.isSpoiler) ||
              (_showAdult && tag.adult))
            Padding(
              padding: const EdgeInsets.all(5),
              child: ActionChip(
                side:
                    tag.isRegular ? null : const BorderSide(color: Colors.red),
                tooltip: tag.description,
                color: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.secondary),
                label: Text(tag.name),
                onPressed: () {
                  context.push(Routes.search, extra: {"tag": tag.name});
                },
              ),
            ),
        if (_spoilerCount > 0)
          TextButton.icon(
              onPressed: toggleSpoiler,
              label: Text(
                  "${_showSpoiler ? "Hide" : "Show $_spoilerCount"} Spoiler Tag${_spoilerCount > 1 ? "s" : ""}"),
              icon: Icon(_showSpoiler ? Icons.remove : Icons.add)),
        if (_adultCount > 0)
          TextButton.icon(
              onPressed: toggleAdult,
              label: Text(
                  "${_showAdult ? "Hide" : "Show $_adultCount"} Adult Tag${_adultCount > 1 ? "s" : ""}"),
              icon: Icon(_showAdult ? Icons.remove : Icons.add)),
      ],
    );
  }
}
