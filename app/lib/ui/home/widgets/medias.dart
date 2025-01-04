import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MediaListView extends StatelessWidget {
  final String? title;
  final String? seeMore;
  final List<FragmentMediaMin> medias;
  const MediaListView(
      {super.key, required this.medias, this.title, this.seeMore});

  @override
  Widget build(BuildContext context) {
    if (medias.isEmpty) {
      return const SizedBox();
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null)
              Text(title!, style: Theme.of(context).textTheme.displaySmall),
            if (seeMore != null)
              IconButton(
                onPressed: () {
                  context.go(seeMore!);
                },
                icon: const Icon(Icons.open_in_new),
              )
          ],
        ),
        SizedBox(
          height: 350,
          child: ListView.builder(
            itemCount: medias.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final media = medias[index];
              return _MediaEntry(media: media);
            },
          ),
        ),
      ],
    );
  }
}

class _MediaEntry extends StatefulWidget {
  final FragmentMediaMin media;
  const _MediaEntry({required this.media});

  @override
  State<_MediaEntry> createState() => _MediaEntryState();
}

class _MediaEntryState extends State<_MediaEntry> {
  double _scaleEnd = 1.0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/media/${widget.media.id}');
      },
      onHover: (value) => setState(() => _scaleEnd = value ? 1.1 : 1.0),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 1.0, end: _scaleEnd),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => Transform.scale(
          scale: value,
          child: child,
        ),
        child: _MediaEntryBody(media: widget.media),
      ),
    );
  }
}

class _MediaEntryBody extends StatelessWidget {
  final FragmentMediaMin media;
  const _MediaEntryBody({required this.media});

  String? get _coverImage =>
      media.coverImage?.large ?? media.coverImage?.medium;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            clipBehavior: Clip.hardEdge,
            child: _coverImage != null
                ? Image.network(
                    _coverImage ?? '',
                    height: 265,
                    width: 185,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: 265,
                    width: 185,
                    color: Colors.grey,
                  ),
          ),
          Text(
            media.title?.userPreferred ?? '',
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
