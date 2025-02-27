import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

import '../core/widgets/my_scaffold.dart';
import 'widgets/filter_bar.dart';
import 'widgets/media_list_view.dart';

class MediaListPage extends StatelessWidget {
  final int userId;
  final EnumMediaType type;
  // true if we're looking at the authenticated user's list
  // false in every other case
  final bool isAuthUser;
  const MediaListPage(
      {super.key,
      required this.userId,
      required this.type,
      required this.isAuthUser});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterBar(userId: userId, type: type),
          Expanded(child: MediaListView(userId: userId, type: type)),
        ],
      ),
    ));
  }
}
