import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Home')),
      body: Column(
        children: [
          TextButton(
            child: const Text('Customer Info'),
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
