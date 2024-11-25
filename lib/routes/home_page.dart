import 'package:aldesk/components/home_activity_list.dart';
import 'package:aldesk/components/navigation_fab.dart';
import 'package:aldesk/components/series_bar.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:minlog/minlog.dart';
import 'package:option_result/option_result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final List<Future<Result<dynamic, List<Map<String, String>>>>> _data;

  @override
  void initState() {
    super.initState();
    final anilist = GetIt.I.get<AnilistClient>();
    _data = [
      anilist.currentAnimes(),
      anilist.currentMangas(),
      anilist.followingActivities(page: 1, perPage: 25)
    ];
  }

  List<(String, List<GHomePageListData_Page_mediaList>)> _resolveAnimes(
      List<GHomePageListData_Page_mediaList> animes) {
    final airingLen =
        animes.lastIndexWhere((a) => a.media!.status!.name == "RELEASING") + 1;
    // split lists if theres more than 6 airing animes, otherwise dont need
    if (airingLen < 7) {
      return [("Anime in Progress", animes)];
    }

    return [
      ("Airing Animes", animes.sublist(0, airingLen)),
      ("Anime in Progress", animes.sublist(airingLen))
    ].where((e) => e.$2.isNotEmpty).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const NavigationFAB(),
      // backgroundColor: colorBg,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                // Anime section
                FutureBuilder(
                    future: _data[0],
                    builder: (context, snapshot) {
                      final data =
                          builderResolver<GHomePageListData_Page_mediaList>(
                              context, snapshot);
                      if (data == null) return const SizedBox.shrink();
                      final widgets = _resolveAnimes(data)
                          .map((e) => SeriesBar(title: e.$1, serieslist: e.$2))
                          .toList();
                      // return SeriesBar(title: "Airing Anime", serieslist: data);
                      return Column(children: widgets);
                    }),
                // Manga section
                FutureBuilder(
                    future: _data[1],
                    builder: (context, snapshot) {
                      final data =
                          builderResolver<GHomePageListData_Page_mediaList>(
                              context, snapshot);
                      if (data == null) return const SizedBox.shrink();
                      return SeriesBar(
                          title: "Manga In Progress", serieslist: data);
                    }),
                // Activity List
                FutureBuilder(
                    future: _data[2],
                    builder: (context, snapshot) {
                      final data =
                          builderResolver<GListActivityFrag>(context, snapshot);
                      if (data == null) return const SizedBox.shrink();
                      return HomeActivityList(activities: data);
                    }),

                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<T>? builderResolver<T>(BuildContext context,
    AsyncSnapshot<Result<dynamic, List<Map<String, String>>>> snapshot) {
  switch (snapshot.connectionState) {
    case ConnectionState.waiting:
      return null;
    case ConnectionState.none:
      return null;
    default:
      break;
  }

  if (snapshot.hasError) {
    error("Future execution error", vars: {"error": snapshot.error.toString()});
    return null;
  }

  final data = snapshot.data!;

  if (data.isErr()) {
    error("Error fetching data", vars: {"error": "${data.unwrapErr()}"});
    return null;
  }
  final content = data.unwrap() as List<T>;
  if (content.isEmpty) return null;
  return content;
}
