import 'dart:convert';

import 'package:anilist/src/client.dart';
import 'package:anilist/src/graphql/__generated__/user.req.gql.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:test/test.dart';

void main() {
  test("Ferry query test", () async {
    final client = createClient();
    final req = GGetUserReq(
        (b) => b..vars.search = "Yakiyo",
          );

    final res = await client.request(req).first;
    print((res.linkException as HttpLinkServerException)
        .parsedResponse
        ?.errors
        ?.map((e) => JsonEncoder.withIndent(' ').convert({
              "message": e.message,
              "location": e.locations
                  ?.map((x) => "line: ${x.line}, column: ${x.column}")
                  .join(""),
            })));
    print(res.linkException?.runtimeType);
  });
}
