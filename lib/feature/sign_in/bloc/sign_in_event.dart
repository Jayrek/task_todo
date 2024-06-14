part of 'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();
}

class SignInUser extends SignInEvent {
  final String email;
  final String password;

  const SignInUser({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
