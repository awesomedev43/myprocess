import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Task with _$Task {
  const factory Task(
      {required String id,
      required String title,
      required String description}) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}

@freezed
class TaskInstance with _$TaskInstance {
  factory TaskInstance(
      {required Task task,
      required String id,
      required String title,
      required String description,
      @Default(false) bool completed}) = _TaskInstance;

  factory TaskInstance.fromJson(Map<String, dynamic> json) =>
      _$TaskInstanceFromJson(json);
}

@freezed
class Process with _$Process {
  const factory Process(
      {required String id,
      required String name,
      required List<Task> tasks}) = _Process;

  factory Process.fromJson(Map<String, dynamic> json) =>
      _$ProcessFromJson(json);
}

@freezed
class ProcessInstance with _$ProcessInstance {
  factory ProcessInstance(
      {required Process process,
      @Default([]) List<TaskInstance> taskInstances,
      DateTime? start,
      DateTime? end}) = _ProcessInstance;

  factory ProcessInstance.fromJson(Map<String, dynamic> json) =>
      _$ProcessInstanceFromJson(json);
}

@freezed
class ProcessList with _$ProcessList {
  // Used for JSON serialization of `Process` class
  const factory ProcessList({required List<Process> processes}) = _ProcessList;

  factory ProcessList.fromJson(Map<String, dynamic> json) =>
      _$ProcessListFromJson(json);
}

@freezed
class ProcessInstanceList with _$ProcessInstanceList {
  // Used for JSON serialization of `ProcessInstance` class
  const factory ProcessInstanceList(
      {required List<ProcessInstance> processes}) = _ProcessInstanceList;

  factory ProcessInstanceList.fromJson(Map<String, dynamic> json) =>
      _$ProcessInstanceListFromJson(json);
}
