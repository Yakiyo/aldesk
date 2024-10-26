import 'package:anilist/src/client.dart';
import 'package:anilist/src/graphql/__generated__/get_user.req.gql.dart';
import 'package:test/test.dart';

void main() {
//   test(
//     "Request function test",
//     () async {
//       const String query = """query (\$id: Int) {
//   Media(id: \$id) {
//     id
//     title {
//       romaji
//       english
//       native
//       userPreferred
//     }
//     coverImage {
//       large
//     }
//   }
// }""";

//       final variables = {"id": 1};
//       final res = await request(query, variables);
//       assert(res.isOk());

//       final data = res.unwrap()['Media'];

//       assert(data['id'] == 1);
//       assert(data['title']['romaji'] == "Cowboy Bebop");
//     },
//   );

//   test("Class test", () {
//     AnilistClient().withToken("hello world");
//   });

  test(
    "Ferry query test",
    () async {
      final client = createClient();
      final req = GGetUserReq(
        (b) => b..vars.search = "Yakiyo",
      );

      final res = await client.request(req).first;
      print(res.data!.User);
      // final r = req.execRequest;

      // client.request(req).listen(
      //   (event) {
      //     print(event.data);
      //   },
      // );
      // final data = await response.first;

      // print(data.data);
    },
  );

//   test(
//     "json decode",
//     () {
//       final s = """
// {
//       "id": 1,
//       "title": {
//         "romaji": "Cowboy Bebop",
//         "english": "Cowboy Bebop",
//         "native": "カウボーイビバップ",
//         "userPreferred": "Cowboy Bebop"
//       },
//       "type": "ANIME",
//       "format": "TV",
//       "status": "FINISHED",
//       "description": "Enter a world in the distant future, where Bounty Hunters roam the solar system. Spike and Jet, bounty hunting partners, set out on journeys in an ever struggling effort to win bounty rewards to survive. While traveling, they meet up with other very interesting people. Could Faye, the beautiful and ridiculously poor gambler, Edward, the computer genius, and Ein, the engineered dog be a good addition to the group?",
//       "startDate": {
//         "year": 1998,
//         "month": 4,
//         "day": 3
//       },
//       "endDate": {
//         "year": 1999,
//         "month": 4,
//         "day": 24
//       },
//       "episodes": 26,
//       "chapters": null,
//       "volumes": null,
//       "coverImage": {
//         "large": "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1-CXtrrkMpJ8Zq.png"
//       },
//       "bannerImage": "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-OquNCNB6srGe.jpg"
//     }""";
//       final m = Media.fromJson(jsonDecode(s));
//       print(m.type);
//     },
//   );
}
