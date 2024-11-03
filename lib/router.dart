import 'package:aldesk/routes/404_page.dart';
import 'package:aldesk/routes/home_page.dart';
import 'package:aldesk/routes/login_page.dart';
import 'package:aldesk/routes/splash_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: "login",
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: "splash",
      path: "/splash",
      builder: (context, state) => const SplashPage(),
    )
  ],
  errorBuilder: (context, state) => const Page404(),
);
