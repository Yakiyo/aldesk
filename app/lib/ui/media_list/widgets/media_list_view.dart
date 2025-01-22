import 'package:flutter/material.dart';

class MediaListView extends StatelessWidget {
  const MediaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        10,
        (index) => Container(
            margin: const EdgeInsets.all(8),
            color: Colors.amberAccent,
            width: 200,
            height: 200,
            child: Text("$index")),
      ),
    );
  }
}
