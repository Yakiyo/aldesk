import 'package:anilist/anilist.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

import 'misc.dart';

/// The minimum difference between now and expiry date that we consider to be
/// valid for the app
const minDiff = Duration(days: 1);

void storeToken(String token) {
  get<Storage>().token = token;
  registerToken(token);
}

void removeToken() {
  get<Storage>().token = null;
  registerToken(null);
}

/// function used to check if user is authenticated during app startup
bool isLoggedIn() {
  final token = get<Storage>().token;
  final valid = isValidToken(token);
  // registers the token to the package during load time
  if (valid) registerToken(token);
  return valid;
}

bool isValidToken(String? token) {
  if (token == null || token.isEmpty) return false;
  try {
    final payload = JWT.decode(token).payload as Map<String, dynamic>;
    final expiresAt =
        DateTime.fromMillisecondsSinceEpoch((payload["exp"] ?? 0) * 1000);
    final now = DateTime.now();
    return now.isBefore(expiresAt) && (expiresAt.difference(now) > minDiff);
  } catch (_) {
    return false;
  }
}
