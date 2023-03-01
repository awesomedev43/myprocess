// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      description: json['description'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
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
      processId: json['processId'] as String,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_ProcessInstanceToJson(_$_ProcessInstance instance) =>
    <String, dynamic>{
      'processId': instance.processId,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
