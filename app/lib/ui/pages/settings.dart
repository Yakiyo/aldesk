import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/token.dart';
import '../../core/utils/get.dart';
import '../components/layout/my_scaffold.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MyScaffold(
        body: Center(
      child: TextButton(
          onPressed: () async {
            await pref.remove("token");
            ref.invalidate(tokenProvider);
          },
          child: const Text("Logout")),
    ));
  }
}
