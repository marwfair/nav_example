import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/app_type/app_type.dart';
import 'package:nav_example/customer/customer.dart';
import 'package:nav_example/customer_info/customer_info.dart';
import 'package:nav_example/item_details/item_details.dart';
import 'package:nav_example/item_redirect/item_redirect.dart';
import 'package:nav_example/items/items.dart';
import 'package:nav_example/login/login.dart';
import 'package:nav_example/publisher/publisher.dart';
import 'package:nav_example/publisher_info/publisher_info.dart';

part 'routes.g.dart';

@TypedGoRoute<LoginPageRoute>(
  name: 'login',
  path: '/',
  // routes: [
  // TypedGoRoute<AppRoute>(
  //   name: 'app',
  //   path: 'app',
  //   routes: [
  //     TypedGoRoute<CustomerPageRoute>(
  //       name: 'customer',
  //       path: 'customer',
  //       routes: [
  //         TypedGoRoute<CustomerInfoPageRoute>(
  //           name: 'customerInfo',
  //           path: 'customer-info',
  //         ),
  //         TypedGoRoute<ItemsPageRoute>(
  //           name: 'items',
  //           path: 'items',
  //           routes: [
  //             TypedGoRoute<ItemDetailsPageRoute>(
  //               name: 'itemDetails',
  //               path: 'details/:id',
  //             ),
  //             TypedGoRoute<ItemRedirectPageRoute>(
  //               name: 'itemRedirect',
  //               path: 'redirect',
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //     TypedGoRoute<PublisherPageRoute>(
  //       name: 'publisher',
  //       path: 'publisher',
  //       routes: [
  //         TypedGoRoute<PublisherInfoPageRoute>(
  //           name: 'publisherInfo',
  //           path: 'publisher-info',
  //         ),
  //       ],
  //     ),
  //   ],
  // ),
  // TypedGoRoute<CustomerPageRoute>(
  //   name: 'customer',
  //   path: 'customer',
  //   routes: [
  //     TypedGoRoute<CustomerInfoPageRoute>(
  //       name: 'customerInfo',
  //       path: 'customer-info',
  //     ),
  //     TypedGoRoute<ItemsPageRoute>(
  //       name: 'items',
  //       path: 'items',
  //       routes: [
  //         TypedGoRoute<ItemDetailsPageRoute>(
  //           name: 'itemDetails',
  //           path: 'details/:id',
  //         ),
  //         TypedGoRoute<ItemRedirectPageRoute>(
  //           name: 'itemRedirect',
  //           path: 'redirect',
  //         ),
  //       ],
  //     ),
  //   ],
  // ),
  // TypedGoRoute<PublisherPageRoute>(
  //   name: 'publisher',
  //   path: 'publisher',
  //   routes: [
  //     TypedGoRoute<PublisherInfoPageRoute>(
  //       name: 'publisherInfo',
  //       path: 'publisher-info',
  //     ),
  //   ],
  // ),
  // ],
)
// @immutable
class LoginPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const LoginPage();
  }
}

@TypedGoRoute<CustomerPageRoute>(
  name: 'customer',
  path: '/customer',
  routes: [
    TypedGoRoute<CustomerInfoPageRoute>(
      name: 'customerInfo',
      path: 'customer-info',
    ),
    TypedGoRoute<ItemsPageRoute>(
      name: 'items',
      path: 'items',
      routes: [
        TypedGoRoute<ItemDetailsPageRoute>(
          name: 'itemDetails',
          path: 'details/:id',
        ),
        TypedGoRoute<ItemRedirectPageRoute>(
          name: 'itemRedirect',
          path: 'redirect',
        ),
      ],
    ),
  ],
)
// @immutable
class CustomerPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const CustomerPage();
  }

  // @override
  // String? redirect(context, state) {
  //   final appType = context.read<AppBloc>().state.appType;

  //   if (appType != AppType.customer) {
  //     // return '/app-type';
  //     return AppTypePageRoute().location;
  //   }

  //   return null;
  // }
}

@TypedGoRoute<PublisherPageRoute>(
  name: 'publisher',
  path: '/publisher',
  routes: [
    TypedGoRoute<PublisherInfoPageRoute>(
      name: 'publisherInfo',
      path: 'publisher-info',
    ),
  ],
)
// @immutable
class PublisherPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const PublisherPage();
  }

  // @override
  // String? redirect(context, state) {
  //   final appType = context.read<AppBloc>().state.appType;

  //   if (appType != AppType.publisher) {
  //     // return '/app-type';
  //     return AppTypePageRoute().location;
  //   }

  //   return null;
  // }
}

@TypedGoRoute<AppTypePageRoute>(
  name: 'appType',
  path: '/app-type',
)
@immutable
class AppTypePageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const AppTypePage();
  }

  @override
  String? redirect(context, state) {
    print('APP_TYPE_REDIRECTED to: ${state.matchedLocation}');
    final appType = context.read<AppBloc>().state.appType;

    // if (state.matchedLocation.startsWith('/app/')) {
    //   return null;
    // }

    if (appType == AppType.customer) {
      return '/customer';
      // return CustomerPageRoute().location;
    }

    if (appType == AppType.publisher) {
      return '/publisher';
      // return PublisherPageRoute().location;
    }

    return null;
  }
}

// @TypedGoRoute<AppRoute>(
//   name: 'app',
//   path: '/app',
//   routes: [
//     TypedGoRoute<CustomerPageRoute>(
//       name: 'customer',
//       path: 'customer',
//       routes: [
//         TypedGoRoute<CustomerInfoPageRoute>(
//           name: 'customerInfo',
//           path: 'customer-info',
//         ),
//         TypedGoRoute<ItemsPageRoute>(
//           name: 'items',
//           path: 'items',
//           routes: [
//             TypedGoRoute<ItemDetailsPageRoute>(
//               name: 'itemDetails',
//               path: 'details/:id',
//             ),
//             TypedGoRoute<ItemRedirectPageRoute>(
//               name: 'itemRedirect',
//               path: 'redirect',
//             ),
//           ],
//         ),
//       ],
//     ),
//     TypedGoRoute<PublisherPageRoute>(
//       name: 'publisher',
//       path: 'publisher',
//       routes: [
//         TypedGoRoute<PublisherInfoPageRoute>(
//           name: 'publisherInfo',
//           path: 'publisher-info',
//         ),
//       ],
//     ),
//   ],
// )
// @immutable
// class AppRoute extends GoRouteData {
//   // @override
//   // Widget build(context, state) {
//   //   return const Text('App Route');
//   // }

//   @override
//   FutureOr<String?> redirect(context, state) {
//     print('REDIRECT CALLED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
//     print('RE-redirected to: ${state.matchedLocation}');
//     print('RE-redirected to URI: ${state.uri}');
//     final appType = context.read<AppBloc>().state.appType;

//     if (state.uri.toString().startsWith('/app/')) {
//       return null;
//     }

//     if (appType == AppType.customer) {
//       // return '/app/customer';
//       return CustomerPageRoute().location;
//     }

//     if (appType == AppType.publisher) {
//       // return '/app/publisher';
//       return PublisherPageRoute().location;
//     }

//     if (appType == AppType.unknown) {
//       // return '/app-type';
//       return AppTypePageRoute().location;
//     }

//     return null;
//   }
// }

// // @immutable
// class PublisherPageRoute extends GoRouteData {
//   @override
//   Widget build(context, state) {
//     return const PublisherPage();
//   }

//   // @override
//   // String? redirect(context, state) {
//   //   final appType = context.read<AppBloc>().state.appType;

//   //   if (appType != AppType.publisher) {
//   //     // return '/app-type';
//   //     return AppTypePageRoute().location;
//   //   }

//   //   return null;
//   // }
// }

// @immutable
class PublisherInfoPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const PublisherInfoPage();
  }
}

// @immutable
class CustomerInfoPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const CustomerInfoPage();
  }
}

// @immutable
class ItemsPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const ItemsPage();
  }
}

// @immutable
class ItemDetailsPageRoute extends GoRouteData {
  const ItemDetailsPageRoute({required this.id});

  final int id;

  @override
  Widget build(context, state) {
    return ItemDetailsPage(id: id);
  }

  @override
  String? redirect(context, state) {
    final id = state.pathParameters['id'];

    if (int.parse(id!) % 2 == 0) {
      return '/customer/items/redirect';
      // return ItemRedirectPageRoute().location;
    }

    return null;
  }
}

// @immutable
class ItemRedirectPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const ItemRedirectPage();
  }
}
