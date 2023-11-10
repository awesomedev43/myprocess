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
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({String id, String title, String description});
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
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl with DiagnosticableTreeMixin implements _Task {
  const _$TaskImpl(
      {required this.id, required this.title, required this.description});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String id,
      required final String title,
      required final String description}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskInstance _$TaskInstanceFromJson(Map<String, dynamic> json) {
  return _TaskInstance.fromJson(json);
}

/// @nodoc
mixin _$TaskInstance {
  Task get task => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskInstanceCopyWith<TaskInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskInstanceCopyWith<$Res> {
  factory $TaskInstanceCopyWith(
          TaskInstance value, $Res Function(TaskInstance) then) =
      _$TaskInstanceCopyWithImpl<$Res, TaskInstance>;
  @useResult
  $Res call(
      {Task task, String id, String title, String description, bool completed});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskInstanceCopyWithImpl<$Res, $Val extends TaskInstance>
    implements $TaskInstanceCopyWith<$Res> {
  _$TaskInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskInstanceImplCopyWith<$Res>
    implements $TaskInstanceCopyWith<$Res> {
  factory _$$TaskInstanceImplCopyWith(
          _$TaskInstanceImpl value, $Res Function(_$TaskInstanceImpl) then) =
      __$$TaskInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Task task, String id, String title, String description, bool completed});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskInstanceImplCopyWithImpl<$Res>
    extends _$TaskInstanceCopyWithImpl<$Res, _$TaskInstanceImpl>
    implements _$$TaskInstanceImplCopyWith<$Res> {
  __$$TaskInstanceImplCopyWithImpl(
      _$TaskInstanceImpl _value, $Res Function(_$TaskInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$TaskInstanceImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TaskInstanceImpl with DiagnosticableTreeMixin implements _TaskInstance {
  _$TaskInstanceImpl(
      {required this.task,
      required this.id,
      required this.title,
      required this.description,
      this.completed = false});

  factory _$TaskInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskInstanceImplFromJson(json);

  @override
  final Task task;
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskInstance(task: $task, id: $id, title: $title, description: $description, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskInstance'))
      ..add(DiagnosticsProperty('task', task))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskInstanceImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, task, id, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskInstanceImplCopyWith<_$TaskInstanceImpl> get copyWith =>
      __$$TaskInstanceImplCopyWithImpl<_$TaskInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskInstanceImplToJson(
      this,
    );
  }
}

abstract class _TaskInstance implements TaskInstance {
  factory _TaskInstance(
      {required final Task task,
      required final String id,
      required final String title,
      required final String description,
      final bool completed}) = _$TaskInstanceImpl;

  factory _TaskInstance.fromJson(Map<String, dynamic> json) =
      _$TaskInstanceImpl.fromJson;

  @override
  Task get task;
  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TaskInstanceImplCopyWith<_$TaskInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$ProcessImplCopyWith<$Res> implements $ProcessCopyWith<$Res> {
  factory _$$ProcessImplCopyWith(
          _$ProcessImpl value, $Res Function(_$ProcessImpl) then) =
      __$$ProcessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class __$$ProcessImplCopyWithImpl<$Res>
    extends _$ProcessCopyWithImpl<$Res, _$ProcessImpl>
    implements _$$ProcessImplCopyWith<$Res> {
  __$$ProcessImplCopyWithImpl(
      _$ProcessImpl _value, $Res Function(_$ProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_$ProcessImpl(
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
class _$ProcessImpl with DiagnosticableTreeMixin implements _Process {
  const _$ProcessImpl(
      {required this.id, required this.name, required final List<Task> tasks})
      : _tasks = tasks;

  factory _$ProcessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessImplFromJson(json);

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
            other is _$ProcessImpl &&
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
  _$$ProcessImplCopyWith<_$ProcessImpl> get copyWith =>
      __$$ProcessImplCopyWithImpl<_$ProcessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessImplToJson(
      this,
    );
  }
}

abstract class _Process implements Process {
  const factory _Process(
      {required final String id,
      required final String name,
      required final List<Task> tasks}) = _$ProcessImpl;

  factory _Process.fromJson(Map<String, dynamic> json) = _$ProcessImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$ProcessImplCopyWith<_$ProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcessInstance _$ProcessInstanceFromJson(Map<String, dynamic> json) {
  return _ProcessInstance.fromJson(json);
}

/// @nodoc
mixin _$ProcessInstance {
  String get id => throw _privateConstructorUsedError;
  Process get process => throw _privateConstructorUsedError;
  List<TaskInstance> get taskInstances => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
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
  $Res call(
      {String id,
      Process process,
      List<TaskInstance> taskInstances,
      bool completed,
      DateTime? start,
      DateTime? end});

  $ProcessCopyWith<$Res> get process;
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
    Object? id = null,
    Object? process = null,
    Object? taskInstances = null,
    Object? completed = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      process: null == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as Process,
      taskInstances: null == taskInstances
          ? _value.taskInstances
          : taskInstances // ignore: cast_nullable_to_non_nullable
              as List<TaskInstance>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $ProcessCopyWith<$Res> get process {
    return $ProcessCopyWith<$Res>(_value.process, (value) {
      return _then(_value.copyWith(process: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProcessInstanceImplCopyWith<$Res>
    implements $ProcessInstanceCopyWith<$Res> {
  factory _$$ProcessInstanceImplCopyWith(_$ProcessInstanceImpl value,
          $Res Function(_$ProcessInstanceImpl) then) =
      __$$ProcessInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Process process,
      List<TaskInstance> taskInstances,
      bool completed,
      DateTime? start,
      DateTime? end});

  @override
  $ProcessCopyWith<$Res> get process;
}

/// @nodoc
class __$$ProcessInstanceImplCopyWithImpl<$Res>
    extends _$ProcessInstanceCopyWithImpl<$Res, _$ProcessInstanceImpl>
    implements _$$ProcessInstanceImplCopyWith<$Res> {
  __$$ProcessInstanceImplCopyWithImpl(
      _$ProcessInstanceImpl _value, $Res Function(_$ProcessInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? process = null,
    Object? taskInstances = null,
    Object? completed = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$ProcessInstanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      process: null == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as Process,
      taskInstances: null == taskInstances
          ? _value._taskInstances
          : taskInstances // ignore: cast_nullable_to_non_nullable
              as List<TaskInstance>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ProcessInstanceImpl
    with DiagnosticableTreeMixin
    implements _ProcessInstance {
  _$ProcessInstanceImpl(
      {required this.id,
      required this.process,
      final List<TaskInstance> taskInstances = const [],
      this.completed = false,
      this.start,
      this.end})
      : _taskInstances = taskInstances;

  factory _$ProcessInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessInstanceImplFromJson(json);

  @override
  final String id;
  @override
  final Process process;
  final List<TaskInstance> _taskInstances;
  @override
  @JsonKey()
  List<TaskInstance> get taskInstances {
    if (_taskInstances is EqualUnmodifiableListView) return _taskInstances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskInstances);
  }

  @override
  @JsonKey()
  final bool completed;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessInstance(id: $id, process: $process, taskInstances: $taskInstances, completed: $completed, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessInstance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('process', process))
      ..add(DiagnosticsProperty('taskInstances', taskInstances))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.process, process) || other.process == process) &&
            const DeepCollectionEquality()
                .equals(other._taskInstances, _taskInstances) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      process,
      const DeepCollectionEquality().hash(_taskInstances),
      completed,
      start,
      end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessInstanceImplCopyWith<_$ProcessInstanceImpl> get copyWith =>
      __$$ProcessInstanceImplCopyWithImpl<_$ProcessInstanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessInstanceImplToJson(
      this,
    );
  }
}

abstract class _ProcessInstance implements ProcessInstance {
  factory _ProcessInstance(
      {required final String id,
      required final Process process,
      final List<TaskInstance> taskInstances,
      final bool completed,
      final DateTime? start,
      final DateTime? end}) = _$ProcessInstanceImpl;

  factory _ProcessInstance.fromJson(Map<String, dynamic> json) =
      _$ProcessInstanceImpl.fromJson;

  @override
  String get id;
  @override
  Process get process;
  @override
  List<TaskInstance> get taskInstances;
  @override
  bool get completed;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$ProcessInstanceImplCopyWith<_$ProcessInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcessList _$ProcessListFromJson(Map<String, dynamic> json) {
  return _ProcessList.fromJson(json);
}

/// @nodoc
mixin _$ProcessList {
  List<Process> get processes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessListCopyWith<ProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessListCopyWith<$Res> {
  factory $ProcessListCopyWith(
          ProcessList value, $Res Function(ProcessList) then) =
      _$ProcessListCopyWithImpl<$Res, ProcessList>;
  @useResult
  $Res call({List<Process> processes});
}

/// @nodoc
class _$ProcessListCopyWithImpl<$Res, $Val extends ProcessList>
    implements $ProcessListCopyWith<$Res> {
  _$ProcessListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_value.copyWith(
      processes: null == processes
          ? _value.processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<Process>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessListImplCopyWith<$Res>
    implements $ProcessListCopyWith<$Res> {
  factory _$$ProcessListImplCopyWith(
          _$ProcessListImpl value, $Res Function(_$ProcessListImpl) then) =
      __$$ProcessListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Process> processes});
}

/// @nodoc
class __$$ProcessListImplCopyWithImpl<$Res>
    extends _$ProcessListCopyWithImpl<$Res, _$ProcessListImpl>
    implements _$$ProcessListImplCopyWith<$Res> {
  __$$ProcessListImplCopyWithImpl(
      _$ProcessListImpl _value, $Res Function(_$ProcessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_$ProcessListImpl(
      processes: null == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<Process>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessListImpl with DiagnosticableTreeMixin implements _ProcessList {
  const _$ProcessListImpl({required final List<Process> processes})
      : _processes = processes;

  factory _$ProcessListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessListImplFromJson(json);

  final List<Process> _processes;
  @override
  List<Process> get processes {
    if (_processes is EqualUnmodifiableListView) return _processes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessList(processes: $processes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessList'))
      ..add(DiagnosticsProperty('processes', processes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessListImpl &&
            const DeepCollectionEquality()
                .equals(other._processes, _processes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_processes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessListImplCopyWith<_$ProcessListImpl> get copyWith =>
      __$$ProcessListImplCopyWithImpl<_$ProcessListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessListImplToJson(
      this,
    );
  }
}

abstract class _ProcessList implements ProcessList {
  const factory _ProcessList({required final List<Process> processes}) =
      _$ProcessListImpl;

  factory _ProcessList.fromJson(Map<String, dynamic> json) =
      _$ProcessListImpl.fromJson;

  @override
  List<Process> get processes;
  @override
  @JsonKey(ignore: true)
  _$$ProcessListImplCopyWith<_$ProcessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcessInstanceList _$ProcessInstanceListFromJson(Map<String, dynamic> json) {
  return _ProcessInstanceList.fromJson(json);
}

/// @nodoc
mixin _$ProcessInstanceList {
  List<ProcessInstance> get processes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessInstanceListCopyWith<ProcessInstanceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessInstanceListCopyWith<$Res> {
  factory $ProcessInstanceListCopyWith(
          ProcessInstanceList value, $Res Function(ProcessInstanceList) then) =
      _$ProcessInstanceListCopyWithImpl<$Res, ProcessInstanceList>;
  @useResult
  $Res call({List<ProcessInstance> processes});
}

/// @nodoc
class _$ProcessInstanceListCopyWithImpl<$Res, $Val extends ProcessInstanceList>
    implements $ProcessInstanceListCopyWith<$Res> {
  _$ProcessInstanceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_value.copyWith(
      processes: null == processes
          ? _value.processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<ProcessInstance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessInstanceListImplCopyWith<$Res>
    implements $ProcessInstanceListCopyWith<$Res> {
  factory _$$ProcessInstanceListImplCopyWith(_$ProcessInstanceListImpl value,
          $Res Function(_$ProcessInstanceListImpl) then) =
      __$$ProcessInstanceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProcessInstance> processes});
}

/// @nodoc
class __$$ProcessInstanceListImplCopyWithImpl<$Res>
    extends _$ProcessInstanceListCopyWithImpl<$Res, _$ProcessInstanceListImpl>
    implements _$$ProcessInstanceListImplCopyWith<$Res> {
  __$$ProcessInstanceListImplCopyWithImpl(_$ProcessInstanceListImpl _value,
      $Res Function(_$ProcessInstanceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_$ProcessInstanceListImpl(
      processes: null == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<ProcessInstance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessInstanceListImpl
    with DiagnosticableTreeMixin
    implements _ProcessInstanceList {
  const _$ProcessInstanceListImpl(
      {required final List<ProcessInstance> processes})
      : _processes = processes;

  factory _$ProcessInstanceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessInstanceListImplFromJson(json);

  final List<ProcessInstance> _processes;
  @override
  List<ProcessInstance> get processes {
    if (_processes is EqualUnmodifiableListView) return _processes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_processes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessInstanceList(processes: $processes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessInstanceList'))
      ..add(DiagnosticsProperty('processes', processes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessInstanceListImpl &&
            const DeepCollectionEquality()
                .equals(other._processes, _processes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_processes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessInstanceListImplCopyWith<_$ProcessInstanceListImpl> get copyWith =>
      __$$ProcessInstanceListImplCopyWithImpl<_$ProcessInstanceListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessInstanceListImplToJson(
      this,
    );
  }
}

abstract class _ProcessInstanceList implements ProcessInstanceList {
  const factory _ProcessInstanceList(
          {required final List<ProcessInstance> processes}) =
      _$ProcessInstanceListImpl;

  factory _ProcessInstanceList.fromJson(Map<String, dynamic> json) =
      _$ProcessInstanceListImpl.fromJson;

  @override
  List<ProcessInstance> get processes;
  @override
  @JsonKey(ignore: true)
  _$$ProcessInstanceListImplCopyWith<_$ProcessInstanceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
