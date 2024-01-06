import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class CounterTask with _$CounterTask {
  const factory CounterTask({
    required String id,
    required String title,
    required String description,
    @Default(0) int increment,
  }) = _CounterTask;

  factory CounterTask.fromJson(Map<String, Object?> json) =>
      _$CounterTaskFromJson(json);
}

@freezed
class CounterTaskInstance with _$CounterTaskInstance {
  const factory CounterTaskInstance({
    required CounterTask counterTask,
    required String id,
    required String title,
    required String description,
    required int increment,
    @Default(0) int count,
  }) = _CounterTaskInstance;

  factory CounterTaskInstance.fromJson(Map<String, Object?> json) =>
      _$CounterTaskInstanceFromJson(json);
}

@freezed
class Task with _$Task {
  const factory Task(
      {required String id,
      required String title,
      required String description,
      @Default(true) photoVerify}) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}

@freezed
class TaskInstance with _$TaskInstance {
  factory TaskInstance(
      {required Task task,
      required String id,
      required String title,
      required String description,
      @Default(false) bool completed,
      String? photoVerificationPath}) = _TaskInstance;

  factory TaskInstance.fromJson(Map<String, dynamic> json) =>
      _$TaskInstanceFromJson(json);
}

@freezed
class Session with _$Session {
  const factory Session(
      {required String id,
      required String name,
      required List<Task> tasks,
      @Default([]) List<CounterTask> counters}) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class SessionInstance with _$SessionInstance {
  factory SessionInstance(
      {required String id,
      required Session session,
      @Default([]) List<TaskInstance> taskInstances,
      @Default([]) List<CounterTaskInstance> counterInstances,
      @Default(false) bool completed,
      DateTime? start,
      DateTime? end}) = _SessionInstance;

  factory SessionInstance.fromJson(Map<String, dynamic> json) =>
      _$SessionInstanceFromJson(json);
}

@freezed
class SessionList with _$SessionList {
  // Used for JSON serialization of `Session` class
  const factory SessionList({required List<Session> sessions}) = _SessionList;

  factory SessionList.fromJson(Map<String, dynamic> json) =>
      _$SessionListFromJson(json);
}

@freezed
class SessionInstanceList with _$SessionInstanceList {
  // Used for JSON serialization of `SessionInstance` class
  const factory SessionInstanceList({required List<SessionInstance> sessions}) =
      _SessionInstanceList;

  factory SessionInstanceList.fromJson(Map<String, dynamic> json) =>
      _$SessionInstanceListFromJson(json);
}
