import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The minimum difference between now and expiry date that we consider to be
/// valid for the app
const minDiff = Duration(days: 1);

bool isLoggedIn() {
  final pref = GetIt.I.get<SharedPreferences>();
  final token = pref.getString("token");
  return isValidToken(token);
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
