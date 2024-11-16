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
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5)),
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
  OverlayEntry? _overlayEntry;

  bool _isAiring() {
    final entry = widget.entry;
    final nextEp = entry.media?.nextAiringEpisode?.episode;
    return entry.media?.status?.name == "RELEASING" &&
        entry.media?.type?.name == "ANIME" &&
        nextEp != null;
  }

  int _behindInfo() {
    final entry = widget.entry;
    final nextEp = entry.media?.nextAiringEpisode?.episode;
    final progress = entry.progress ?? 0;
    if (!_isAiring()) return 0;
    final behind = (nextEp! - 1) - progress;

    return behind;
  }

  void _createOverlay() {
    final entry = widget.entry;
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    final total = entry.media?.episodes;
    final progress = entry.progress ?? 0;
    final behind = _behindInfo();
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          left: offset.dx + size.width,
          // drop the card down by 10 bcz of card padding
          top: offset.dy + 10,
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              padding: const EdgeInsets.all(10),
              width: size.width * 2,
              // reduce height by 20 to match with the card's padding
              height: size.height - 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_isAiring() && behind > 0)
                    Text("$behind episode${behind > 1 ? "s" : ""} behind",
                        style: const TextStyle(color: Colors.lightBlue)),
                  Text(
                    entry.media!.title!.userPreferred!.trim(),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    "Progress: $progress${total != null ? "/$total" : ""}",
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    final entry = widget.entry;
    return Container(
      padding: const EdgeInsets.all(10),
      child: MouseRegion(
        onEnter: (_) {
          setState(() => _hovering = true);
          _createOverlay();
        },
        onExit: (_) {
          setState(() => _hovering = false);
          _removeOverlay();
        },
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

            // for releasing series, show a red line at the bottom and
            // next episode number and probable duration until its release
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
              if (_behindInfo() > 0)
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
