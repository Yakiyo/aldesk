
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth.dart';
import '../../../core/misc.dart';
import '../../../core/theme.dart';

/// Floating action button
class Fab extends StatefulWidget {
  final void Function() refresh;
  const Fab({super.key, required this.refresh});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  final tm = get<ThemeManager>();

  void _toggleTheme() {
    tm.toggleTheme();
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
          child: Icon(tm.isDark ? Icons.light_mode : Icons.dark_mode_outlined)),
      FloatingActionButton.small(
          tooltip: "Logout",
          heroTag: null,
          onPressed: _logout,
          child: const Icon(Icons.logout_outlined)),
    ]);
  }
}
