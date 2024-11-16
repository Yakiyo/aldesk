import 'package:aldesk/util/themes/data.dart';
import 'package:aldesk/util/themes/manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minlog/minlog.dart';
import 'router.dart';

void main() async {
  await Hive.initFlutter();
  if (kDebugMode) {
    updateDefaultLogger(level: Level.debug, writer: StdOutWriter());
  } else {
    // TODO: need to log errors to a file during prod
    updateDefaultLogger(level: Level.warn);
  }
  GetIt.I.registerSingleton<ThemeManager>(ThemeManager());
  await Hive.openBox<String>("db");

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _themeManager = GetIt.I.get<ThemeManager>();

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
      routerConfig: router,
      title: "Aldesk",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}
