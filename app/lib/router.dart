import 'package:aldesk/components/layout/page.dart';
import 'package:go_router/go_router.dart';
import 'pages/settings_page.dart';
import 'pages/login_page.dart';
import 'pages/error_page.dart';
import 'pages/home_page.dart';

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
        builder: (context, state) => const Page(HomePage()),
      ),
      GoRoute(
        name: "login",
        path: "/login",
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: "settings",
        path: "/settings",
        builder: (context, state) => const Page(SettingsPage()),
      ),
    ],
    errorBuilder: (context, state) => const Page(ErrorPage()),
  );
}
