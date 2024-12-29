import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/get.dart';

part 'token.g.dart';

@riverpod
Token? token(Ref ref) {
  final token = Token.fromStorage();
  // update the packages token whenever app's one changes
  registerToken(token?.token);
  return token;
}

@riverpod
Future<FragmentUserMin> authUser(Ref ref) {
  ref.watch(tokenProvider);
  return viewer();
}

class Token {
  final String token;
  late final DateTime exp;
  late final DateTime iat;
  // effectively the user's id
  late final String sub;

  Token(this.token) {
    final payload = JWT.decode(token).payload;
    exp = DateTime.fromMillisecondsSinceEpoch(payload['exp'] * 1000);
    iat = DateTime.fromMillisecondsSinceEpoch(payload['iat'] * 1000);
    sub = payload['sub'];
  }

  static Token? fromStorage() {
    final str = pref.getString("token");
    if (str == null) return null;
    return Token(str);
  }

  bool get isValid {
    final diff = exp.difference(DateTime.now());
    const minDiff = Duration(days: 1);

    // if the exp date has passed or will pass within the duration of
    // a day, we reject this
    if (diff.isNegative || diff.compareTo(minDiff) < 0) {
      logger.i("Token expired or will expire soon");
      return false;
    }

    return true;
  }

  static Token? tryBuild(String token) {
    try {
      final t = Token(token);
      if (t.isValid) return t;
      return null;
    } catch (_) {
      return null;
    }
  }
}
