import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Task with _$Task {
  const factory Task({required String description}) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
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
      {required String processId,
      DateTime? start,
      DateTime? end}) = _ProcessInstance;

  factory ProcessInstance.fromJson(Map<String, dynamic> json) =>
      _$ProcessInstanceFromJson(json);
}

class ProcessTemplateList extends StateNotifier<List<Process>> {
  ProcessTemplateList([List<Process>? initialList]) : super(initialList ?? []);

  void add(Process process) {
    state = [
      ...state,
      process,
    ];
  }
}

final processTemplateListProvider =
    StateNotifierProvider<ProcessTemplateList, List<Process>>((ref) {
  return ProcessTemplateList();
});
