import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/app_type/app_type.dart';
import 'package:nav_example/customer/customer.dart';
import 'package:nav_example/publisher/publisher.dart';

part 'routes.g.dart';

@TypedGoRoute<AppTypePageRoute>(
  name: 'appType',
  path: '/',
)
@immutable
class AppTypePageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const AppTypePage();
  }

  @override
  String? redirect(context, state) {
    final appType = context.read<AppBloc>().state.appType;

    if (state.matchedLocation.startsWith('/app/')) {
      return null;
    }

    if (appType == AppType.customer) {
      // return '/app/customer';
      return CustomerPageRoute().location;
    }

    if (appType == AppType.publisher) {
      // return '/app/publisher';
      return PublisherPageRoute().location;
    }

    return null;
  }
}

@TypedGoRoute<AppRoute>(
  name: 'app',
  path: '/app',
)
@immutable
class AppRoute extends GoRouteData {
  @override
  String? redirect(context, state) {
    final appType = context.read<AppBloc>().state.appType;

    if (state.uri.toString().startsWith('/app/')) {
      return null;
    }

    if (appType == AppType.customer) {
      // return '/app/customer';
      return CustomerPageRoute().location;
    }

    if (appType == AppType.publisher) {
      // return '/app/publisher';
      return PublisherPageRoute().location;
    }

    if (appType == AppType.unknown) {
      // return '/';
      return AppTypePageRoute().location;
    }

    return null;
  }
}

@TypedGoRoute<CustomerPageRoute>(
  name: 'customer',
  path: '/app/customer',
)
@immutable
class CustomerPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const CustomerPage();
  }

  @override
  String? redirect(context, state) {
    final appType = context.read<AppBloc>().state.appType;

    if (appType != AppType.customer) {
      // return '/';
      return AppTypePageRoute().location;
    }

    return null;
  }
}

@TypedGoRoute<PublisherPageRoute>(
  name: 'publisher',
  path: '/app/publisher',
)
@immutable
class PublisherPageRoute extends GoRouteData {
  @override
  Widget build(context, state) {
    return const PublisherPage();
  }

  @override
  String? redirect(context, state) {
    final appType = context.read<AppBloc>().state.appType;

    if (appType != AppType.publisher) {
      // return '/';
      return AppTypePageRoute().location;
    }

    return null;
  }
}
