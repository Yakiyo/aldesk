import 'package:anilist/src/client.dart';
import 'package:anilist/src/graphql/__generated__/media.data.gql.dart';
import 'package:anilist/src/graphql/__generated__/media.req.gql.dart';
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

  Future<Result<GMediaMinimalData_Media?, ApiError>> mediaMinimal(
      {int? id, String? search}) async {
    final query = GMediaMinimalReq(
      (b) => b
        ..vars.id = id
        ..vars.search = search,
    );
    final res = await request(query, _client);
    return res.map(
      (d) => d?.Media,
    );
  }
}
