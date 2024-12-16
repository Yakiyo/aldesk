import 'package:aldesk/ui/components/layout/app_bar.dart';
import 'package:aldesk/ui/components/layout/fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:go_router/go_router.dart';

class Page extends StatefulWidget {
  final Widget child;
  const Page({super.key, required this.child});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  void _refresh() {
    final location = GoRouter.of(context).state!.fullPath!;
    context.canPop() ? context.pop() : null;
    context.push(location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      floatingActionButtonLocation: ExpandableFab.location,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: Fab(refresh: _refresh),
      body: widget.child,
    );
  }
}
