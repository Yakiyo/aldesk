import 'package:flutter/material.dart';

import '../core/widgets/kaomoji.dart';
import '../core/widgets/my_scaffold.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(body: Center(child: KaomojiLoader()));
  }
}
