import 'package:go_router/go_router.dart';

import 'ui/pages/dummy_page.dart';
import 'ui/pages/home.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    redirect: (context, state) {
      return "/home";
    },
  ),
  GoRoute(path: "/home", builder: (context, state) => const HomePage()),
  GoRoute(path: "/profile", builder: (context, state) => const DummyPage()),
  GoRoute(path: "/search", builder: (context, state) => const DummyPage()),
  GoRoute(path: "/settings", builder: (context, state) => const DummyPage()),
  GoRoute(path: "/library/anime", builder: (context, state) => const DummyPage()),
  GoRoute(path: "/library/manga", builder: (context, state) => const DummyPage()),
  GoRoute(path: "/notifications", builder: (context, state) => const DummyPage()),
]);
