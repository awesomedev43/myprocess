import 'dart:convert';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

import 'model.dart';

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

class SessionTemplateList extends StateNotifier<List<Session>> {
  SessionTemplateList([List<Session>? initialList]) : super(initialList ?? []);

  void add(Session session) {
    final editing = state.any((p) => p.id == session.id);
    state = [
      for (final p in state)
        if (p.id != session.id) p else session,
      if (!editing) session,
    ];
    final sessionList = SessionList(sessions: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(sessionList.toJson()), FileStorageObjectType.sessionlist);
  }

  void remove(Session session) {
    state = [
      for (final p in state)
        if (p.id != session.id) p
    ];
    final sessionList = SessionList(sessions: state);
    PersistantLocalStorage.writeContent(
        jsonEncode(sessionList.toJson()), FileStorageObjectType.sessionlist);
  }
}

final sessionTemplateListProvider =
    StateNotifierProvider<SessionTemplateList, List<Session>>((ref) {
  return SessionTemplateList();
});

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

final inProgressSessionListProvider = Provider<List<SessionInstance>>(
  (ref) {
    final sessionList = ref
        .watch(sessionInstanceListProvider)
        .where((sessionInstance) => sessionInstance.completed == false);
    return sessionList.toList();
  },
);

final completedProgressSessionListNewProvider = Provider<List<SessionInstance>>(
  (ref) {
    final sessionList = ref
        .watch(sessionInstanceListProvider)
        .where((sessionInstance) => sessionInstance.completed == true)
        .sorted((a, b) => -1 * a.end!.compareTo(b.end!));
    return sessionList.toList();
  },
);

final inProgressTaskListProvider = Provider.family<List<TaskInstance>, String>(
  (ref, sessionInstanceId) {
    final sessionInstance = ref
        .watch(sessionInstanceListProvider)
        .firstWhereOrNull((instance) => instance.id == sessionInstanceId);

    return sessionInstance?.taskInstances ?? [];
  },
);
