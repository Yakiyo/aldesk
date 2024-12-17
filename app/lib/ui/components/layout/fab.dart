import 'package:aldesk/core/misc.dart';
import 'package:aldesk/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Fab extends StatelessWidget {
  const Fab({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(children: [
      FloatingActionButton.small(
        heroTag: null,
        onPressed: () {
          context.go("/home");
        },
        child: const FaIcon(FontAwesomeIcons.house),
      ),
      FloatingActionButton.small(
        heroTag: null,
        onPressed: () {
          context.go("/profile");
        },
        child: const FaIcon(FontAwesomeIcons.solidUser),
      ),
      FloatingActionButton.small(
        heroTag: null,
        onPressed: () {
          context.go("/settings");
        },
        child: const FaIcon(FontAwesomeIcons.gear),
      ),
      // TODO: remove this in prod
      FloatingActionButton.small(
        heroTag: null,
        onPressed: () {
          get<ThemeManager>().toggleTheme();
        },
        child: const FaIcon(FontAwesomeIcons.sun),
      ),
    ]);
  }
}
