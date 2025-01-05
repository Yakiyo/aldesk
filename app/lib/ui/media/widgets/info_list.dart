import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/utils/utils.dart';
import '../data/utils.dart';

class InfoList extends StatelessWidget {
  final QueryMediaMedia media;
  const InfoList({super.key, required this.media});

  bool get isAnime => media.type == EnumMediaType.ANIME;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // childAspectRatio: 2 / 1,
      // shrinkWrap: true,
      // crossAxisCount: 5,
      // maxCrossAxisExtent: 250,
      // scrollDirection: Axis.horizontal,
      children: [
        if (media.nextAiringEpisode != null) _nextEpisodeTile(),
        _tile("Type", media.type?.name.toLowerCase().capitalize()),
        _tile("Format", media.format?.name),
        _tile("Status", media.status?.name),
        if (isAnime) _tile("Episodes", media.episodes?.toString() ?? "N/A"),
        if (!isAnime) _tile("Chapters", media.chapters?.toString() ?? "N/A"),
        if (isAnime) _tile("Duration", media.duration?.toString() ?? "N/A"),
        _tile(
            "Start Date",
            _dateStr(media.startDate?.day, media.startDate?.month,
                media.startDate?.year)),
        _tile(
            "End Date",
            _dateStr(
                media.endDate?.day, media.endDate?.month, media.endDate?.year)),
        _tile("Season",
            "${media.season?.name.toLowerCase().capitalize()} ${media.seasonYear}"),
        _tile("Average Score", _score(media.averageScore)),
        _tile("Mean Score", _score(media.meanScore)),
        _tile("Popularity", media.popularity?.toString() ?? "N/A"),
        _tile("Favourites", media.favourites?.toString() ?? "N/A"),
        _tile(
            "Source",
            media.source?.name
                .split("_")
                .map((e) => e.toLowerCase().capitalize())
                .join(" ")),
        if (media.hashtag != null)
          SizedBox(
            width: 180,
            child: ListTile(
              title: const Text("Hashtag", style: TextStyle(fontSize: 18)),
              subtitle: Tooltip(
                message: "Search on Twitter",
                child: InkWell(
                    onTap: () {
                      launchUrl(Uri.https('twitter.com', '/search', {
                        'q': media.hashtag!.split(" ").join(" OR "),
                        'src': 'typd'
                      }));
                    },
                    child: Text(
                      media.hashtag!,
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary),
                    )),
              ),
            ),
          ),
        // _tile("Native", media.title?.native ?? "N/A"),
        // _tile("Romaji", media.title?.romaji ?? "N/A"),
        // _tile("English", media.title?.english ?? "N/A"),
        if (media.title?.native != null)
          SizedBox(
            width: 180,
            child: ListTile(
              title: const Text(
                "Native",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: SelectableText(media.title!.native!,
                  style: const TextStyle(fontSize: 15)),
            ),
          ),
        if (media.title?.romaji != null)
          SizedBox(
            width: 180,
            child: ListTile(
              title: const Text(
                "Romaji",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: SelectableText(media.title!.romaji!,
                  style: const TextStyle(fontSize: 15)),
            ),
          ),
        if (media.title?.english != null)
          SizedBox(
            width: 180,
            child: ListTile(
              title: const Text(
                "English",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: SelectableText(media.title!.english!,
                  style: const TextStyle(fontSize: 15)),
            ),
          ),
        if (media.synonyms != null && media.synonyms!.isNotEmpty)
          SizedBox(
              width: 180,
              child: ListTile(
                  title: const Text("Synonyms", style: TextStyle(fontSize: 18)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: media.synonyms!
                        .filterNull()
                        .map((e) => SelectableText(e))
                        .toList(),
                  ))),
      ],
    );
  }

  Widget _nextEpisodeTile() {
    return SizedBox(
      width: 180,
      child: ListTile(
        isThreeLine: true,
        title: const Text(
          "Airing",
          style: TextStyle(fontSize: 18, color: Colors.lightBlue),
        ),
        subtitle: Text(
          "Ep ${media.nextAiringEpisode?.episode ?? 0}: ${_airingIn()}",
          style: const TextStyle(fontSize: 15, color: Colors.lightBlue),
        ),
      ),
    );
  }

  String _airingIn() {
    final n = media.nextAiringEpisode?.timeUntilAiring ?? 0;
    final duration = Duration(seconds: n);
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    return "${days}d ${hours}h ${minutes}m";
  }

  Widget _tile(String? title, String? subtitle,
      {double? width, bool isThreeLine = true}) {
    if (title == null || subtitle == null) {
      return const SizedBox();
    }
    return SizedBox(
      width: width ?? 180,
      child: ListTile(
        isThreeLine: isThreeLine,
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  String _score(int? score) {
    if (score == null) {
      return "N/A";
    }
    return "$score%";
  }

  String _dateStr(int? day, int? month, int? year) {
    if ([day, month, year].every((element) => element == null)) {
      return "N/A";
    }
    return "${monthFromInt(month ?? 0)} $day, $year";
  }
}
