import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app_router/routes.dart';

class TypeSafeRouter {
  TypeSafeRouter({
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    _goRouter = _routes(
      navigatorKey,
    );
  }

  late final GoRouter _goRouter;

  GoRouter get routes => _goRouter;

  GoRouter _routes(
    GlobalKey<NavigatorState> navigatorKey,
  ) {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: $appRoutes,
    );
  }
}
