import 'package:aldesk/util/themes/data.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeActivityList extends StatelessWidget {
  final List<GListActivityFrag> activities;

  const HomeActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Activities",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        for (final activity in activities) ActivityTile(activity: activity),
      ],
    );
  }
}

class ActivityTile extends StatelessWidget {
  final GListActivityFrag activity;

  const ActivityTile({super.key, required this.activity});

  String _createdAgo() {
    final diff = DateTime.now().difference(
        DateTime.fromMillisecondsSinceEpoch(activity.createdAt * 1000));
    if (diff.inDays > 0) {
      return "${diff.inDays} days";
    } else if (diff.inHours > 0) {
      return "${diff.inHours} hours";
    } else if (diff.inMinutes > 0) {
      return "${diff.inMinutes} minutes";
    }
    return "${diff.inSeconds} seconds";
  }

  void _onPressed() {
    launchUrl(Uri.parse("https://anilist.co/activity/${activity.id}"));
  }

  String _shorten(String title) {
    if (title.length > 80) {
      return "${title.substring(1, 78)}..";
    }
    return title;
  }

  void _toMediaPage(BuildContext context) {
    context.go("/media/${activity.media!.id}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.primary,
      ),
      width: 640,
      height: 140,
      child: Row(
        children: [
          InkWell(
            onTap: () => _toMediaPage(context),
            child: Image.network(
              activity.media!.coverImage!.large!,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.user!.name,
                    style: const TextStyle(color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      style: const TextStyle(color: Colors.grey),
                      text:
                          "${activity.status![0].toUpperCase()}${activity.status!.substring(1)} ${activity.progress != null ? "${activity.progress} " : ""}",
                    ),
                    TextSpan(
                        text: _shorten(activity.media!.title!.userPreferred!),
                        style: const TextStyle(color: Colors.lightBlue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _toMediaPage(context))
                  ])),
                  const Expanded(child: SizedBox.shrink()),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          activity.user!.avatar!.large!,
                          height: 36,
                          width: 36,
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("${_createdAgo()} ago"),
                IconButton(
                    tooltip: "Open in browser",
                    onPressed: _onPressed,
                    icon: const Icon(Icons.insert_link)),
                const Expanded(child: SizedBox.shrink()),
                Row(
                  children: [
                    if (activity.replyCount > 0) Text("${activity.replyCount}"),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.chat_bubble_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    if (activity.likeCount > 0) Text("${activity.likeCount}"),
                    const SizedBox(
                      width: 5,
                    ),
                    // TODO: make this an icon button
                    Icon(
                      Icons.favorite_rounded,
                      size: 15,
                      color: activity.isLiked!
                          ? highlightColor
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
