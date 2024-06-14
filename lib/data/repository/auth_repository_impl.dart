import 'package:task_todo/data/data_source/auth/auth_data_source.dart';
import 'package:task_todo/domain/entity/user_data.dart';
import 'package:task_todo/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.authDataSource});

  final AuthDataSource authDataSource;

  @override
  Future<UserData> signInUser({
    required String email,
    required String password,
  }) async {
    return await authDataSource.signInUser(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOutUser() {
    // TODO: implement signOutUser
    throw UnimplementedError();
  }
}
