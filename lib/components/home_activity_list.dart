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

class ActivityTile extends StatefulWidget {
  final GListActivityFrag activity;

  const ActivityTile({super.key, required this.activity});

  @override
  State<ActivityTile> createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {
  bool _isHovering = false;

  String _createdAgo() {
    final diff = DateTime.now().difference(
        DateTime.fromMillisecondsSinceEpoch(widget.activity.createdAt * 1000));
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
    launchUrl(Uri.parse("https://anilist.co/activity/${widget.activity.id}"));
  }

  void _toMediaPage(BuildContext context) {
    context.go("/media/${widget.activity.media!.id}");
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
      constraints:
          const BoxConstraints(minWidth: 550, maxWidth: 550, minHeight: 150),
      width: 550,
      height: 150,
      child: InkWell(
        onHover: (value) => setState(() {
          _isHovering = value;
        }),
        onTap: () {},
        child: Row(
          children: [
            InkWell(
              onTap: () => _toMediaPage(context),
              child: Image.network(
                widget.activity.media!.coverImage!.large!,
                height: 150,
                width: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User name
                    Text(
                      widget.activity.user!.name,
                      style: const TextStyle(color: Colors.lightBlue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Status text
                    StatusText(
                        title: widget.activity.media!.title!.userPreferred!,
                        status: widget.activity.status!,
                        toMediaPage: _toMediaPage),

                    const Expanded(child: SizedBox.shrink()),

                    // User avatar
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                            widget.activity.user!.avatar!.large!,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _isHovering
                            ? IconButton(
                                tooltip: "Open in browser",
                                onPressed: _onPressed,
                                icon: const Icon(
                                  Icons.insert_link,
                                  size: 18,
                                ))
                            : const SizedBox.square(
                                dimension: 18,
                              ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9.0),
                          child: Text("${_createdAgo()} ago"),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox.shrink()),

                  // Likes and Comments
                  Row(
                    children: [
                      if (widget.activity.replyCount > 0)
                        Text("${widget.activity.replyCount}"),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.chat_bubble_rounded,
                        color: Colors.grey[400],
                        size: 15,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      if (widget.activity.likeCount > 0)
                        Text("${widget.activity.likeCount}"),
                      const SizedBox(
                        width: 5,
                      ),
                      // TODO: make this an icon button
                      Icon(
                        Icons.favorite_rounded,
                        size: 15,
                        color: widget.activity.isLiked!
                            ? highlightColor
                            : Colors.grey[400],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StatusText extends StatelessWidget {
  final String title;
  final String status;
  final int? progress;
  final void Function(BuildContext) toMediaPage;
  const StatusText(
      {super.key,
      required this.title,
      required this.status,
      this.progress,
      required this.toMediaPage});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        style: const TextStyle(color: Colors.grey),
        text:
            "${status[0].toUpperCase()}${status.substring(1)} ${progress != null ? "$progress " : ""}",
      ),
      TextSpan(
          text: _shorten(title),
          style: const TextStyle(color: Colors.lightBlue),
          recognizer: TapGestureRecognizer()
            ..onTap = () => toMediaPage(context))
    ]));
  }
}

String _shorten(String title) {
  if (title.length > 80) {
    return "${title.substring(1, 78)}..";
  }
  return title;
}
