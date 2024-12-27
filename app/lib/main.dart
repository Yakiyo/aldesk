import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import 'core/router.dart';
import 'core/storage.dart';
import 'core/themes.dart';
import 'ui/theme/theme.dart';

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
    final themeMode = ref.watch(themeManagerProvider);
    final router = ref.watch(routerProvider);
    final themes = MaterialTheme(GoogleFonts.robotoTextTheme());
    return MaterialApp.router(
      title: 'Aldesk',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: themes.light(),
      darkTheme: themes.dark(),
    );
  }
}
