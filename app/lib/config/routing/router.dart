import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/auth/data/token.dart';
import '../../ui/auth/login.dart';
import '../../ui/home/home.dart';
import '../../ui/media/media.dart';
import '../../ui/notifications/notifications.dart';
import '../../ui/placeholder/dummy_page.dart';
import '../../ui/settings/settings.dart';
import 'routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final token = ref.watch(tokenProvider);
  final authed = token != null && token.isValid;
  final authId = token?.sub ?? "";
  return GoRouter(initialLocation: authed ? Routes.home : Routes.login, routes: [
    GoRoute(path: Routes.home, redirect: (context, state) => Routes.homeBase),
    GoRoute(path: Routes.homeBase, builder: (context, state) => const HomePage()),
    GoRoute(path: Routes.login, builder: (context, state) => const LoginPage()),
    // profile page just redirects to the user page
    GoRoute(
      path: Routes.profile,
      redirect: (context, state) => Routes.userWithId(int.parse(authId)),
    ),
    GoRoute(
        path: Routes.settings,
        builder: (context, state) => const SettingsPage()),
    GoRoute(
        path: Routes.notifications,
        builder: (context, state) => const NotificationsPage()),
    GoRoute(path: Routes.user, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.search, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.libraryAnime,
        builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.libraryManga,
        builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.media,
        builder: (context, state) =>
            MediaPage(id: int.parse(state.pathParameters['id']!))),
    GoRoute(path: Routes.forum, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.thread, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.activity, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.reviews, builder: (context, state) => const DummyPage()),
    GoRoute(
        path: Routes.review, builder: (context, state) => const DummyPage()),
  ]);
}
