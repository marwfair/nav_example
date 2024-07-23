import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app_type/app_type.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/customer/customer.dart';
import 'package:nav_example/customer_info/customer_info.dart';
import 'package:nav_example/publisher/publisher.dart';
import 'package:nav_example/publisher_info/publisher_info.dart';

class AppRouter {
  AppRouter({
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
      routes: [
        GoRoute(
          name: 'appType',
          path: '/',
          builder: (context, state) => const AppTypePage(),
          redirect: (context, state) {
            final appType = context.read<AppBloc>().state.appType;

            if (state.matchedLocation.startsWith('/app/')) {
              return null;
            }

            if (appType == AppType.customer) {
              return '/app/customer';
            }

            if (appType == AppType.publisher) {
              return '/app/publisher';
            }

            return null;
          },
        ),
        GoRoute(
          name: 'app',
          path: '/app',
          redirect: (context, state) {
            final appType = context.read<AppBloc>().state.appType;

            if (state.uri.toString().startsWith('/app/')) {
              return null;
            }

            if (appType == AppType.customer) {
              return '/app/customer';
            }

            if (appType == AppType.publisher) {
              return '/app/publisher';
            }

            if (appType == AppType.unknown) {
              return '/';
            }

            return null;
          },
          routes: [
            GoRoute(
              name: 'customer',
              path: 'customer',
              builder: (context, state) => const CustomerPage(),
              redirect: (context, state) {
                final appType = context.read<AppBloc>().state.appType;

                if (appType != AppType.customer) {
                  return '/';
                }

                return null;
              },
              routes: [
                GoRoute(
                  name: 'customerInfo',
                  path: 'customer-info',
                  builder: (context, state) => const CustomerInfoPage(),
                ),
              ],
            ),
            GoRoute(
              name: 'publisher',
              path: 'publisher',
              builder: (context, state) => const PublisherPage(),
              redirect: (context, state) {
                final appType = context.read<AppBloc>().state.appType;

                if (appType != AppType.publisher) {
                  return '/';
                }

                return null;
              },
              routes: [
                GoRoute(
                  name: 'publisherInfo',
                  path: 'publisher-info',
                  builder: (context, state) => const PublisherInfoPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
