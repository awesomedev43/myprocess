// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
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
      process: Process.fromJson(json['process'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_ProcessInstanceToJson(_$_ProcessInstance instance) =>
    <String, dynamic>{
      'process': instance.process,
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
