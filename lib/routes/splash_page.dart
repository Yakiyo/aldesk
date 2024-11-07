import 'package:aldesk/util/colors.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minlog/minlog.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() {
    Future.delayed(const Duration(seconds: 2), () {
      final isloggedin = _isLoggedIn();
      debug("$isloggedin");
      if (!mounted) return;
      context.go(isloggedin ? "/" : "/login");
    });
  }

  bool _isLoggedIn() {
    final db = Hive.box<String>("db");
    final tokenStr = db.get("token");

    // if we dont have a token entry or an empty entry (shouldnt happen), must login
    if (tokenStr == null || tokenStr.isEmpty) {
      debug("No token found $tokenStr");
      return false;
    }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/aldesk.png",
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
