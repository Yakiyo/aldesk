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
  runApp(const MainApp());
}

Future<void> _initialize() async {
  Get.setPrefs(await SharedPreferences.getInstance());
  Get.setThemeManager(ThemeManager());
  Get.setLogger(Logger(
    level: kDebugMode ? Level.debug : Level.warning,
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

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
      routerConfig: router(isLoggedIn()),
      title: "Aldesk",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}
