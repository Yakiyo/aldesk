import 'package:aldesk/utils/singletons.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

/// The minimum difference between now and expiry date that we consider to be
/// valid for the app
const minDiff = Duration(days: 1);

String? getToken() => Get.prefs().getString("token");

void storeToken(String token) =>
    Get.prefs().setString("token", token);

bool isLoggedIn() {
  final token = Get.prefs().getString("token");
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
