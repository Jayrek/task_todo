import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_todo/domain/entity/user.dart';
import 'package:flutter/foundation.dart';

part 'user_data.freezed.dart';

part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @Default(User()) User user,
    @Default('') String token,
  }) = _UserData;


  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
