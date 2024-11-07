import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minlog/minlog.dart';
import '../util/token.dart';
import '../util/colors.dart';

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
      debug("is logged in: $isloggedin");
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

    return isValidToken(tokenStr);
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
