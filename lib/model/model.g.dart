// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

_$_TaskInstance _$$_TaskInstanceFromJson(Map<String, dynamic> json) =>
    _$_TaskInstance(
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TaskInstanceToJson(_$_TaskInstance instance) =>
    <String, dynamic>{
      'task': instance.task,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
    };

_$_Process _$$_ProcessFromJson(Map<String, dynamic> json) => _$_Process(
      id: json['id'] as String,
      name: json['name'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProcessToJson(_$_Process instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tasks': instance.tasks,
    };

_$_ProcessInstance _$$_ProcessInstanceFromJson(Map<String, dynamic> json) =>
    _$_ProcessInstance(
      id: json['id'] as String,
      process: Process.fromJson(json['process'] as Map<String, dynamic>),
      taskInstances: (json['taskInstances'] as List<dynamic>?)
              ?.map((e) => TaskInstance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_ProcessInstanceToJson(_$_ProcessInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'process': instance.process,
      'taskInstances': instance.taskInstances,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };

_$_ProcessList _$$_ProcessListFromJson(Map<String, dynamic> json) =>
    _$_ProcessList(
      processes: (json['processes'] as List<dynamic>)
          .map((e) => Process.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProcessListToJson(_$_ProcessList instance) =>
    <String, dynamic>{
      'processes': instance.processes,
    };

_$_ProcessInstanceList _$$_ProcessInstanceListFromJson(
        Map<String, dynamic> json) =>
    _$_ProcessInstanceList(
      processes: (json['processes'] as List<dynamic>)
          .map((e) => ProcessInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProcessInstanceListToJson(
        _$_ProcessInstanceList instance) =>
    <String, dynamic>{
      'processes': instance.processes,
    };
