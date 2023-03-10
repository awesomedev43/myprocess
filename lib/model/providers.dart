import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

import 'model.dart';

enum FileStorageObjectType {
  processlist,
  inprogresslist,
  completedlist,
}

class PersistantLocalStorage {
  static const Map<FileStorageObjectType, String> sFileName = {
    FileStorageObjectType.processlist: ".processList.json",
    FileStorageObjectType.inprogresslist: ".inprogresslist.json",
    FileStorageObjectType.completedlist: ".completedlist.json"
  };

  static Future<String> getLocalPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> getLocalFile(FileStorageObjectType type) async {
    final path = await getLocalPath();
    return File('$path/${sFileName[type]}');
  }

  static Future<File> writeContent(
      String content, FileStorageObjectType type) async {
    final file = await getLocalFile(type);

    // Write the file
    return file.writeAsString(content);
  }

  static Future<String> readContent(FileStorageObjectType type) async {
    final file = await getLocalFile(type);

    if (!(await file.exists())) {
      return "";
    }

    // Read the file
    final contents = await file.readAsString();

    return contents;
  }

  static Future<List<Process>> readProcessList(
      FileStorageObjectType type) async {
    switch (type) {
      case FileStorageObjectType.processlist:
        String contents = await PersistantLocalStorage.readContent(type);
        if (contents.isEmpty) {
          return [];
        }
        final processList = ProcessList.fromJson(jsonDecode(contents));
        return processList.processes;
      case FileStorageObjectType.inprogresslist:
      case FileStorageObjectType.completedlist:
        return [];
    }
  }

  static Future<List<ProcessInstance>> readProcessInstanceList(
      FileStorageObjectType type) async {
    switch (type) {
      case FileStorageObjectType.processlist:
        return [];
      case FileStorageObjectType.inprogresslist:
      case FileStorageObjectType.completedlist:
        String contents = await PersistantLocalStorage.readContent(type);
        if (contents.isEmpty) {
          return [];
        }
        final processList = ProcessInstanceList.fromJson(jsonDecode(contents));
        return processList.processes;
    }
  }
}

class ProcessTemplateList extends StateNotifier<List<Process>> {
  ProcessTemplateList([List<Process>? initialList]) : super(initialList ?? []);

  void add(Process process) {
    final editing = state.any((p) => p.id == process.id);
    state = [
      for (final p in state)
        if (p.id != process.id) p else process,
      if (!editing) process,
    ];
    final processList = ProcessList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.processlist);
  }

  void remove(Process process) {
    state = [
      for (final p in state)
        if (p.id != process.id) p
    ];
    final processList = ProcessList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.processlist);
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
      ProcessInstance(
          process: process,
          start: DateTime.now(),
          taskInstances: process.tasks
              .map((t) => TaskInstance(
                  task: t,
                  id: const Uuid().v1(),
                  title: t.title,
                  description: t.description))
              .toList())
    ];

    final processList = ProcessInstanceList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.inprogresslist);
  }

  void remove(ProcessInstance processInstance) {
    state = [
      for (final instance in state)
        if (instance.process.id != processInstance.process.id) instance
    ];

    final processList = ProcessInstanceList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.inprogresslist);
  }

  void update(String processId, String taskId, bool completed) {
    final processInstance =
        state.firstWhere((element) => element.process.id == processId);
    final newProcessTasksInstances = processInstance.taskInstances.map((t) {
      if (t.task.id == taskId) {
        return TaskInstance(
            task: t.task,
            id: t.id,
            title: t.title,
            description: t.description,
            completed: completed);
      } else {
        return t;
      }
    }).toList();

    state = [
      for (final instance in state)
        if (instance.process.id != processInstance.process.id)
          instance
        else
          ProcessInstance(
              process: processInstance.process,
              taskInstances: newProcessTasksInstances,
              start: processInstance.start,
              end: processInstance.end)
    ];

    final processList = ProcessInstanceList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.inprogresslist);
  }
}

final inProgressProcessListProvider =
    StateNotifierProvider<InProgressProcessNotifier, List<ProcessInstance>>(
        (ref) {
  return InProgressProcessNotifier();
});

final inProgressTaskListProvider = Provider.family<List<TaskInstance>, String>(
  (ref, processId) {
    final process = ref
        .watch(inProgressProcessListProvider)
        .firstWhereOrNull((instance) => instance.process.id == processId);

    return process?.taskInstances ?? [];
  },
);

class CompletedProcessNotifier extends StateNotifier<List<ProcessInstance>> {
  CompletedProcessNotifier([List<ProcessInstance>? initialList])
      : super(initialList ?? []);

  void add(ProcessInstance processInstance) {
    state = [
      ProcessInstance(
          process: processInstance.process,
          start: processInstance.start,
          end: DateTime.now(),
          taskInstances: processInstance.taskInstances),
      ...state,
    ];
    final processList = ProcessInstanceList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.completedlist);
  }
}

final completedProcessListProvider =
    StateNotifierProvider<CompletedProcessNotifier, List<ProcessInstance>>(
        (ref) {
  return CompletedProcessNotifier();
});
