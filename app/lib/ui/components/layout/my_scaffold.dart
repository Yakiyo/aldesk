import 'package:aldesk/ui/components/layout/fab.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';
import 'side_nav_bar.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  const MyScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final smallscreen = constraints.maxWidth < 800;

      return Scaffold(
        floatingActionButton: const Fab(),
        bottomNavigationBar: smallscreen ? const BottomNavBar() : null,
        body: Row(
          children: [
            if (!smallscreen)
              const Expanded(
                  flex: 1,
                  child: Material(
                    elevation: 10,
                    child: SideNavBar(),
                  )),
            Expanded(
              flex: 5,
              child: body,
            ),
          ],
        ),
      );
    });
  }
}
