import '../entity/user_data.dart';

abstract class AuthRepository {
  Future<UserData> signInUser({
    required String email,
    required String password,
  });

  Future<void> signOutUser();
}
