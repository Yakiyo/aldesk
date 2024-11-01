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
        color: colorBg,
      ),
    );
  }
}
