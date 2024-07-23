import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Publisher Home')),
      body: Column(
        children: [
          TextButton(
            child: const Text('Switch to Customer'),
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppTypeChanged(AppType.customer));
            },
          ),
        ],
      ),
    );
  }
}
