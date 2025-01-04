import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../themes/themes.dart';

class Fab extends ConsumerWidget {
  const Fab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return FloatingActionButton(
      onPressed: () {
        updateTheme(isLight ? ThemeMode.dark : ThemeMode.light, ref);
      },
      child: Icon(isLight ? Icons.light_mode : Icons.dark_mode),
    );
  }
}
