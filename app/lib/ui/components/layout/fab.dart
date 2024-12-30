import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Fab extends ConsumerWidget {
  const Fab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return FloatingActionButton(
      // onPressed: () {
      //   ref.read(themeManagerProvider.notifier).toggle();
      // },
      onPressed: null,
      child: Icon(isLight ? Icons.light_mode : Icons.dark_mode),
    );
  }
}
