// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

_$TaskInstanceImpl _$$TaskInstanceImplFromJson(Map<String, dynamic> json) =>
    _$TaskInstanceImpl(
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$TaskInstanceImplToJson(_$TaskInstanceImpl instance) =>
    <String, dynamic>{
      'task': instance.task,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
    };

_$ProcessImpl _$$ProcessImplFromJson(Map<String, dynamic> json) =>
    _$ProcessImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProcessImplToJson(_$ProcessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tasks': instance.tasks,
    };

_$ProcessInstanceImpl _$$ProcessInstanceImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcessInstanceImpl(
      id: json['id'] as String,
      process: Process.fromJson(json['process'] as Map<String, dynamic>),
      taskInstances: (json['taskInstances'] as List<dynamic>?)
              ?.map((e) => TaskInstance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      completed: json['completed'] as bool? ?? false,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$ProcessInstanceImplToJson(
        _$ProcessInstanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'process': instance.process,
      'taskInstances': instance.taskInstances,
      'completed': instance.completed,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };

_$ProcessListImpl _$$ProcessListImplFromJson(Map<String, dynamic> json) =>
    _$ProcessListImpl(
      processes: (json['processes'] as List<dynamic>)
          .map((e) => Process.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProcessListImplToJson(_$ProcessListImpl instance) =>
    <String, dynamic>{
      'processes': instance.processes,
    };

_$ProcessInstanceListImpl _$$ProcessInstanceListImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcessInstanceListImpl(
      processes: (json['processes'] as List<dynamic>)
          .map((e) => ProcessInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProcessInstanceListImplToJson(
        _$ProcessInstanceListImpl instance) =>
    <String, dynamic>{
      'processes': instance.processes,
    };
