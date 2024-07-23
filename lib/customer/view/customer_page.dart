import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Home')),
      body: Column(
        children: [
          TextButton(
            child: const Text('Switch to Publisher'),
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppTypeChanged(AppType.publisher));
            },
          ),
        ],
      ),
    );
  }
}
