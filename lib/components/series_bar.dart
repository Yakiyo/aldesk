import 'package:flutter/material.dart';
import 'package:anilist/anilist.dart';

class SeriesBar extends StatelessWidget {
  final String title;
  final List<GHomePageListData_Page_mediaList> series;
  const SeriesBar({super.key, required this.title, required this.series});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class SeriesBarBody extends StatelessWidget {
  final List<GHomePageListData_Page_mediaList> series;
  const SeriesBarBody({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: series.map((entry) => SeriesBarTile(entry: entry)).toList(),
    );
  }
}

class SeriesBarTile extends StatelessWidget {
  final GHomePageListData_Page_mediaList entry;
  const SeriesBarTile({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Image.network(
        entry.media!.coverImage!.large!,
        height: 40,
      ),
    );
  }
}
