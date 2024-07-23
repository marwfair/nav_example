// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginPageRoute,
      $customerPageRoute,
      $publisherPageRoute,
      $appTypePageRoute,
    ];

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/',
      name: 'login',
      factory: $LoginPageRouteExtension._fromState,
    );

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) => LoginPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $customerPageRoute => GoRouteData.$route(
      path: '/customer',
      name: 'customer',
      factory: $CustomerPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'customer-info',
          name: 'customerInfo',
          factory: $CustomerInfoPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'items',
          name: 'items',
          factory: $ItemsPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'details/:id',
              name: 'itemDetails',
              factory: $ItemDetailsPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'redirect',
              name: 'itemRedirect',
              factory: $ItemRedirectPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $CustomerPageRouteExtension on CustomerPageRoute {
  static CustomerPageRoute _fromState(GoRouterState state) =>
      CustomerPageRoute();

  String get location => GoRouteData.$location(
        '/customer',
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
        '/customer/customer-info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemsPageRouteExtension on ItemsPageRoute {
  static ItemsPageRoute _fromState(GoRouterState state) => ItemsPageRoute();

  String get location => GoRouteData.$location(
        '/customer/items',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemDetailsPageRouteExtension on ItemDetailsPageRoute {
  static ItemDetailsPageRoute _fromState(GoRouterState state) =>
      ItemDetailsPageRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/customer/items/details/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemRedirectPageRouteExtension on ItemRedirectPageRoute {
  static ItemRedirectPageRoute _fromState(GoRouterState state) =>
      ItemRedirectPageRoute();

  String get location => GoRouteData.$location(
        '/customer/items/redirect',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $publisherPageRoute => GoRouteData.$route(
      path: '/publisher',
      name: 'publisher',
      factory: $PublisherPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'publisher-info',
          name: 'publisherInfo',
          factory: $PublisherInfoPageRouteExtension._fromState,
        ),
      ],
    );

extension $PublisherPageRouteExtension on PublisherPageRoute {
  static PublisherPageRoute _fromState(GoRouterState state) =>
      PublisherPageRoute();

  String get location => GoRouteData.$location(
        '/publisher',
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
        '/publisher/publisher-info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appTypePageRoute => GoRouteData.$route(
      path: '/app-type',
      name: 'appType',
      factory: $AppTypePageRouteExtension._fromState,
    );

extension $AppTypePageRouteExtension on AppTypePageRoute {
  static AppTypePageRoute _fromState(GoRouterState state) => AppTypePageRoute();

  String get location => GoRouteData.$location(
        '/app-type',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
