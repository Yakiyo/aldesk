import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/anilist/providers.dart';
import '../../../core/utils/get.dart';
import '../../../core/utils/misc.dart';
import '../misc/async_widget.dart';

class Activities extends ConsumerWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(recentActivityProvider);
    return AsyncWidgetConsumer(
        value: activities,
        builder: (context, value) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Activities",
                      style: Theme.of(context).textTheme.displaySmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            updateActivityType(ActivityType.following, ref);
                          },
                          child: const Text("Following")),
                      TextButton(
                          onPressed: () {
                            updateActivityType(ActivityType.global, ref);
                          },
                          child: const Text("Global")),
                    ],
                  ),
                ],
              ),
              ActivityList(activities: value),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    ref.read(recentActivityProvider.notifier).loadMore();
                  },
                  child: const Text("Load More"))
            ],
          );
        });
  }
}

class ActivityList extends StatefulWidget {
  final List<QueryActivitiesPageactivities> activities;
  const ActivityList({super.key, required this.activities});

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Wrap(
        children: widget.activities.map((activity) {
          return activity.maybeWhen(
            listActivity: (activity) => ListActivityTile(activity: activity),
            orElse: () => UnsupportedActivityTile(json: activity.toJson()),
          );
        }).toList(),
      ),
    );
  }

  /// Toggle's the like status for a specific activity
  /// 
  /// It will updat the item in the list eagerly and rebuild the widget, and then
  /// make the request to the api. If any error occurs during the request, it will
  /// revert the changes made to the item in the list and show a toast notification
  void _toggleLike(QueryActivitiesPageactivitiesListActivity activity,
      BuildContext context) {
    final index = widget.activities.indexWhere((item) => item.maybeWhen(
        orElse: () => false, listActivity: (a) => a.id == activity.id));
    if (index < 0) return;
    final newLikeStatus = !(activity.isLiked ?? false);
    final newLikeCount = activity.likeCount + (newLikeStatus ? 1 : -1);
    setState(() {
      widget.activities[index] =
          activity.copyWith(isLiked: newLikeStatus, likeCount: newLikeCount);
    });
    toggleActivityLike(activity.id).then((_) {
      logger.i("Toggled like status of activity ${activity.id}");
    }).catchError((error) {
      logger.e("Failed to toggle like status of activity ${activity.id}");
      setState(() {
        widget.activities[index] = activity;
      });
      if (context.mounted) {
        toastification.show(
            context: context,
            title: const Text("Failed to toggle like status for activity"),
            type: ToastificationType.error);
      }
    });
  }
}

const tileWidth = 550.0;
const tileHeight = 150.0;

class ListActivityTile extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                  context.go("/media/${activity.media!.id}");
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
                  _interactionButtons(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _interactionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_comments != null) Text(_comments!),
        IconButton(
            icon: const FaIcon(FontAwesomeIcons.solidComments, size: 14),
            onPressed: () {
              context.go("/activity/${activity.id}");
            }),
        if (activity.likeCount > 0) Text("${activity.likeCount}"),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.solidHeart,
                size: 14,
                color: (activity.isLiked ?? false) ? Colors.red : null),
            onPressed: null),
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
