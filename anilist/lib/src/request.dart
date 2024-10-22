import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:option_result/option_result.dart';

/// The anilist api endpoint
final _endpoint = Uri.parse("https://graphql.anilist.co");

/// Headers used when making request to the anilist api
final Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

/// Internal function to make requests to the Anilist graphql api
///
/// query - the query to use for the request
///
/// variables - variables used in the query
///
/// client - an http client that can be reused
Future<Result<Map<String, dynamic>, String>> request(
    String query, Map<String, dynamic> variables,
    {http.Client? client, String? token}) async {
  client ??= http.Client();

  if (token != null && token.isNotEmpty) {
    headers['Authorization'] = 'Bearer $token';
  }

  final res = await client.post(_endpoint,
      headers: headers,
      body: jsonEncode({"query": query, "variables": variables}));

  if (res.statusCode != 200) {
    return Err("Request returned with status code ${res.statusCode}");
  }
  final json = jsonDecode(res.body);

  // if response returns an errors field
  if (json['errors'] != null) {
    final List<Map<String, dynamic>> errors = json['errors'];
    // map the `message` fields from the array and join em
    return Err(errors.map((e) => e["message"]).join(", "));
  }

  return Ok(json['data'] as Map<String, dynamic>);
}
