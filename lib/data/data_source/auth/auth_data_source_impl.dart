import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_todo/domain/entity/user_data.dart';

import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<UserData> signInUser({
    required String email,
    required String password,
  }) async {
    try {
      final dio = Dio();
      final response = await dio.get(
        'http://127.0.0.1:8000/api/v1/tasks',
        options: Options(headers: {
          'Authorization':
              'Bearer 13|yoD8Khw6ECWfPTz9SPEv2oit9s5IlnAMCfR4cf7U9ec76043'
        }),
      );
      if (response.statusCode == 200) {
        final data = UserData.fromJson(jsonDecode(response.data));
        debugPrint('data: $data');
        return data;
      }
      debugPrint('failed: ${response.statusMessage}');
      throw Exception(response.statusMessage);
    } catch (e) {
      debugPrint('exception: $e');
      throw Exception(e);
    }
  }

  @override
  Future<void> signOutUser() {
    // TODO: implement signOutUser
    throw UnimplementedError();
  }
}
