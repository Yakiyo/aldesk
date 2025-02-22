import 'package:aldesk/config/routing/extension.dart';
import 'package:aldesk/config/routing/routes.dart';
import 'package:aldesk/ui/media_list/data/provider.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aldesk/ui/core/widgets/async_widget.dart';
import 'package:flutter/material.dart';

import 'list_title_section.dart';

class MediaListView extends ConsumerWidget {
  final int userId;
  final EnumMediaType type;
  const MediaListView({super.key, required this.userId, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaList = ref.watch(mediaListDataProvider(userId, type));
    return AsyncWidgetConsumer(
      value: mediaList,
      builder: (context, value) {
        return ListView.builder(
            itemCount: value.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTitleSection(userId: userId, type: type);
              }
              final item = value[index - 1];
              if (item.entries.isEmpty) return const SizedBox();
              return ListCollection(title: item.name, entries: item.entries);
            });
      },
    );
  }
}

class ListCollection extends StatelessWidget {
  final String title;
  final List<MediaListMedia> entries;
  const ListCollection({super.key, required this.title, required this.entries});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title - ${entries.length}",
              style: Theme.of(context).textTheme.displaySmall),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (final entry in entries) MediaEntryCard(entry: entry)
            ],
          )
        ],
      ),
    );
  }
}

class MediaEntryCard extends StatefulWidget {
  final MediaListMedia entry;
  const MediaEntryCard({super.key, required this.entry});

  @override
  State<MediaEntryCard> createState() => _MediaEntryCardState();
}

class _MediaEntryCardState extends State<MediaEntryCard> {
  bool _isHovering = false;
  late final MediaListMedia entry = widget.entry;
  String? get _coverImage => entry.media?.coverImage?.large;

  int get _progress => entry.progress ?? 0;
  int? get _total => entry.media?.episodes ?? entry.media?.chapters;

  @override
  Widget build(BuildContext context) {
    final badge = switch (entry.media?.status) {
      EnumMediaStatus.RELEASING => Colors.lightGreen,
      EnumMediaStatus.NOT_YET_RELEASED => Colors.red,
      _ => null,
    };
    return InkWell(
      onHover: (value) => setState(() => _isHovering = value),
      hoverColor: Colors.transparent,
      onTap: () => context.to(Routes.mediaWithId(entry.media!.id)),
      child: Badge(
        alignment: Alignment.topLeft,
        smallSize: 12,
        isLabelVisible: badge != null,
        backgroundColor: badge,
        child: Container(
          width: 200,
          height: 380,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_coverImage != null)
                Image.network(_coverImage!,
                    width: 200, height: 280, fit: BoxFit.cover),
              Text(
                entry.media?.title?.userPreferred ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: _isHovering
                        ? Theme.of(context).colorScheme.primary
                        : null),
              ),
              Text(
                "Progress: $_progress${_total != null ? "/$_total" : ""}",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
