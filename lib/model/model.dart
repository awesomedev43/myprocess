import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String description,
    required bool completed,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}

@freezed
class Checklist with _$Checklist {
  const factory Checklist({required String name, required List<Task> tasks}) =
      _Checklist;

  factory Checklist.fromJson(Map<String, dynamic> json) =>
      _$ChecklistFromJson(json);
}
