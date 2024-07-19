import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Publisher Home')),
      body: Column(
        children: [
          TextButton(
            child: Text('Publisher Info'),
            onPressed: () {
              context.goNamed('publisherInfo');
            },
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
