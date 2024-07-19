import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.read<AppBloc>().add(const AppSignedIn());
        },
        child: Text('Login'));
  }
}
