import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model.dart';

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

class InProgressProcessNotifier extends StateNotifier<List<ProcessInstance>> {
  InProgressProcessNotifier([List<ProcessInstance>? initialList])
      : super(initialList ?? []);

  void add(Process process) {
    final alreadyInstantiated =
        state.any((element) => element.process.id == process.id);

    if (alreadyInstantiated) {
      return;
    }

    state = [
      ...state,
      ProcessInstance(process: process, start: DateTime.now())
    ];
  }

  void remove(ProcessInstance processInstance) {
    state = [
      for (final instance in state)
        if (instance.process.id != processInstance.process.id) instance
    ];
  }
}

final inProgressProcessListProvider =
    StateNotifierProvider<InProgressProcessNotifier, List<ProcessInstance>>(
        (ref) => InProgressProcessNotifier());

class CompletedProcessNotifier extends StateNotifier<List<ProcessInstance>> {
  CompletedProcessNotifier([List<ProcessInstance>? initialList])
      : super(initialList ?? []);

  void add(ProcessInstance processInstance) {
    state = [
      ProcessInstance(
          process: processInstance.process,
          start: processInstance.start,
          end: DateTime.now()),
      ...state,
    ];
  }
}

final completedProcessListProvider =
    StateNotifierProvider<CompletedProcessNotifier, List<ProcessInstance>>(
        (ref) => CompletedProcessNotifier());
