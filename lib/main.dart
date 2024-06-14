import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo/data/repository/auth_repository_impl.dart';

import 'app_route_config.dart';
import 'data/data_source/auth/auth_data_source_impl.dart';
import 'feature/sign_in/bloc/sign_in_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthDataSourceImpl(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepositoryImpl(
              authDataSource:
                  RepositoryProvider.of<AuthDataSourceImpl>(context)),
        ),
      ],
      child: BlocProvider(
        create: (context) => SignInBloc(
            authRepository: RepositoryProvider.of<AuthRepositoryImpl>(context)),
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: AppRouteConfig.routeConfig,
        ),
      ),
    );
  }
}
