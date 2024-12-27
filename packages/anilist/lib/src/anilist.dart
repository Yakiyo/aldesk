import 'types.dart';
import 'consts.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:option_result/result.dart';

/// Registers a token to send with request
///
/// If `token` is null, it removes any previous provided token value.
/// If not null, it adds or overwrites token value
void registerToken([String? token]) {
  if (token == null) {
    headers.remove("Authorization");
    return;
  }

  headers["Authorization"] = 'Bearer $token';
  return;
}

/// Sends a request to Anilist with `query` and associated `variables`.
ReturnType<Map<String, dynamic>> request({
  required String query,
  Map<String, dynamic> variables = const {},
  Client? client,
}) async {
  client ??= baseClient;

  final response = await client.post(baseUrl,
      headers: headers,
      body: jsonEncode({
        'query': query,
        'variables': variables,
      }));
  final body = jsonDecode(response.body);

  final errorR = body['errors'] as List<dynamic>?;

  if (errorR != null && errorR.isNotEmpty) {
    final errors = errorR
        .map((e) => ApiError.fromJson(e as Map<String, dynamic>))
        .toList();
    return Err(ApiErrors(errors));
  }
  final data = body['data'] as Map<String, dynamic>?;

  // this should not happen but handle it regardless
  if (data == null) {
    return Err(ApiErrors([
      ApiError(
          message: "Missing body data despite not having errors",
          status: 0,
          locations: [])
    ]));
  }

  return Ok(data);
}
