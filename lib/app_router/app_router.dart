import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app_router/routes.dart';
import 'package:nav_example/app_type/app_type.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/customer/customer.dart';
import 'package:nav_example/customer_info/customer_info.dart';
import 'package:nav_example/item_details/item_details.dart';
import 'package:nav_example/item_redirect/item_redirect.dart';
import 'package:nav_example/items/items.dart';
import 'package:nav_example/login/login.dart';
import 'package:nav_example/publisher/publisher.dart';
import 'package:nav_example/publisher_info/publisher_info.dart';

class AppRouter {
  AppRouter({
    required GlobalKey<NavigatorState> navigatorKey,
    required AppBloc appBloc,
  }) {
    _goRouter = _routes(
      navigatorKey,
      appBloc,
    );
  }

  late final GoRouter _goRouter;

  GoRouter get routes => _goRouter;

  GoRouter _routes(
    GlobalKey<NavigatorState> navigatorKey,
    AppBloc appBloc,
  ) {
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: LoginPageRoute().location, //'/login',
      debugLogDiagnostics: true,
      routes: $appRoutes,
      redirect: (context, state) {
        print('Redirected to: ${state.matchedLocation}');

        final signedIn = context.read<AppBloc>().state.signedIn;

        if (!signedIn) {
          // return '/login';
          return LoginPageRoute().location;
        }

        final appType = context.read<AppBloc>().state.appType;

        if (appType == AppType.unknown) {
          return '/app-type';
        }

        // if (appType == AppType.customer) {
        //   return '/customer';
        // }

        // if (appType == AppType.publisher) {
        //   return '/publisher';
        // }

        // if (state.matchedLocation.startsWith('/app')) {
        //   return null;
        // }

        // if (signedIn) {
        //   // return '/app-type';
        //   return AppRoute().location;
        // }

        return null;
      },
    );
  }

  // GoRouter _routes(
  //   GlobalKey<NavigatorState> navigatorKey,
  //   AppBloc appBloc,
  // ) {
  //   return GoRouter(
  //     navigatorKey: navigatorKey,
  //     initialLocation: '/login',
  //     debugLogDiagnostics: true,
  //     routes: [
  //       GoRoute(
  //         name: 'login',
  //         path: '/login',
  //         builder: (context, state) => const LoginPage(),
  //       ),
  //       GoRoute(
  //         name: 'appType',
  //         path: '/app-type',
  //         builder: (context, state) => const AppTypePage(),
  //         redirect: (context, state) {
  //           print('APP_TYPE_REDIRECTED to: ${state.matchedLocation}');
  //           final appType = context.read<AppBloc>().state.appType;

  //           if (state.matchedLocation.startsWith('/app/')) {
  //             return null;
  //           }

  //           if (appType == AppType.customer) {
  //             return '/app/customer';
  //           }

  //           if (appType == AppType.publisher) {
  //             return '/app/publisher';
  //           }

  //           return null;
  //         },
  //       ),
  //       GoRoute(
  //         name: 'app',
  //         path: '/app',
  //         redirect: (context, state) {
  //           print('RE-redirected to: ${state.matchedLocation}');
  //           print('RE-redirected to URI: ${state.uri}');
  //           final appType = context.read<AppBloc>().state.appType;

  //           if (state.uri.toString().startsWith('/app/')) {
  //             return null;
  //           }

  //           if (appType == AppType.customer) {
  //             return '/app/customer';
  //           }

  //           if (appType == AppType.publisher) {
  //             return '/app/publisher';
  //           }

  //           if (appType == AppType.unknown) {
  //             return '/app-type';
  //           }

  //           return null;
  //         },
  //         routes: [
  //           GoRoute(
  //             name: 'customer',
  //             path: 'customer',
  //             builder: (context, state) => const CustomerPage(),
  //             redirect: (context, state) {
  //               final appType = context.read<AppBloc>().state.appType;

  //               if (appType != AppType.customer) {
  //                 return '/app-type';
  //               }

  //               return null;
  //             },
  //             routes: [
  //               GoRoute(
  //                 name: 'customerInfo',
  //                 path: 'customer-info',
  //                 builder: (context, state) => const CustomerInfoPage(),
  //               ),
  //               GoRoute(
  //                 name: 'items',
  //                 path: 'items',
  //                 builder: (context, state) => const ItemsPage(),
  //                 routes: [
  //                   GoRoute(
  //                     name: 'itemDetails',
  //                     path: 'details/:id',
  //                     builder: (context, state) {
  //                       final id = state.pathParameters['id'];

  //                       return ItemDetailsPage(id: int.parse(id!));
  //                     },
  //                     redirect: (context, state) {
  //                       final id = state.pathParameters['id'];

  //                       if (int.parse(id!) % 2 == 0) {
  //                         return '/app/customer/items/redirect';
  //                       }

  //                       return null;
  //                     },
  //                   ),
  //                   GoRoute(
  //                     name: 'itemRedirect',
  //                     path: 'redirect',
  //                     builder: (context, state) => const ItemRedirectPage(),
  //                   )
  //                 ],
  //               ),
  //             ],
  //           ),
  //           GoRoute(
  //             name: 'publisher',
  //             path: 'publisher',
  //             builder: (context, state) => const PublisherPage(),
  //             redirect: (context, state) {
  //               final appType = context.read<AppBloc>().state.appType;

  //               if (appType != AppType.publisher) {
  //                 return '/app-type';
  //               }

  //               return null;
  //             },
  //             routes: [
  //               GoRoute(
  //                 name: 'publisherInfo',
  //                 path: 'publisher-info',
  //                 builder: (context, state) => const PublisherInfoPage(),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ],
  //     redirect: (context, state) {
  //       print('Redirected to: ${state.matchedLocation}');

  //       final signedIn = context.read<AppBloc>().state.signedIn;

  //       if (!signedIn) {
  //         return '/login';
  //       }

  //       if (state.matchedLocation.startsWith('/app/')) {
  //         return null;
  //       }

  //       if (signedIn) {
  //         return '/app-type';
  //       }

  //       return null;
  //     },
  //   );
  // }
}
