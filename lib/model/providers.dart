import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'model.dart';

part 'providers.g.dart';

enum FileStorageObjectType {
  sessionlist,
  sessioninstancelist,
}

class PersistantLocalStorage {
  static const Map<FileStorageObjectType, String> sFileName = {
    FileStorageObjectType.sessionlist: ".sessionList.json",
    FileStorageObjectType.sessioninstancelist: ".sessioninstancelist.json",
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

  static Future<List<Session>> readsessionList(
      FileStorageObjectType type) async {
    switch (type) {
      case FileStorageObjectType.sessionlist:
        String contents = await PersistantLocalStorage.readContent(type);
        if (contents.isEmpty) {
          return [];
        }
        final sessionList = SessionList.fromJson(jsonDecode(contents));
        return sessionList.sessions;
      case FileStorageObjectType.sessioninstancelist:
        return [];
    }
  }

  static Future<List<SessionInstance>> readsessionInstanceList(
      FileStorageObjectType type) async {
    switch (type) {
      case FileStorageObjectType.sessionlist:
        return [];
      case FileStorageObjectType.sessioninstancelist:
        String contents = await PersistantLocalStorage.readContent(type);
        if (contents.isEmpty) {
          return [];
        }
        final sessionList = SessionInstanceList.fromJson(jsonDecode(contents));
        return sessionList.sessions;
    }
  }
}

@riverpod
class SessionTemplateListNotifier extends _$SessionTemplateListNotifier {
  @override
  Future<List<Session>> build() async {
    return await PersistantLocalStorage.readsessionList(
        FileStorageObjectType.sessionlist);
  }

  Future<void> add(Session session) async {
    final previousState = await future;

    final editing = previousState.any((p) => p.id == session.id);
    state = AsyncData([
      for (final p in previousState)
        if (p.id != session.id) p else session,
      if (!editing) session,
    ]);
    final sessionList = SessionList(sessions: state.value!);
    PersistantLocalStorage.writeContent(
        jsonEncode(sessionList.toJson()), FileStorageObjectType.sessionlist);
  }

  Future<void> remove(Session session) async {
    final previousState = await future;

    state = AsyncData([
      for (final p in previousState)
        if (p.id != session.id) p
    ]);

    final sessionList = SessionList(sessions: state.value!);
    PersistantLocalStorage.writeContent(
        jsonEncode(sessionList.toJson()), FileStorageObjectType.sessionlist);
  }
}

class SessionInstanceNotifier extends StateNotifier<List<SessionInstance>> {
  SessionInstanceNotifier([List<SessionInstance>? initialList])
      : super(initialList ?? []);

  void add(Session session) {
    final alreadyInstantiated = state.any((element) =>
        element.session.id == session.id && element.completed == false);

    if (alreadyInstantiated) {
      return;
    }

    state = [
      ...state,
      SessionInstance(
          id: const Uuid().v1(),
          session: session,
          start: DateTime.now(),
          completed: false,
          taskInstances: session.tasks
              .map((t) => TaskInstance(
                  task: t,
                  id: const Uuid().v1(),
                  title: t.title,
                  completed: false,
                  description: t.description))
              .toList())
    ];

    final sessionList = SessionInstanceList(sessions: state);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  void remove(SessionInstance sessionInstance) {
    state = [
      for (final instance in state)
        if (instance.id != sessionInstance.id) instance
    ];

    final sessionList = SessionInstanceList(sessions: state);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  void completed(SessionInstance sessionInstance) {
    state = [
      for (final instance in state)
        if (instance.id != sessionInstance.id)
          instance
        else
          instance.copyWith(completed: true, end: DateTime.now())
    ];

    final sessionList = SessionInstanceList(sessions: state);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  void update(String sessionInstanceId, String taskId, bool completed) {
    final sessionInstance =
        state.firstWhere((element) => element.id == sessionInstanceId);
    final newsessionTasksInstances = sessionInstance.taskInstances.map((t) {
      if (t.task.id == taskId) {
        return t.copyWith(completed: completed);
      } else {
        return t;
      }
    }).toList();

    state = [
      for (final instance in state)
        if (instance.id != sessionInstance.id)
          instance
        else
          SessionInstance(
              id: const Uuid().v1(),
              session: sessionInstance.session,
              taskInstances: newsessionTasksInstances,
              start: sessionInstance.start,
              end: sessionInstance.end)
    ];

    final sessionList = SessionInstanceList(sessions: state);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }
}

final sessionInstanceListProvider =
    StateNotifierProvider<SessionInstanceNotifier, List<SessionInstance>>(
        (ref) {
  return SessionInstanceNotifier();
});

@riverpod
class SessionInstanceListNotifier extends _$SessionInstanceListNotifier {
  @override
  Future<List<SessionInstance>> build() async {
    return await PersistantLocalStorage.readsessionInstanceList(
        FileStorageObjectType.sessioninstancelist);
  }

  Future<void> add(Session session) async {
    final previousState = await future;

    final alreadyInstantiated = previousState.any((element) =>
        element.session.id == session.id && element.completed == false);

    if (alreadyInstantiated) {
      return;
    }

    state = AsyncData([
      ...previousState,
      SessionInstance(
          id: const Uuid().v1(),
          session: session,
          start: DateTime.now(),
          completed: false,
          taskInstances: session.tasks
              .map((t) => TaskInstance(
                  task: t,
                  id: const Uuid().v1(),
                  title: t.title,
                  completed: false,
                  description: t.description))
              .toList())
    ]);

    final sessionList = SessionInstanceList(sessions: state.value!);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  Future<void> remove(SessionInstance sessionInstance) async {
    final previousState = await future;

    state = AsyncData([
      for (final instance in previousState)
        if (instance.id != sessionInstance.id) instance
    ]);

    final sessionList = SessionInstanceList(sessions: state.value!);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  Future<void> completed(SessionInstance sessionInstance) async {
    final previousState = await future;

    state = AsyncData([
      for (final instance in previousState)
        if (instance.id != sessionInstance.id)
          instance
        else
          instance.copyWith(completed: true, end: DateTime.now())
    ]);

    final sessionList = SessionInstanceList(sessions: state.value!);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }

  Future<void> updateTask(
      String sessionInstanceId, String taskId, bool completed) async {
    final previousState = await future;

    final sessionInstance =
        previousState.firstWhere((element) => element.id == sessionInstanceId);
    final newsessionTasksInstances = sessionInstance.taskInstances.map((t) {
      if (t.task.id == taskId) {
        return t.copyWith(completed: completed);
      } else {
        return t;
      }
    }).toList();

    state = AsyncData([
      for (final instance in previousState)
        if (instance.id != sessionInstance.id)
          instance
        else
          SessionInstance(
              id: const Uuid().v1(),
              session: sessionInstance.session,
              taskInstances: newsessionTasksInstances,
              start: sessionInstance.start,
              end: sessionInstance.end)
    ]);

    final sessionList = SessionInstanceList(sessions: state.value!);
    PersistantLocalStorage.writeContent(jsonEncode(sessionList.toJson()),
        FileStorageObjectType.sessioninstancelist);
  }
}

@riverpod
Future<List<SessionInstance>> getInProgressSessionList(
    GetInProgressSessionListRef ref) async {
  final sessionList =
      (ref.watch(sessionInstanceListNotifierProvider).value ?? [])
          .where((sessionInstance) => sessionInstance.completed == false);

  return sessionList.toList();
}

@riverpod
Future<List<SessionInstance>> getCompletedSessionList(
    GetCompletedSessionListRef ref) async {
  final sessionList =
      (ref.watch(sessionInstanceListNotifierProvider).value ?? [])
          .where((sessionInstance) => sessionInstance.completed == true)
          .sorted((a, b) => -1 * a.end!.compareTo(b.end!));

  return sessionList.toList();
}

@riverpod
Future<List<TaskInstance>> getInProgressTaskList(
    GetInProgressTaskListRef ref, String sessionInstanceId) async {
  final sessionInstance =
      (ref.watch(sessionInstanceListNotifierProvider).value ?? [])
          .firstWhereOrNull((instance) => instance.id == sessionInstanceId);

  return sessionInstance?.taskInstances ?? [];
}
