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
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_Task(
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
class _$_Task with DiagnosticableTreeMixin implements _Task {
  const _$_Task(
      {required this.id, required this.title, required this.description});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

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
            other is _$_Task &&
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
      {required final String id,
      required final String title,
      required final String description}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_TaskInstanceCopyWith<$Res>
    implements $TaskInstanceCopyWith<$Res> {
  factory _$$_TaskInstanceCopyWith(
          _$_TaskInstance value, $Res Function(_$_TaskInstance) then) =
      __$$_TaskInstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Task task, String id, String title, String description, bool completed});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskInstanceCopyWithImpl<$Res>
    extends _$TaskInstanceCopyWithImpl<$Res, _$_TaskInstance>
    implements _$$_TaskInstanceCopyWith<$Res> {
  __$$_TaskInstanceCopyWithImpl(
      _$_TaskInstance _value, $Res Function(_$_TaskInstance) _then)
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
    return _then(_$_TaskInstance(
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
class _$_TaskInstance with DiagnosticableTreeMixin implements _TaskInstance {
  _$_TaskInstance(
      {required this.task,
      required this.id,
      required this.title,
      required this.description,
      this.completed = false});

  factory _$_TaskInstance.fromJson(Map<String, dynamic> json) =>
      _$$_TaskInstanceFromJson(json);

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
            other is _$_TaskInstance &&
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
  _$$_TaskInstanceCopyWith<_$_TaskInstance> get copyWith =>
      __$$_TaskInstanceCopyWithImpl<_$_TaskInstance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskInstanceToJson(
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
      final bool completed}) = _$_TaskInstance;

  factory _TaskInstance.fromJson(Map<String, dynamic> json) =
      _$_TaskInstance.fromJson;

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
  _$$_TaskInstanceCopyWith<_$_TaskInstance> get copyWith =>
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
  String get id => throw _privateConstructorUsedError;
  Process get process => throw _privateConstructorUsedError;
  List<TaskInstance> get taskInstances => throw _privateConstructorUsedError;
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
abstract class _$$_ProcessInstanceCopyWith<$Res>
    implements $ProcessInstanceCopyWith<$Res> {
  factory _$$_ProcessInstanceCopyWith(
          _$_ProcessInstance value, $Res Function(_$_ProcessInstance) then) =
      __$$_ProcessInstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Process process,
      List<TaskInstance> taskInstances,
      DateTime? start,
      DateTime? end});

  @override
  $ProcessCopyWith<$Res> get process;
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
    Object? id = null,
    Object? process = null,
    Object? taskInstances = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_ProcessInstance(
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
  _$_ProcessInstance(
      {required this.id,
      required this.process,
      final List<TaskInstance> taskInstances = const [],
      this.start,
      this.end})
      : _taskInstances = taskInstances;

  factory _$_ProcessInstance.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessInstanceFromJson(json);

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
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProcessInstance(id: $id, process: $process, taskInstances: $taskInstances, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProcessInstance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('process', process))
      ..add(DiagnosticsProperty('taskInstances', taskInstances))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessInstance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.process, process) || other.process == process) &&
            const DeepCollectionEquality()
                .equals(other._taskInstances, _taskInstances) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, process,
      const DeepCollectionEquality().hash(_taskInstances), start, end);

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
      {required final String id,
      required final Process process,
      final List<TaskInstance> taskInstances,
      final DateTime? start,
      final DateTime? end}) = _$_ProcessInstance;

  factory _ProcessInstance.fromJson(Map<String, dynamic> json) =
      _$_ProcessInstance.fromJson;

  @override
  String get id;
  @override
  Process get process;
  @override
  List<TaskInstance> get taskInstances;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessInstanceCopyWith<_$_ProcessInstance> get copyWith =>
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
abstract class _$$_ProcessListCopyWith<$Res>
    implements $ProcessListCopyWith<$Res> {
  factory _$$_ProcessListCopyWith(
          _$_ProcessList value, $Res Function(_$_ProcessList) then) =
      __$$_ProcessListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Process> processes});
}

/// @nodoc
class __$$_ProcessListCopyWithImpl<$Res>
    extends _$ProcessListCopyWithImpl<$Res, _$_ProcessList>
    implements _$$_ProcessListCopyWith<$Res> {
  __$$_ProcessListCopyWithImpl(
      _$_ProcessList _value, $Res Function(_$_ProcessList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_$_ProcessList(
      processes: null == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<Process>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessList with DiagnosticableTreeMixin implements _ProcessList {
  const _$_ProcessList({required final List<Process> processes})
      : _processes = processes;

  factory _$_ProcessList.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessListFromJson(json);

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
            other is _$_ProcessList &&
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
  _$$_ProcessListCopyWith<_$_ProcessList> get copyWith =>
      __$$_ProcessListCopyWithImpl<_$_ProcessList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessListToJson(
      this,
    );
  }
}

abstract class _ProcessList implements ProcessList {
  const factory _ProcessList({required final List<Process> processes}) =
      _$_ProcessList;

  factory _ProcessList.fromJson(Map<String, dynamic> json) =
      _$_ProcessList.fromJson;

  @override
  List<Process> get processes;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessListCopyWith<_$_ProcessList> get copyWith =>
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
abstract class _$$_ProcessInstanceListCopyWith<$Res>
    implements $ProcessInstanceListCopyWith<$Res> {
  factory _$$_ProcessInstanceListCopyWith(_$_ProcessInstanceList value,
          $Res Function(_$_ProcessInstanceList) then) =
      __$$_ProcessInstanceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProcessInstance> processes});
}

/// @nodoc
class __$$_ProcessInstanceListCopyWithImpl<$Res>
    extends _$ProcessInstanceListCopyWithImpl<$Res, _$_ProcessInstanceList>
    implements _$$_ProcessInstanceListCopyWith<$Res> {
  __$$_ProcessInstanceListCopyWithImpl(_$_ProcessInstanceList _value,
      $Res Function(_$_ProcessInstanceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = null,
  }) {
    return _then(_$_ProcessInstanceList(
      processes: null == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<ProcessInstance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessInstanceList
    with DiagnosticableTreeMixin
    implements _ProcessInstanceList {
  const _$_ProcessInstanceList({required final List<ProcessInstance> processes})
      : _processes = processes;

  factory _$_ProcessInstanceList.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessInstanceListFromJson(json);

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
            other is _$_ProcessInstanceList &&
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
  _$$_ProcessInstanceListCopyWith<_$_ProcessInstanceList> get copyWith =>
      __$$_ProcessInstanceListCopyWithImpl<_$_ProcessInstanceList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessInstanceListToJson(
      this,
    );
  }
}

abstract class _ProcessInstanceList implements ProcessInstanceList {
  const factory _ProcessInstanceList(
          {required final List<ProcessInstance> processes}) =
      _$_ProcessInstanceList;

  factory _ProcessInstanceList.fromJson(Map<String, dynamic> json) =
      _$_ProcessInstanceList.fromJson;

  @override
  List<ProcessInstance> get processes;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessInstanceListCopyWith<_$_ProcessInstanceList> get copyWith =>
      throw _privateConstructorUsedError;
}
