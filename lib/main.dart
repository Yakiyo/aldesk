import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

  await Hive.openBox<String>("db");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: "Aldesk",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF18212C)),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
          decoration: TextDecoration.none,
        ),
        useMaterial3: true,
      ),
    );
  }
}
