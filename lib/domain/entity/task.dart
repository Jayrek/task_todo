import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default(false) bool completed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
}) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
