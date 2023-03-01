// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({String description, bool completed});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, bool completed});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$_Task(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task with DiagnosticableTreeMixin implements _Task {
  const _$_Task({required this.description, required this.completed});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String description;
  @override
  final bool completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(description: $description, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String description,
      required final bool completed}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}

Checklist _$ChecklistFromJson(Map<String, dynamic> json) {
  return _Checklist.fromJson(json);
}

/// @nodoc
mixin _$Checklist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecklistCopyWith<Checklist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistCopyWith<$Res> {
  factory $ChecklistCopyWith(Checklist value, $Res Function(Checklist) then) =
      _$ChecklistCopyWithImpl<$Res, Checklist>;
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class _$ChecklistCopyWithImpl<$Res, $Val extends Checklist>
    implements $ChecklistCopyWith<$Res> {
  _$ChecklistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChecklistCopyWith<$Res> implements $ChecklistCopyWith<$Res> {
  factory _$$_ChecklistCopyWith(
          _$_Checklist value, $Res Function(_$_Checklist) then) =
      __$$_ChecklistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class __$$_ChecklistCopyWithImpl<$Res>
    extends _$ChecklistCopyWithImpl<$Res, _$_Checklist>
    implements _$$_ChecklistCopyWith<$Res> {
  __$$_ChecklistCopyWithImpl(
      _$_Checklist _value, $Res Function(_$_Checklist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_$_Checklist(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Checklist with DiagnosticableTreeMixin implements _Checklist {
  const _$_Checklist(
      {required this.id, required this.name, required final List<Task> tasks})
      : _tasks = tasks;

  factory _$_Checklist.fromJson(Map<String, dynamic> json) =>
      _$$_ChecklistFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Checklist(id: $id, name: $name, tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Checklist'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Checklist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChecklistCopyWith<_$_Checklist> get copyWith =>
      __$$_ChecklistCopyWithImpl<_$_Checklist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChecklistToJson(
      this,
    );
  }
}

abstract class _Checklist implements Checklist {
  const factory _Checklist(
      {required final String id,
      required final String name,
      required final List<Task> tasks}) = _$_Checklist;

  factory _Checklist.fromJson(Map<String, dynamic> json) =
      _$_Checklist.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ChecklistCopyWith<_$_Checklist> get copyWith =>
      throw _privateConstructorUsedError;
}

ChecklistInstance _$ChecklistInstanceFromJson(Map<String, dynamic> json) {
  return _ChecklistInstance.fromJson(json);
}

/// @nodoc
mixin _$ChecklistInstance {
  String get checklistId => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecklistInstanceCopyWith<ChecklistInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistInstanceCopyWith<$Res> {
  factory $ChecklistInstanceCopyWith(
          ChecklistInstance value, $Res Function(ChecklistInstance) then) =
      _$ChecklistInstanceCopyWithImpl<$Res, ChecklistInstance>;
  @useResult
  $Res call({String checklistId, DateTime? start, DateTime? end});
}

/// @nodoc
class _$ChecklistInstanceCopyWithImpl<$Res, $Val extends ChecklistInstance>
    implements $ChecklistInstanceCopyWith<$Res> {
  _$ChecklistInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklistId = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      checklistId: null == checklistId
          ? _value.checklistId
          : checklistId // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChecklistInstanceCopyWith<$Res>
    implements $ChecklistInstanceCopyWith<$Res> {
  factory _$$_ChecklistInstanceCopyWith(_$_ChecklistInstance value,
          $Res Function(_$_ChecklistInstance) then) =
      __$$_ChecklistInstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String checklistId, DateTime? start, DateTime? end});
}

/// @nodoc
class __$$_ChecklistInstanceCopyWithImpl<$Res>
    extends _$ChecklistInstanceCopyWithImpl<$Res, _$_ChecklistInstance>
    implements _$$_ChecklistInstanceCopyWith<$Res> {
  __$$_ChecklistInstanceCopyWithImpl(
      _$_ChecklistInstance _value, $Res Function(_$_ChecklistInstance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklistId = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_ChecklistInstance(
      checklistId: null == checklistId
          ? _value.checklistId
          : checklistId // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChecklistInstance
    with DiagnosticableTreeMixin
    implements _ChecklistInstance {
  _$_ChecklistInstance({required this.checklistId, this.start, this.end});

  factory _$_ChecklistInstance.fromJson(Map<String, dynamic> json) =>
      _$$_ChecklistInstanceFromJson(json);

  @override
  final String checklistId;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChecklistInstance(checklistId: $checklistId, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChecklistInstance'))
      ..add(DiagnosticsProperty('checklistId', checklistId))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChecklistInstance &&
            (identical(other.checklistId, checklistId) ||
                other.checklistId == checklistId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checklistId, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChecklistInstanceCopyWith<_$_ChecklistInstance> get copyWith =>
      __$$_ChecklistInstanceCopyWithImpl<_$_ChecklistInstance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChecklistInstanceToJson(
      this,
    );
  }
}

abstract class _ChecklistInstance implements ChecklistInstance {
  factory _ChecklistInstance(
      {required final String checklistId,
      final DateTime? start,
      final DateTime? end}) = _$_ChecklistInstance;

  factory _ChecklistInstance.fromJson(Map<String, dynamic> json) =
      _$_ChecklistInstance.fromJson;

  @override
  String get checklistId;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_ChecklistInstanceCopyWith<_$_ChecklistInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
