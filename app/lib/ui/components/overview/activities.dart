import 'package:aldesk/ui/components/misc/async_widget.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/anilist/providers.dart';

enum ActivityType {
  following,
  global,
}

final activityTypeProvider = StateProvider((ref) => ActivityType.following);

class Activities extends ConsumerWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activityType = ref.watch(activityTypeProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Recent Reviews",
                style: Theme.of(context).textTheme.displaySmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      ref.read(activityTypeProvider.notifier).state =
                          ActivityType.following;
                    },
                    child: const Text("Following")),
                TextButton(
                    onPressed: () {
                      ref.read(activityTypeProvider.notifier).state =
                          ActivityType.global;
                    },
                    child: const Text("Global")),
              ],
            ),
          ],
        ),
        if (activityType == ActivityType.following)
          Consumer(builder: (context, ref, child) {
            final activities = ref.watch(followingActivitiesProvider);
            return AsyncWidgetConsumer(
              value: activities,
              builder: (context, value) => ActivityList(activities: value),
            );
          }),
        if (activityType == ActivityType.global)
          Consumer(builder: (context, ref, child) {
            final activities = ref.watch(globalActivitiesProvider);
            return AsyncWidgetConsumer(
              value: activities,
              builder: (context, value) => ActivityList(activities: value),
            );
          }),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              if (activityType == ActivityType.following) {
                ref.read(followingActivitiesProvider.notifier).loadMore();
              } else {
                ref.read(globalActivitiesProvider.notifier).loadMore();
              }
            },
            child: const Text("Load More"))
      ],
    );
  }
}

class ActivityList extends StatelessWidget {
  final List<QueryActivitiesPageactivities> activities;
  const ActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: activities.map((activity) {
        return activity.maybeWhen(
          listActivity: (activity) => ListActivityTile(activity: activity),
          orElse: () => SizedBox(
            width: 450,
            height: 200,
            child: Card(
                color: Theme.of(context).colorScheme.secondary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        "Text & Message activities are not supported yet."),
                    const Text("Consider viewing them on the website"),
                    IconButton(
                        onPressed: () {
                          launchUrl(Uri.parse(
                            "https://anilist.co/activity/${activity.toJson()["id"]}",
                          ));
                        },
                        icon: const Icon(Icons.open_in_new))
                  ],
                )),
          ),
        );
      }).toList(),
    );
  }
}

class ListActivityTile extends StatelessWidget {
  final QueryActivitiesPageactivitiesListActivity activity;
  const ListActivityTile({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 200,
      child: Card(
        elevation: 5,
        color: Theme.of(context).colorScheme.secondary,
        child: Center(
          child: Text("${activity.id}"),
        ),
      ),
    );
  }
}
