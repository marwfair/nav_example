import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/app_router/routes.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Home')),
      body: Column(
        children: [
          TextButton(
            child: Text('Customer Info'),
            onPressed: () {
              context.goNamed('customerInfo');
            },
          ),
          TextButton(
            child: Text('Items'),
            onPressed: () =>
                ItemsPageRoute().go(context), //context.goNamed('items'),
          ),
          TextButton(
            child: Text('Logout'),
            onPressed: () {
              context.read<AppBloc>().add(const AppLoggedOut());
            },
          ),
        ],
      ),
    );
  }
}
