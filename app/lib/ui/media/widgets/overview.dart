import 'package:anilist/models.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  final QueryMediaMedia media;
  const Overview({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          children: const [
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Type"),
              subtitle: Text("TV"),
              tileColor: Colors.amber,
            ),
          ],
        ),
      ],
    );
  }
}
