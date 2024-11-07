import 'package:anilist/src/graphql/__generated__/media.data.gql.dart';
import 'package:anilist/src/graphql/__generated__/media.req.gql.dart';
import 'package:anilist/src/graphql/__generated__/user.data.gql.dart';
import 'package:anilist/src/graphql/__generated__/user.req.gql.dart';
import 'package:anilist/src/graphql/__generated__/schema.schema.gql.dart';
import 'package:option_result/option_result.dart';
import 'package:anilist/src/request.dart';
import 'package:anilist/src/client.dart';
import 'package:ferry/ferry.dart';

/// The main class to interact with the Anilist API
class AnilistClient {
  /// User authentication token
  final String? token;

  // ignore: unused_field
  late final Client _client;

  GViewerData_Viewer? _currentUser;

  /// Create a new Anilist client
  AnilistClient({this.token}) {
    _client = createClient(token: token);
  }

  /// Gets the current authenticated user
  ///
  /// This caches the current user, so it will only make one request to the API
  Future<Result<GViewerData_Viewer, ApiError>> currentUser() async {
    if (_currentUser == null) {
      if (token == null || token!.isEmpty) {
        return Err([
          {
            "message": "missing token, no user currently authorized",
            "location": "unknown",
          }
        ]);
      }

      final res = await request(GViewerReq(), _client);
      final dataR = res.map((d) => d!.Viewer!);
      // if request has an error, return early
      if (dataR.isErr()) {
        return dataR;
      }
      _currentUser = dataR.unwrap();
    }

    return Ok(_currentUser!);
  }

  Future<Result<GMediaMinimalData_Media, ApiError>> mediaMinimal(
      {int? id, String? search}) async {
    final query = GMediaMinimalReq(
      (b) => b
        ..vars.id = id
        ..vars.search = search,
    );
    final res = await request(query, _client);
    return res.map(
      (d) => d!.Media!,
    );
  }

  Future<Result<List<GHomePageListData_Page_mediaList>, ApiError>>
      currentAnimes() async {
    final userR = await currentUser();
    if (userR.isErr()) {
      return userR.map((d) => []);
    }
    final user = userR.unwrap();
    final query = GHomePageListReq(
      (b) => b
        ..vars.userId = user.id
        ..vars.mediaType = GMediaType.ANIME,
    );

    final res = await request(query, _client);
    return res
        .map(
      (d) => d!.Page!.mediaList!.asList(),
    )
        .map((d) {
      final f = [...d];
      f.sort((a, b) {
        final r = GMediaStatus.RELEASING;
        final astat = a!.media!.status;
        final bstat = b!.media!.status;
        final aair = a.media!.nextAiringEpisode?.timeUntilAiring ?? 0;
        final bair = b.media!.nextAiringEpisode?.timeUntilAiring ?? 0;
        if (astat == r) {
          // if a is airing, and b is not, a is first
          if (bstat != r) return -1;
          // if both are airing, the one with lesser airing time is first
          return aair < bair ? -1 : 1;
        }
        // a isn't airing, if b airs, then b is first
        if (bstat == r) return 1;
        // if both aren't airing, the one with the greater updated time
        // means it was updated more recently
        final aup = a.updatedAt ?? 0;
        final bup = b.updatedAt ?? 0;
        return aup > bup ? -1 : 1;
      });
      return f;
    }).map((d) => d.map((x) => x!).toList());
  }

  Future<Result<List<GHomePageListData_Page_mediaList>, ApiError>>
      currentMangas() async {
    final userR = await currentUser();
    if (userR.isErr()) {
      return userR.map((d) => []);
    }
    final user = userR.unwrap();
    final query = GHomePageListReq(
      (b) => b
        ..vars.userId = user.id
        ..vars.mediaType = GMediaType.MANGA,
    );

    final res = await request(query, _client);
    // no sorting required since api returns it based on updated time
    return res.map(
      (d) => [...d!.Page!.mediaList!].map((x) => x!).toList(),
    );
  }
}
