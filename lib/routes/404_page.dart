// ignore_for_file: file_names
import 'package:aldesk/components/navigation_fab.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1622),
      floatingActionButton: const NavigationFAB(),
      body: Center(
        child: Image.asset("images/404.jpg"),
      ),
    );
  }
}
