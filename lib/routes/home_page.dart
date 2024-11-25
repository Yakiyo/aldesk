import 'package:aldesk/components/home_activity_list.dart';
import 'package:aldesk/components/navigation_fab.dart';
import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:minlog/minlog.dart';
import 'package:option_result/option_result.dart';

import '../components/series_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<Result<dynamic, List<Map<String, String>>>>> _data;

  @override
  void initState() {
    super.initState();
    final anilist = GetIt.I.get<AnilistClient>();
    _data = Future.wait([
      anilist.currentAnimes(),
      anilist.currentMangas(),
      anilist.followingActivities()
    ]);
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
            child: FutureBuilder(
              future: _data,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox.shrink();
                }
                if (snapshot.hasError) {
                  error("error when fetching data from anilist",
                      vars: {"error": "${snapshot.error}"});
                  return const SizedBox.shrink();
                }
                final animesR = snapshot.data![0];
                final mangasR = snapshot.data![1];
        
                if (animesR.isErr()) {
                  error("error when fetching animes",
                      vars: {"error": "${animesR.unwrapErr()}"});
                }
                if (mangasR.isErr()) {
                  error("error when fetching mangas",
                      vars: {"error": "${mangasR.unwrapErr()}"});
                }
                List<GListActivityFrag> activities = [];
                if (snapshot.data![2].isOk()) {
                  activities = snapshot.data![2].unwrap();
                } else {
                  error("error when fetching activities",
                      vars: {"error": "${snapshot.data![2].unwrapErr()}"});
                }
        
                return ScrollConfiguration(
                  // remove the scroll bar that shows up on right
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      if (animesR.isOk())
                        for (final animes in _resolveAnimes(animesR.unwrap()
                            as List<GHomePageListData_Page_mediaList>))
                          SeriesBar(
                            title: animes.$1,
                            serieslist: animes.$2,
                          ),
                      if (mangasR.isOkAnd((activities) => activities.isNotEmpty))
                        SeriesBar(
                          title: "Manga in Progress",
                          serieslist: mangasR.unwrap()
                              as List<GHomePageListData_Page_mediaList>,
                        ),
                      const SizedBox(
                        height: 40,
                      ),
                      HomeActivityList(activities: activities),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
