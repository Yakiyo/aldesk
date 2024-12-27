import 'package:aldesk/core/themes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import 'core/storage.dart';
import 'router.dart';

void main() async {
  await initialize();
  runApp(const ProviderScope(child: MainApp()));
}

Future<void> initialize() async {
  final i = GetIt.instance;
  i.registerSingleton(await initStorage());
  final logDir =
      await getApplicationDocumentsDirectory().then((d) => '${d.path}/logs');
  i.registerLazySingleton(() => Logger(
        level: kDebugMode ? Level.debug : Level.warning,
        output: !kDebugMode
            // in prod, use rotating log files, keep only the last 4
            ? AdvancedFileOutput(path: logDir, maxRotatedFilesCount: 4)
            : null,
      ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tm = ref.watch(themeManagerProvider);
    final (lightTheme, darkTheme) = ref.watch(themeDataProvider);
    return MaterialApp.router(
      title: 'Aldesk',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: tm,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
