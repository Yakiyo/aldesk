import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:option_result/option_result.dart';

typedef ApiError = List<Map<String, String>>;

Future<Result<QData?, ApiError>> request<QData, QVars>(
    OperationRequest<QData, QVars> query, Client client) async {
  final response = await client.request(query).first;

  if (response.hasErrors) {
    if (response.linkException != null) {
      final errs = (response.linkException as HttpLinkServerException)
              .parsedResponse
              ?.errors
              ?.map((e) => {
                    "message": e.message,
                    "location": e.locations
                            ?.map((x) => "line: ${x.line}, column: ${x.column}")
                            .join("") ??
                        "",
                  })
              .toList() ??
          [
            {
              "message": "error when making api request",
              "location": "unknown",
            }
          ];
      return Err(errs);
    }
    throw "Unknown error type, ${response.graphqlErrors}";
  }

  return Ok(response.data);
}
