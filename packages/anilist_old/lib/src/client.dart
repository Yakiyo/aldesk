import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:anilist/src/graphql/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;

Client createClient({String? token}) {
  final headers = <String, String>{};
  if (token != null && token.isNotEmpty) {
    headers['Authorization'] = 'Bearer $token';
  }
  final link = HttpLink("https://graphql.anilist.co", defaultHeaders: headers);

  final cache = Cache(possibleTypes: possibleTypesMap);

  final client = Client(link: link, cache: cache, defaultFetchPolicies: {
    OperationType.query: FetchPolicy.NetworkOnly,
    OperationType.mutation: FetchPolicy.NetworkOnly,
  });

  return client;
}
