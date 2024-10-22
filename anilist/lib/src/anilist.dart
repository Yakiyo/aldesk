import 'package:http/http.dart' as http;

// A singleton class, so that it can only be instantiated once.
// Idea from: https://medium.com/@alvaro.armijoss/singleton-in-flutter-c8d187820364

/// The main class to interact with the Anilist API
class AnilistClient {
  /// User authentication token
  // ignore: unused_field
  String? _token;

  // ignore: unused_field
  final _httpClient = http.Client();

  AnilistClient._();
  static final _instance = AnilistClient._();

  factory AnilistClient() {
    return _instance;
  }

  /// Add user authentication token
  void withToken(String token) {
    if (token.isEmpty) {
      throw "Argument token cannot be an empty string";
    }

    _token = token;
  }
}
