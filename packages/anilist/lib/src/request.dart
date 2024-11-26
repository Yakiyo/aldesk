import 'package:http/http.dart' as http;

final _client = http.Client();

final _baseUrl = Uri.parse("https://graphql.anilist.co");

final _headers = {
  // 'Authorization': 'Bearer ' + accessToken,
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

/// Adds an authentication token to be passed along with all requests.
/// This will add if token was absent, or overwrite the old one.
void addToken(String token) {
  _headers['Authorization'] = 'Bearer $token';
}

/// Send a request to the Anilist API
dynamic request() {}