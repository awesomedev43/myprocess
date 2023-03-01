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

Process _$ProcessFromJson(Map<String, dynamic> json) {
  return _Process.fromJson(json);
}

/// @nodoc
mixin _$Process {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessCopyWith<Process> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessCopyWith<$Res> {
  factory $ProcessCopyWith(Process value, $Res Function(Process) then) =
      _$ProcessCopyWithImpl<$Res, Process>;
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class _$ProcessCopyWithImpl<$Res, $Val extends Process>
    implements $ProcessCopyWith<$Res> {
  _$ProcessCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProcessCopyWith<$Res> implements $ProcessCopyWith<$Res> {
  factory _$$_ProcessCopyWith(
          _$_Process value, $Res Function(_$_Process) then) =
      __$$_ProcessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class __$$_ProcessCopyWithImpl<$Res>
    extends _$ProcessCopyWithImpl<$Res, _$_Process>
    implements _$$_ProcessCopyWith<$Res> {
  __$$_ProcessCopyWithImpl(_$_Process _value, $Res Function(_$_Process) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_$_Process(
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
class _$_Process with DiagnosticableTreeMixin implements _Process {
  const _$_Process(
      {required this.id, required this.name, required final List<Task> tasks})
      : _tasks = tasks;

  factory _$_Process.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessFromJson(json);

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
    return 'Process(id: $id, name: $name, tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Process'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Process &&
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
  _$$_ProcessCopyWith<_$_Process> get copyWith =>
      __$$_ProcessCopyWithImpl<_$_Process>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessToJson(
      this,
    );
  }
}

abstract class _Process implements Process {
  const factory _Process(
      {required final String id,
      required final String name,
      required final List<Task> tasks}) = _$_Process;

  factory _Process.fromJson(Map<String, dynamic> json) = _$_Process.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessCopyWith<_$_Process> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcessInstance _$ProcessInstanceFromJson(Map<String, dynamic> json) {
  return _ProcessInstance.fromJson(json);
}

/// @nodoc
mixin _$ProcessInstance {
  String get ProcessId => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessInstanceCopyWith<ProcessInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessInstanceCopyWith<$Res> {
  factory $ProcessInstanceCopyWith(
          ProcessInstance value, $Res Function(ProcessInstance) then) =
      _$ProcessInstanceCopyWithImpl<$Res, ProcessInstance>;
  @useResult
  $Res call({String ProcessId, DateTime? start, DateTime? end});
}

/// @nodoc
class _$ProcessInstanceCopyWithImpl<$Res, $Val extends ProcessInstance>
    implements $ProcessInstanceCopyWith<$Res> {
  _$ProcessInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProcessId = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      ProcessId: null == ProcessId
          ? _value.ProcessId
          : ProcessId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ProcessInstanceCopyWith<$Res>
    implements $ProcessInstanceCopyWith<$Res> {
  factory _$$_ProcessInstanceCopyWith(
          _$_ProcessInstance value, $Res Function(_$_ProcessInstance) then) =
      __$$_ProcessInstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ProcessId, DateTime? start, DateTime? end});
}

/// @nodoc
class __$$_ProcessInstanceCopyWithImpl<$Res>
    extends _$ProcessInstanceCopyWithImpl<$Res, _$_ProcessInstance>
    implements _$$_ProcessInstanceCopyWith<$Res> {
  __$$_ProcessInstanceCopyWithImpl(
      _$_ProcessInstance _value, $Res Function(_$_ProcessInstance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProcessId = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_ProcessInstance(
      ProcessId: null == ProcessId
          ? _value.ProcessId
          : ProcessId // ignore: cast_nullable_to_non_nullable
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
class _$_ProcessInstance
    with DiagnosticableTreeMixin
    implements _ProcessInstance {
  _$_ProcessInstance({required this.ProcessId, this.start, this.end});

  factory _$_ProcessInstance.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessInstanceFromJson(json);

  @override
  final String ProcessId;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessInstance(ProcessId: $ProcessId, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessInstance'))
      ..add(DiagnosticsProperty('ProcessId', ProcessId))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessInstance &&
            (identical(other.ProcessId, ProcessId) ||
                other.ProcessId == ProcessId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ProcessId, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessInstanceCopyWith<_$_ProcessInstance> get copyWith =>
      __$$_ProcessInstanceCopyWithImpl<_$_ProcessInstance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessInstanceToJson(
      this,
    );
  }
}

abstract class _ProcessInstance implements ProcessInstance {
  factory _ProcessInstance(
      {required final String ProcessId,
      final DateTime? start,
      final DateTime? end}) = _$_ProcessInstance;

  factory _ProcessInstance.fromJson(Map<String, dynamic> json) =
      _$_ProcessInstance.fromJson;

  @override
  String get ProcessId;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessInstanceCopyWith<_$_ProcessInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
