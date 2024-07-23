import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          // TextButton(
          //   child: Text('Items'),
          //   onPressed: () =>
          //       // ItemsPageRoute().go(context),
          //        //context.goNamed('items'),
          // ),
        ],
      ),
    );
  }
}
