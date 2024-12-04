import 'package:aldesk/utils/auth.dart';
import 'package:aldesk/utils/singletons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:go_router/go_router.dart';

/// Floating action button
class Fab extends StatefulWidget {
  final void Function() refresh;
  const Fab({super.key, required this.refresh});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  final tm = Get.themeManager();
  bool isDark = false;

  @override
  void initState() {
    isDark = tm.isDark;
    super.initState();
  }

  void _toggleTheme() {
    tm.toggleTheme(tm.isLight);
    setState(() {
      isDark = tm.isDark;
    });
  }

  void _logout() {
    removeToken();
    context.go("/login");
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(distance: 80, fanAngle: 90, children: [
      FloatingActionButton.small(
          tooltip: "Refresh Page",
          heroTag: null,
          onPressed: widget.refresh,
          child: const Icon(Icons.refresh)),
      FloatingActionButton.small(
          tooltip: "Toggle Theme",
          heroTag: null,
          onPressed: _toggleTheme,
          child: Icon(isDark ? Icons.light_mode : Icons.dark_mode_outlined)),
      FloatingActionButton.small(
          tooltip: "Logout",
          heroTag: null,
          onPressed: _logout,
          child: const Icon(Icons.logout_outlined)),
    ]);
  }
}
