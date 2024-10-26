import 'package:aldesk/routes/404_page.dart';
import 'package:aldesk/routes/home_page.dart';
import 'package:aldesk/routes/login_page.dart';
import 'package:aldesk/routes/splash_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

final _db = Hive.box<String>("db");
final _isLoggedIn = _db.containsKey("token");
// if the user is logged in, start with home page
// otherwise redirect to the /login page

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
  redirect: (context, state) {
    if (state.matchedLocation == '/splash') {
      return null;
    }

    // if user not logged in, move to login screen
    if (!_isLoggedIn) {
      return "/login";
    }
    // if user is logged in but still on the login page, move to home screen
    if (state.matchedLocation == "/login" && _isLoggedIn) {
      return "/";
    }

    // otherwise no redirection needed
    return null;
  },
  errorBuilder: (context, state) => const Page404(),
);
