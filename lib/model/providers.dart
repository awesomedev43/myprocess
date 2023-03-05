import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

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
    try {
      final file = await getLocalFile(type);

      if (!(await file.exists())) {
        return "";
      }

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return "";
    }
  }
}

class ProcessTemplateList extends StateNotifier<List<Process>> {
  ProcessTemplateList([List<Process>? initialList]) : super(initialList ?? []);

  void add(Process process) {
    state = [
      ...state,
      process,
    ];
    final processList = ProcessList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.processlist);
  }
}

final futureProcessListProvider =
    FutureProvider.family<List<Process>, FileStorageObjectType>(
        (ref, type) async {
  String contents = await PersistantLocalStorage.readContent(type);
  if (contents.isEmpty) {
    return [];
  }
  final processList = ProcessList.fromJson(jsonDecode(contents));
  return processList.processes;
});

final futureProcessInstanceListProvider =
    FutureProvider.family<List<ProcessInstance>, FileStorageObjectType>(
        (ref, type) async {
  String contents = await PersistantLocalStorage.readContent(type);
  if (contents.isEmpty) {
    return [];
  }
  final processList = ProcessInstanceList.fromJson(jsonDecode(contents));
  return processList.processes;
});

final processTemplateListProvider =
    StateNotifierProvider<ProcessTemplateList, List<Process>>((ref) {
  final processes = ref
      .watch(futureProcessListProvider(FileStorageObjectType.processlist))
      .value;
  return ProcessTemplateList(processes);
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
}

final inProgressProcessListProvider =
    StateNotifierProvider<InProgressProcessNotifier, List<ProcessInstance>>(
        (ref) {
  final processes = ref
      .watch(futureProcessInstanceListProvider(
          FileStorageObjectType.inprogresslist))
      .value;
  return InProgressProcessNotifier(processes);
});

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
    final processList = ProcessInstanceList(processes: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(processList.toJson()), FileStorageObjectType.completedlist);
  }
}

final completedProcessListProvider =
    StateNotifierProvider<CompletedProcessNotifier, List<ProcessInstance>>(
        (ref) {
  final processes = ref
      .watch(futureProcessInstanceListProvider(
          FileStorageObjectType.completedlist))
      .value;
  return CompletedProcessNotifier(processes);
});
