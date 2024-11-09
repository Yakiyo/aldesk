import 'package:aldesk/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:anilist/anilist.dart';

class SeriesBar extends StatelessWidget {
  final String title;
  final List<GHomePageListData_Page_mediaList> serieslist;
  const SeriesBar({super.key, required this.title, required this.serieslist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: colorPrimary, borderRadius: BorderRadius.circular(5)),
            child: Wrap(children: [
              for (final series in serieslist)
                SeriesBarTile(
                  entry: series,
                )
            ]),
          )
        ],
      ),
    );
  }
}

class SeriesBarTile extends StatelessWidget {
  final GHomePageListData_Page_mediaList entry;
  const SeriesBarTile({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    // if (entry.media!.status!.name == "RELEASING") {
    //   return AiringAnimeTile(
    //     entry: entry,
    //   );
    // }
    return Container(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          entry.media!.coverImage!.large!,
          height: 140,
          width: 95,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AiringAnimeTile extends StatelessWidget {
  final GHomePageListData_Page_mediaList entry;
  const AiringAnimeTile({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          entry.media!.coverImage!.large!,
          height: 140,
          width: 95,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
