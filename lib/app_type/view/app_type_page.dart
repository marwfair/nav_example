import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class AppTypePage extends StatelessWidget {
  const AppTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text('Select an app type:'),
        TextButton(
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppTypeChanged(AppType.customer));
            },
            child: Text('Customer')),
        TextButton(
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppTypeChanged(AppType.publisher));
            },
            child: Text('Publisher')),
      ]),
    );
  }
}
