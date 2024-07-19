import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class PublisherInfoPage extends StatelessWidget {
  const PublisherInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Publisher Info')),
      body: Column(
        children: [
          Text('Some info'),
          TextButton(
            child: Text('Switch to Customer'),
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
