import 'package:task_todo/domain/entity/user_data.dart';

abstract class AuthDataSource {
  Future<UserData> signInUser({
    required String email,
    required String password,
  });

  Future<void> signOutUser();
}
