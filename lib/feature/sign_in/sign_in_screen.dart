import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          context.read<SignInBloc>().add(
                const SignInUser(
                  email: 'jrek1@mailinator.com',
                  password: 'test1234',
                ),
              );
        },
        child: const Text('SignIn'),
      ),
    ));
  }
}
