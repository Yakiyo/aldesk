import 'package:aldesk/ui/components/layout/fab.dart';
import 'package:flutter/material.dart';

import 'side_nav_bar.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  const MyScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const Fab(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
  }
}
