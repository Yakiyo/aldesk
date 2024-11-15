import 'package:aldesk/util/colors.dart';
import 'package:aldesk/util/misc.dart';
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

class SeriesBarTile extends StatefulWidget {
  final GHomePageListData_Page_mediaList entry;
  const SeriesBarTile({super.key, required this.entry});

  @override
  State<SeriesBarTile> createState() => _SeriesBarTileState();
}

class _SeriesBarTileState extends State<SeriesBarTile> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final entry = widget.entry;
    return Container(
      padding: const EdgeInsets.all(10),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovering = true),
        onExit: (_) => setState(() => _hovering = false),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                entry.media!.coverImage!.large!,
                height: 140,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
            if (_hovering)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                // height: 140,
                width: 95,
                child: Center(
                  child: Text(
                    "${entry.progress ?? 0}+",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            if (!_hovering &&
                entry.media?.type?.name == "ANIME" &&
                entry.media!.status!.name == "RELEASING") ...[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                // height: 140,
                width: 95,
                child: Center(
                  child: Text(
                    "Ep ${entry.media?.nextAiringEpisode?.episode}\n"
                    "${secondsToTime(entry.media!.nextAiringEpisode!.timeUntilAiring)}",
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 95,
                height: 5,
                child: Container(
                  color: const Color.fromRGBO(232, 93, 117, 1),
                ),
              )
            ]
          ],
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
