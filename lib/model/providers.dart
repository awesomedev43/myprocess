import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import 'model.dart';

Future<String> getLocalPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> getLocalFile(String fileName) async {
  final path = await getLocalPath();
  return File('$path/.$fileName');
}

Future<File> writeContent(String content, String fileName) async {
  final file = await getLocalFile(fileName);

  // Write the file
  return file.writeAsString(content);
}

Future<String> readContent(String fileName) async {
  try {
    final file = await getLocalFile(fileName);

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

class ProcessTemplateList extends StateNotifier<List<Process>> {
  ProcessTemplateList([List<Process>? initialList]) : super(initialList ?? []);

  void add(Process process) {
    state = [
      ...state,
      process,
    ];
    final processList = ProcessList(processes: state);
    writeContent(jsonEncode(processList.toJson()), "templates.txt");
  }
}

final futureProcessListProvider = FutureProvider<List<Process>>((ref) async {
  String contents = await readContent("templates.txt");
  if (contents.isEmpty) {
    return [];
  }
  final processList = ProcessList.fromJson(jsonDecode(contents));
  return processList.processes;
});

final processTemplateListProvider =
    StateNotifierProvider<ProcessTemplateList, List<Process>>((ref) {
  final processes = ref.watch(futureProcessListProvider).value;
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
