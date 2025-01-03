import 'dart:math';

import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/anilist/providers.dart';
import '../../../core/utils/misc.dart';

class ThreadsGridView extends StatelessWidget {
  final List<FragmentThreadMin> threads;
  const ThreadsGridView({super.key, required this.threads});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Forum Activity",
                style: Theme.of(context).textTheme.displaySmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer(
                  builder: (context, ref, child) => IconButton(
                      tooltip: "Refresh threads (auto refreshes every 2 mins)",
                      onPressed: () {
                        ref.invalidate(recentThreadsProvider);
                      },
                      icon: const Icon(Icons.refresh)),
                ),
                IconButton(
                  onPressed: () {
                    context.go("/forum");
                  },
                  icon: const Icon(Icons.open_in_new),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Wrap(
            children: [
              ...threads.map((thread) {
                return ThreadTile(thread: thread);
              })
            ],
          ),
        )
      ],
    );
  }
}

class ThreadTile extends StatelessWidget {
  final FragmentThreadMin thread;
  const ThreadTile({super.key, required this.thread});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        context.go("/forum/${thread.id}");
      },
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        elevation: 10,
        child: SizedBox(
          width: 400,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        thread.title ?? "Missing title?",
                        maxLines: 3,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      RichText(
                          maxLines: 2,
                          text: TextSpan(
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color),
                              children: [
                                if (_replierAvatar != null)
                                  WidgetSpan(
                                      child: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: CircleAvatar(
                                        radius: 10,
                                        backgroundImage:
                                            NetworkImage(_replierAvatar!)),
                                  )),
                                TextSpan(
                                    text: thread.replyUser?.name ?? "Unknown",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary)),
                                TextSpan(text: " replied $_lastReplied")
                              ])),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        spacing: 2,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.remove_red_eye_sharp, size: 15),
                          Text("$_views"),
                          const Icon(Icons.chat_bubble_rounded, size: 15),
                          Text("$_comments"),
                        ],
                      ),
                      Wrap(
                        children: [
                          ..._categories.map((name) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _randColor(),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                  name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Color _randColor() =>
      Colors.primaries[random.nextInt(Colors.primaries.length)];

  List<String> get _categories => (thread.categories?.filterNull() ?? [])
      .map((e) => e.name)
      .take(2)
      .toList();
  String? get _replierAvatar => thread.replyUser?.avatar?.medium;
  int get _views => thread.viewCount ?? 0;
  int get _comments => thread.replyCountOrNull ?? 0;

  String get _lastReplied {
    final repliedAt = thread.repliedAt != null
        ? DateTime.fromMillisecondsSinceEpoch(thread.repliedAt! * 1000)
        : DateTime.now();
    return repliedAt.diffString();
  }
}

final random = Random();
