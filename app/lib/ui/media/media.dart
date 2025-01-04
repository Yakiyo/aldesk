import 'package:aldesk/ui/core/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  final int id;
  const MediaPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(body: Placeholder());
  }
}
