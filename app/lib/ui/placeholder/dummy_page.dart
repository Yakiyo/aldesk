import 'package:aldesk/ui/core/widgets/my_scaffold.dart';
import 'package:aldesk/ui/core/widgets/kaomoji.dart';
import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(body: Center(child: KaomojiLoader()));
  }
}
