import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import 'core/auth.dart';
import 'core/misc.dart';
import 'core/theme.dart';
import 'router.dart';

void main() async {
  await _initialize();
  final routes = router(isLoggedIn());
  runApp(MainApp(routes: routes));
}

Future<void> _initialize() async {
  final i = GetIt.instance;
  i.registerSingleton(await Storage.create());
  i.registerSingleton(ThemeManager());
  // TODO: pipe logs to a file in production
  i.registerLazySingleton(() => Logger(
        level: kDebugMode ? Level.debug : Level.warning,
      ));
}

class MainApp extends StatelessWidget {
  final GoRouter routes;
  const MainApp({super.key, required this.routes});

  @override
  Widget build(BuildContext context) {
    final themeManager = get<ThemeManager>();
    return ValueListenableBuilder(
      valueListenable: themeManager.modeNotifier,
      builder: (context, value, child) {
        return MaterialApp.router(
          routerConfig: routes,
          title: "Aldesk",
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          darkTheme: Themes.dark,
          themeMode: value,
        );
      },
    );
  }
}
