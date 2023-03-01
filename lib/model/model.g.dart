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
      name: json['name'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChecklistToJson(_$_Checklist instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tasks': instance.tasks,
    };
