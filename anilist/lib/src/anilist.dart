import 'package:anilist/src/client.dart';
import 'package:ferry/ferry.dart';

/// The main class to interact with the Anilist API
class AnilistClient {
  /// User authentication token
  final String token;

  // ignore: unused_field
  late final Client _client;

  AnilistClient({required this.token}) {
    _client = createClient(token: token);
  }
}
