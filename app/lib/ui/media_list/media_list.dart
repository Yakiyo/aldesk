import 'package:aldesk/ui/core/widgets/my_scaffold.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

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
    return const MyScaffold(body: Placeholder());
  }
}
