// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appTypePageRoute,
      $appRoute,
    ];

RouteBase get $appTypePageRoute => GoRouteData.$route(
      path: '/',
      name: 'appType',
      factory: $AppTypePageRouteExtension._fromState,
    );

extension $AppTypePageRouteExtension on AppTypePageRoute {
  static AppTypePageRoute _fromState(GoRouterState state) => AppTypePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appRoute => GoRouteData.$route(
      path: '/app',
      name: 'app',
      factory: $AppRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'customer',
          name: 'customer',
          factory: $CustomerPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'customer-info',
              name: 'customerInfo',
              factory: $CustomerInfoPageRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'publisher',
          name: 'publisher',
          factory: $PublisherPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'publisher-info',
              name: 'publisherInfo',
              factory: $PublisherInfoPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppRouteExtension on AppRoute {
  static AppRoute _fromState(GoRouterState state) => AppRoute();

  String get location => GoRouteData.$location(
        '/app',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CustomerPageRouteExtension on CustomerPageRoute {
  static CustomerPageRoute _fromState(GoRouterState state) =>
      CustomerPageRoute();

  String get location => GoRouteData.$location(
        '/app/customer',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CustomerInfoPageRouteExtension on CustomerInfoPageRoute {
  static CustomerInfoPageRoute _fromState(GoRouterState state) =>
      CustomerInfoPageRoute();

  String get location => GoRouteData.$location(
        '/app/customer/customer-info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PublisherPageRouteExtension on PublisherPageRoute {
  static PublisherPageRoute _fromState(GoRouterState state) =>
      PublisherPageRoute();

  String get location => GoRouteData.$location(
        '/app/publisher',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PublisherInfoPageRouteExtension on PublisherInfoPageRoute {
  static PublisherInfoPageRoute _fromState(GoRouterState state) =>
      PublisherInfoPageRoute();

  String get location => GoRouteData.$location(
        '/app/publisher/publisher-info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
