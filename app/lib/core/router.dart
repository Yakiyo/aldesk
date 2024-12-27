import 'package:aldesk/core/auth/token.dart';
import 'package:aldesk/ui/pages/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/pages/dummy_page.dart';
import '../ui/pages/home.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final token = ref.watch(tokenProvider);
  final authed = token != null && token.isValid;
  return GoRouter(initialLocation: authed ? "/" : "/login", routes: [
    GoRoute(path: "/", redirect: (context, state) => "/home"),
    GoRoute(path: "/home", builder: (context, state) => const HomePage()),
    GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
    GoRoute(path: "/profile", builder: (context, state) => const DummyPage()),
    GoRoute(path: "/search", builder: (context, state) => const DummyPage()),
    GoRoute(path: "/settings", builder: (context, state) => const DummyPage()),
    GoRoute(
        path: "/library/anime", builder: (context, state) => const DummyPage()),
    GoRoute(
        path: "/library/manga", builder: (context, state) => const DummyPage()),
    GoRoute(
        path: "/notifications", builder: (context, state) => const DummyPage()),
  ]);
}
