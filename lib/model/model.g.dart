// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterTaskImpl _$$CounterTaskImplFromJson(Map<String, dynamic> json) =>
    _$CounterTaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      increment: json['increment'] as int? ?? 0,
    );

Map<String, dynamic> _$$CounterTaskImplToJson(_$CounterTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'increment': instance.increment,
    };

_$CounterTaskInstanceImpl _$$CounterTaskInstanceImplFromJson(
        Map<String, dynamic> json) =>
    _$CounterTaskInstanceImpl(
      counterTask:
          CounterTask.fromJson(json['counterTask'] as Map<String, dynamic>),
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      increment: json['increment'] as int,
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$CounterTaskInstanceImplToJson(
        _$CounterTaskInstanceImpl instance) =>
    <String, dynamic>{
      'counterTask': instance.counterTask,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'increment': instance.increment,
      'count': instance.count,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      photoVerify: json['photoVerify'] ?? false,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'photoVerify': instance.photoVerify,
    };

_$TaskInstanceImpl _$$TaskInstanceImplFromJson(Map<String, dynamic> json) =>
    _$TaskInstanceImpl(
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool? ?? false,
      photoVerificationPath: json['photoVerificationPath'] as String?,
    );

Map<String, dynamic> _$$TaskInstanceImplToJson(_$TaskInstanceImpl instance) =>
    <String, dynamic>{
      'task': instance.task,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'photoVerificationPath': instance.photoVerificationPath,
    };

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      counters: (json['counters'] as List<dynamic>?)
              ?.map((e) => CounterTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tasks': instance.tasks,
      'counters': instance.counters,
    };

_$SessionInstanceImpl _$$SessionInstanceImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionInstanceImpl(
      id: json['id'] as String,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
      taskInstances: (json['taskInstances'] as List<dynamic>?)
              ?.map((e) => TaskInstance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      counterInstances: (json['counterInstances'] as List<dynamic>?)
              ?.map((e) =>
                  CounterTaskInstance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      completed: json['completed'] as bool? ?? false,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$SessionInstanceImplToJson(
        _$SessionInstanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'taskInstances': instance.taskInstances,
      'counterInstances': instance.counterInstances,
      'completed': instance.completed,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
    };

_$SessionListImpl _$$SessionListImplFromJson(Map<String, dynamic> json) =>
    _$SessionListImpl(
      sessions: (json['sessions'] as List<dynamic>)
          .map((e) => Session.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SessionListImplToJson(_$SessionListImpl instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };

_$SessionInstanceListImpl _$$SessionInstanceListImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionInstanceListImpl(
      sessions: (json['sessions'] as List<dynamic>)
          .map((e) => SessionInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SessionInstanceListImplToJson(
        _$SessionInstanceListImpl instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };
