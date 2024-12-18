import 'package:aldesk/ui/pages/login_page.dart';
import 'package:go_router/go_router.dart';

import 'ui/pages/home_page.dart';
import 'ui/pages/settings_page.dart';

GoRouter router(bool isLoggedIn) {
  return GoRouter(
    initialLocation: isLoggedIn ? "/" : "/login",
    routes: [
      GoRoute(name: "/", path: "/", redirect: (context, state) => "/home"),
      GoRoute(
        name: "home",
        path: "/home",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: "settings",
        path: "/settings",
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        name: "login",
        path: "/login",
        builder: (context, state) => const LoginPage(),
      )
    ],
  );
}
