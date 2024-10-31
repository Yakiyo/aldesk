import 'package:anilist/src/client.dart';
import 'package:anilist/src/graphql/__generated__/media.data.gql.dart';
import 'package:anilist/src/graphql/__generated__/media.req.gql.dart';
import 'package:anilist/src/graphql/__generated__/user.data.gql.dart';
import 'package:anilist/src/graphql/__generated__/user.req.gql.dart';
import 'package:anilist/src/request.dart';
import 'package:ferry/ferry.dart';
import 'package:option_result/option_result.dart';

/// The main class to interact with the Anilist API
class AnilistClient {
  /// User authentication token
  final String? token;

  // ignore: unused_field
  late final Client _client;

  AnilistClient({this.token}) {
    _client = createClient(token: token);
  }

  Future<Result<GViewerData_Viewer, ApiError>> currentUser() async {
    if (token == null || token!.isEmpty) {
      return Err([
        {
          "message": "missing token, no user currently authorized",
          "location": "unknown",
        }
      ]);
    }

    final res = await request(GViewerReq(), _client);
    return res.map((d) => d!.Viewer!);
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
}
