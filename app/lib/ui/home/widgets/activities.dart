import 'package:aldesk/ui/home/data/activity.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/routing/routes.dart';
import '../../../config/utils/utils.dart';
import '../../core/widgets/async_widget.dart';

class Activities extends ConsumerWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(recentActivityProvider);
    return AsyncWidgetConsumer(
        value: activities,
        builder: (context, activities) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Wrap(
              children: activities.map((activity) {
                return activity.maybeWhen(
                  listActivity: (activity) =>
                      ListActivityTile(activity: activity),
                  orElse: () =>
                      UnsupportedActivityTile(json: activity.toJson()),
                );
              }).toList(),
            ),
          );
        });
  }
}

const tileWidth = 550.0;
const tileHeight = 150.0;

class ListActivityTile extends ConsumerWidget {
  final QueryActivitiesPageactivitiesListActivity activity;
  const ListActivityTile({super.key, required this.activity});

  String? get _cover => activity.media?.coverImage?.large;
  String get _username => activity.user?.name ?? "<unknown>";

  String get _status => (activity.status ?? "").toLowerCase().capitalize();
  String get _progress =>
      activity.progress != null ? " ${activity.progress}" : "";

  String? get _userAvatar => activity.user?.avatar?.medium;

  String? get _comments {
    final i = activity.replyCount;
    return i > 0 ? "$i" : null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: tileWidth,
      height: tileHeight,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        color: Theme.of(context).colorScheme.secondary,
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_cover != null)
              InkWell(
                onTap: () {
                  context.push(Routes.mediaWithId(activity.media!.id));
                },
                child: Image.network(
                  _cover!,
                  width: 105,
                  height: tileHeight,
                  fit: BoxFit.cover,
                ),
              ),
            if (_cover == null)
              const SizedBox(
                width: 105,
                height: tileHeight,
                child: Icon(Icons.error),
              ),
            Expanded(
              child: Container(
                height: 150,
                // width: 250,
                padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
                child: Column(
                  spacing: 3,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _tileDetailsBuilder(context),
                    if (_userAvatar != null)
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(_userAvatar!),
                      )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          tooltip: "View on AniList",
                          onPressed: () => launchUrl(Uri.parse(
                              "https://anilist.co/activity/${activity.id}")),
                          icon: const FaIcon(FontAwesomeIcons.link, size: 12)),
                      Text(
                        DateTime.fromMillisecondsSinceEpoch(
                                activity.createdAt * 1000)
                            .diffString(),
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall?.fontSize,
                        ),
                        softWrap: true,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  _interactionButtons(context, ref)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _interactionButtons(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_comments != null) Text(_comments!),
        IconButton(
            icon: const FaIcon(FontAwesomeIcons.solidComments, size: 14),
            onPressed: () {
              context.push(Routes.activityWithId(activity.id));
            }),
        if (activity.likeCount > 0) Text("${activity.likeCount}"),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.solidHeart,
                size: 14,
                color: (activity.isLiked ?? false) ? Colors.red : null),
            onPressed: () {
              ref.read(recentActivityProvider.notifier).toggleLike(activity);
            }),
      ],
    );
  }

  Widget _tileDetailsBuilder(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_username, style: TextStyle(color: primary)),
        RichText(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium?.color),
                children: [
                  TextSpan(
                      text:
                          "$_status$_progress ${_progress.isEmpty ? "" : "of "}"),
                  TextSpan(
                      text: activity.media?.title?.userPreferred ?? "",
                      style: TextStyle(color: primary)),
                ])),
      ],
    );
  }
}

class UnsupportedActivityTile extends StatelessWidget {
  final Map<String, dynamic> json;
  const UnsupportedActivityTile({super.key, required this.json});

  String get _author {
    final user = json["messenger"] ?? json["user"] as Map<String, dynamic>?;
    return user?["name"] ?? "<unknown>";
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tileWidth,
      height: tileHeight,
      child: Card(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "Unsupported activity of type ${json["type"] ?? "<unknown>"} (${json['__typename']})"),
              Text("Activity Author: $_author"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        launchUrl(Uri.parse(
                            "https://anilist.co/activity/${json["id"]}"));
                      },
                      label: const Text("View on AniList"),
                      icon: const FaIcon(FontAwesomeIcons.link)),
                  TextButton.icon(
                      onPressed: () {
                        launchUrl(
                            Uri.parse("https://github.com/Yakiyo/aldesk"));
                      },
                      label: const Text("Open github issues"),
                      icon: const FaIcon(FontAwesomeIcons.github)),
                ],
              )
            ],
          )),
    );
  }
}
