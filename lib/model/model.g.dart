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

_$_Checklist _$$_ChecklistFromJson(Map<String, dynamic> json) => _$_Checklist(
      id: json['id'] as String,
      name: json['name'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChecklistToJson(_$_Checklist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tasks': instance.tasks,
    };

_$_ChecklistInstance _$$_ChecklistInstanceFromJson(Map<String, dynamic> json) =>
    _$_ChecklistInstance(
      checklistId: json['checklistId'] as String,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$_ChecklistInstanceToJson(
        _$_ChecklistInstance instance) =>
    <String, dynamic>{
      'checklistId': instance.checklistId,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };
