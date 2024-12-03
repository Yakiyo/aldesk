import 'pages/error_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/settings_page.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: "login",
        path: "/login",
        builder: (context, state) => const LoginPage(),
      ),
      // GoRoute(
      //   name: "splash",
      //   path: "/splash",
      //   builder: (context, state) => const SplashPage(),
      // ),
      GoRoute(
        name: "settings",
        path: "/settings",
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}
