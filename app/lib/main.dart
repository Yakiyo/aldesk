import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/routing/router.dart';
import 'ui/core/themes/themes.dart';

void main() async {
  await initialize();
  runApp(const ProviderScope(child: MainApp()));
}

Future<void> initialize() async {
  final i = GetIt.instance;
  i.registerSingleton(await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions()));
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
    final mode = ref.watch(themeModeProvider);
    final router = ref.watch(routerProvider);
    final (light, dark) = ref.watch(themeDataProvider);
    return MaterialApp.router(
      title: 'Aldesk',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: mode,
      theme: light,
      darkTheme: dark,
      scrollBehavior: const MyScrollBehaviour(),
    );
  }
}

/// Custom scroll behavior to allow for mouse based scrolling
class MyScrollBehaviour extends MaterialScrollBehavior {
  const MyScrollBehaviour();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // PointerDeviceKind.stylus,
      };
}
