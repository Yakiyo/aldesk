import 'package:aldesk/ui/components/layout/fab.dart';
import 'package:flutter/material.dart';

import 'side_nav_bar.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  const MyScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: remove the fab in prod
      floatingActionButton: const Fab(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 200,
            child: Material(
              elevation: 10,
              child: SideNavBar(),
            ),
          ),
          Expanded(child: body),
        ],
      ),
    );
  }
}
