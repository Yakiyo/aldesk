import 'package:aldesk/components/navigation_fab.dart';
import 'package:aldesk/util/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const NavigationFAB(),
      body: Container(
        // alignment: Alignment.topLeft,
        color: colorBg,
        padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => const AiringBar(),
        ),
      ),
    );
  }
}

class AiringBar extends StatelessWidget {
  const AiringBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const img =
        "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx98977-CpZkd98fWj32.jpg";
    return const Placeholder();
  }
}
