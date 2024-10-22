import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'router.dart';

void main() async {
  await Hive.initFlutter();

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
        useMaterial3: true,
      ),
    );
  }
}
