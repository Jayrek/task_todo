import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/repository/auth_repository.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository authRepository;

  SignInBloc({required this.authRepository}) : super(const SignInState()) {
    on<SignInUser>(_onSignInUser);
  }

  FutureOr<void> _onSignInUser(
    SignInUser event,
    Emitter<SignInState> emit,
  ) async {
    final response = await authRepository.signInUser(
      email: event.email,
      password: event.password,
    );
    debugPrint('response: $response');
  }
}
