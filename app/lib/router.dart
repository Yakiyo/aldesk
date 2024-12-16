import 'package:aldesk/ui/components/layout/page.dart';
import 'package:go_router/go_router.dart';
import 'ui/pages/settings_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/error_page.dart';
import 'ui/pages/home_page.dart';

GoRouter router(bool isLoggedIn) {
  return GoRouter(
    initialLocation: isLoggedIn ? "/" : "/login",
    routes: [
      GoRoute(
        name: "root",
        path: "/",
        redirect: (context, state) => "/home",
      ),
      GoRoute(
        name: "home",
        path: "/home",
        builder: (context, state) => const Page(child: HomePage()),
      ),
      GoRoute(
        name: "login",
        path: "/login",
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: "settings",
        path: "/settings",
        builder: (context, state) => const Page(child: SettingsPage()),
      ),
    ],
    errorBuilder: (context, state) => const Page(child: ErrorPage()),
  );
}
