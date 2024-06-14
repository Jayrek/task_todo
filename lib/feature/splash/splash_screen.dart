import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_todo/util/enum/app_route_enum.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
          onPressed: () {
            context.go(AppRouteEnum.signIn.path);
          },
          child: const Text('Go to sign in')),
    ));
  }
}
