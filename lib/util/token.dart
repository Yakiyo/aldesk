import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:minlog/minlog.dart';

/// This function checks if the token is valid
bool isValidToken(String tokenStr) {
  late final JWT jwt;

  try {
    jwt = JWT.decode(tokenStr);
  } catch (e) {
    warn("Token is invalid, must login again");
    warn("$e");
    return false;
  }

  final now = DateTime.now();

  /// issued at time
  final iat = DateTime.fromMillisecondsSinceEpoch(jwt.payload["iat"] * 1000);

  /// expire date
  final exp = DateTime.fromMillisecondsSinceEpoch(jwt.payload["exp"] * 1000);

  // iat < now < exp - this should be the proper serial

  if (now.difference(iat).isNegative) {
    debug("iat is in the future");
    return false;
  }

  final diff = exp.difference(now);
  const minDiff = Duration(days: 1);

  // if the exp date has passed or will pass within the duration of
  // a day, we reject this
  if (diff.isNegative || diff.compareTo(minDiff) < 0) {
    debug("Token expired or will expire soon");
    return false;
  }

  return true;
}
