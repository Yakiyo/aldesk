import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'utils/singletons.dart';
import 'utils/auth.dart';
import 'router.dart';
import 'theme.dart';

void main() async {
  await _initialize();
  final routes = router(isLoggedIn());
  runApp(MainApp(routes: routes,));
}

Future<void> _initialize() async {
  Get.setPrefs(await SharedPreferences.getInstance());
  Get.setThemeManager(ThemeManager());
  Get.setLogger(Logger(
    level: kDebugMode ? Level.debug : Level.warning,
  ));
}

class MainApp extends StatefulWidget {
  final GoRouter routes;
  const MainApp({super.key, required this.routes});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _themeManager = Get.themeManager();
  @override
  void initState() {
    _themeManager.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _themeManager.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    if (mounted) setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: widget.routes,
      title: "Aldesk",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}
