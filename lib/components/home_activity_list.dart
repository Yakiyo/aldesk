import 'package:aldesk/util/themes/data.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:minlog/minlog.dart';
import 'package:url_launcher/url_launcher.dart';

const _tileHeigth = 120.0;
const _tileWidth = 560.0;

class HomeActivityList extends StatefulWidget {
  final List<GListActivityFrag> activities;

  const HomeActivityList({super.key, required this.activities});

  @override
  State<HomeActivityList> createState() => _HomeActivityListState();
}

class _HomeActivityListState extends State<HomeActivityList> {
  List<GListActivityFrag> _activities = [];
  int _currentPage = 1;
  bool _loading = false;

  @override
  void initState() {
    _activities = widget.activities;
    super.initState();
    setState(() {});
  }

  void _reload() async {
    setState(() {
      _activities = [];
    });
    final anilist = GetIt.I.get<AnilistClient>();

    final res = await anilist.followingActivities(page: 1);
    if (res.isErr()) {
      error("error when reloading activities",
          vars: {"error": "${res.unwrapErr()}"});
      return;
    }
    setState(() {
      _activities = res.unwrap();
      _currentPage = 1;
    });
  }

  void _addActivities() async {
    setState(() {
      _loading = true;
    });
    _currentPage++;
    final anilist = GetIt.I.get<AnilistClient>();
    final res = await anilist.followingActivities(page: _currentPage);
    if (res.isErr()) {
      error("error when loading activities", vars: {
        "error": "${res.unwrapErr()}",
        "page": "$_currentPage",
      });
      setState(() {
        _loading = false;
      });
      return;
    }
    setState(() {
      _activities.addAll(res.unwrap());
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _tileWidth + 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Activities",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: _reload,
                    icon: const Icon(
                      Icons.replay_rounded,
                      size: 18,
                    ))
              ],
            ),
          ),
          if (_activities.isEmpty)
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                  child: CircularProgressIndicator(
                color: Colors.lightBlue,
              )),
            ),
          for (final activity in _activities) ActivityTile(activity: activity),
          // button for adding more activities
          InkWell(
            onTap: _addActivities,
            child: Container(
                width: _tileWidth,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: !_loading
                      ? const Text("Load More")
                      : const CircularProgressIndicator(
                          color: Colors.lightBlue,
                        ),
                )),
          )
        ],
      ),
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
  late GListActivityFrag activity;
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

  void _toggleLike() async {
    print("before req ${activity.isLiked}");
    final anilist = GetIt.I.get<AnilistClient>();
    final toggleRes =
        await anilist.toggleLike(activity.id, GLikeableType.ACTIVITY);
    if (toggleRes.isErr()) {
      error("error when toggling like", vars: {
        "error": "${toggleRes.unwrapErr()}",
        "activityId": "${activity.id}",
      });
      return;
    }
    final id = (toggleRes.unwrap()
            as GToggleActivityLikeData_ToggleLikeV2__asListActivity)
        .id;
    final res = await anilist.singleListActivity(id);
    if (res.isErr()) {
      error("error when refetching activity");
    }
    setState(() {
      activity = res.unwrap();
    });
  }

  @override
  void initState() {
    activity = widget.activity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.primary,
      ),
      constraints: const BoxConstraints(
          minWidth: _tileWidth,
          maxWidth: _tileWidth,
          minHeight: _tileHeigth,
          maxHeight: _tileHeigth + 100),
      width: _tileWidth,
      height: _tileHeigth,
      child: MouseRegion(
        onEnter: (event) => setState(() => _isHovering = true),
        onExit: (event) => setState(() => _isHovering = false),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              height: _tileHeigth,
              child: InkWell(
                onTap: () => _toMediaPage(context),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    activity.media!.coverImage!.large!,
                    // height: tileHeigth,
                    // width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User name
                    Text(
                      activity.user!.name,
                      style: const TextStyle(color: Colors.lightBlue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Status text
                    StatusText(
                        title: activity.media!.title!.userPreferred!,
                        status: activity.status!,
                        progress: activity.progress,
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
                            activity.user!.avatar!.large!,
                            height: 36,
                            width: 36,
                            fit: BoxFit.cover,
                          )),
                    ),
                    const Expanded(child: SizedBox.shrink()),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
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
                      if (activity.replyCount > 0)
                        Text("${activity.replyCount}"),
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
                      if (activity.likeCount > 0) Text("${activity.likeCount}"),
                      const SizedBox(
                        width: 5,
                      ),
                      // TODO: make this an icon button
                      IconButton(
                          onPressed: _toggleLike,
                          icon: Icon(
                            Icons.favorite_rounded,
                            size: 15,
                            color: activity.isLiked!
                                ? highlightColor
                                : Colors.grey[400],
                          )),
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
  final String? progress;
  final void Function(BuildContext) toMediaPage;
  const StatusText(
      {super.key,
      required this.title,
      required this.status,
      required this.progress,
      required this.toMediaPage});

  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(children: [
          TextSpan(
            style: const TextStyle(
              color: Colors.grey,
            ),
            text:
                "${_capitalize(status)} ${progress != null ? "$progress " : ""}",
          ),
          TextSpan(
              text: title,
              style: const TextStyle(color: Colors.lightBlue),
              recognizer: TapGestureRecognizer()
                ..onTap = () => toMediaPage(context))
        ]));
  }
}

String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);
