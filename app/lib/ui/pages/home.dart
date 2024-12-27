import '../components/layout/my_scaffold.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/misc/async_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AsyncWidget(
              future: trendingMedia(),
              builder: (context, value) => Expanded(
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: value.media?.length ?? 0,
                  itemBuilder: (context, index) => Text(
                      value.media![index]?.title?.userPreferred ??
                          'Missing title'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
