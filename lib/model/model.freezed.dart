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
  bool operator ==(Object other) {
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
  bool operator ==(Object other) {
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

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Task> tasks});
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_$SessionImpl(
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
class _$SessionImpl with DiagnosticableTreeMixin implements _Session {
  const _$SessionImpl(
      {required this.id, required this.name, required final List<Task> tasks})
      : _tasks = tasks;

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

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
    return 'Session(id: $id, name: $name, tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
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
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String name,
      required final List<Task> tasks}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionInstance _$SessionInstanceFromJson(Map<String, dynamic> json) {
  return _SessionInstance.fromJson(json);
}

/// @nodoc
mixin _$SessionInstance {
  String get id => throw _privateConstructorUsedError;
  Session get session => throw _privateConstructorUsedError;
  List<TaskInstance> get taskInstances => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionInstanceCopyWith<SessionInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionInstanceCopyWith<$Res> {
  factory $SessionInstanceCopyWith(
          SessionInstance value, $Res Function(SessionInstance) then) =
      _$SessionInstanceCopyWithImpl<$Res, SessionInstance>;
  @useResult
  $Res call(
      {String id,
      Session session,
      List<TaskInstance> taskInstances,
      bool completed,
      DateTime? start,
      DateTime? end});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$SessionInstanceCopyWithImpl<$Res, $Val extends SessionInstance>
    implements $SessionInstanceCopyWith<$Res> {
  _$SessionInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? session = null,
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
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
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
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionInstanceImplCopyWith<$Res>
    implements $SessionInstanceCopyWith<$Res> {
  factory _$$SessionInstanceImplCopyWith(_$SessionInstanceImpl value,
          $Res Function(_$SessionInstanceImpl) then) =
      __$$SessionInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Session session,
      List<TaskInstance> taskInstances,
      bool completed,
      DateTime? start,
      DateTime? end});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$SessionInstanceImplCopyWithImpl<$Res>
    extends _$SessionInstanceCopyWithImpl<$Res, _$SessionInstanceImpl>
    implements _$$SessionInstanceImplCopyWith<$Res> {
  __$$SessionInstanceImplCopyWithImpl(
      _$SessionInstanceImpl _value, $Res Function(_$SessionInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? session = null,
    Object? taskInstances = null,
    Object? completed = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$SessionInstanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
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
class _$SessionInstanceImpl
    with DiagnosticableTreeMixin
    implements _SessionInstance {
  _$SessionInstanceImpl(
      {required this.id,
      required this.session,
      final List<TaskInstance> taskInstances = const [],
      this.completed = false,
      this.start,
      this.end})
      : _taskInstances = taskInstances;

  factory _$SessionInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionInstanceImplFromJson(json);

  @override
  final String id;
  @override
  final Session session;
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
    return 'SessionInstance(id: $id, session: $session, taskInstances: $taskInstances, completed: $completed, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionInstance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('taskInstances', taskInstances))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.session, session) || other.session == session) &&
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
      session,
      const DeepCollectionEquality().hash(_taskInstances),
      completed,
      start,
      end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionInstanceImplCopyWith<_$SessionInstanceImpl> get copyWith =>
      __$$SessionInstanceImplCopyWithImpl<_$SessionInstanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionInstanceImplToJson(
      this,
    );
  }
}

abstract class _SessionInstance implements SessionInstance {
  factory _SessionInstance(
      {required final String id,
      required final Session session,
      final List<TaskInstance> taskInstances,
      final bool completed,
      final DateTime? start,
      final DateTime? end}) = _$SessionInstanceImpl;

  factory _SessionInstance.fromJson(Map<String, dynamic> json) =
      _$SessionInstanceImpl.fromJson;

  @override
  String get id;
  @override
  Session get session;
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
  _$$SessionInstanceImplCopyWith<_$SessionInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionList _$SessionListFromJson(Map<String, dynamic> json) {
  return _SessionList.fromJson(json);
}

/// @nodoc
mixin _$SessionList {
  List<Session> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionListCopyWith<SessionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListCopyWith<$Res> {
  factory $SessionListCopyWith(
          SessionList value, $Res Function(SessionList) then) =
      _$SessionListCopyWithImpl<$Res, SessionList>;
  @useResult
  $Res call({List<Session> sessions});
}

/// @nodoc
class _$SessionListCopyWithImpl<$Res, $Val extends SessionList>
    implements $SessionListCopyWith<$Res> {
  _$SessionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionListImplCopyWith<$Res>
    implements $SessionListCopyWith<$Res> {
  factory _$$SessionListImplCopyWith(
          _$SessionListImpl value, $Res Function(_$SessionListImpl) then) =
      __$$SessionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Session> sessions});
}

/// @nodoc
class __$$SessionListImplCopyWithImpl<$Res>
    extends _$SessionListCopyWithImpl<$Res, _$SessionListImpl>
    implements _$$SessionListImplCopyWith<$Res> {
  __$$SessionListImplCopyWithImpl(
      _$SessionListImpl _value, $Res Function(_$SessionListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$SessionListImpl(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionListImpl with DiagnosticableTreeMixin implements _SessionList {
  const _$SessionListImpl({required final List<Session> sessions})
      : _sessions = sessions;

  factory _$SessionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionListImplFromJson(json);

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionList(sessions: $sessions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionList'))
      ..add(DiagnosticsProperty('sessions', sessions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionListImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionListImplCopyWith<_$SessionListImpl> get copyWith =>
      __$$SessionListImplCopyWithImpl<_$SessionListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionListImplToJson(
      this,
    );
  }
}

abstract class _SessionList implements SessionList {
  const factory _SessionList({required final List<Session> sessions}) =
      _$SessionListImpl;

  factory _SessionList.fromJson(Map<String, dynamic> json) =
      _$SessionListImpl.fromJson;

  @override
  List<Session> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$SessionListImplCopyWith<_$SessionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionInstanceList _$SessionInstanceListFromJson(Map<String, dynamic> json) {
  return _SessionInstanceList.fromJson(json);
}

/// @nodoc
mixin _$SessionInstanceList {
  List<SessionInstance> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionInstanceListCopyWith<SessionInstanceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionInstanceListCopyWith<$Res> {
  factory $SessionInstanceListCopyWith(
          SessionInstanceList value, $Res Function(SessionInstanceList) then) =
      _$SessionInstanceListCopyWithImpl<$Res, SessionInstanceList>;
  @useResult
  $Res call({List<SessionInstance> sessions});
}

/// @nodoc
class _$SessionInstanceListCopyWithImpl<$Res, $Val extends SessionInstanceList>
    implements $SessionInstanceListCopyWith<$Res> {
  _$SessionInstanceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionInstance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionInstanceListImplCopyWith<$Res>
    implements $SessionInstanceListCopyWith<$Res> {
  factory _$$SessionInstanceListImplCopyWith(_$SessionInstanceListImpl value,
          $Res Function(_$SessionInstanceListImpl) then) =
      __$$SessionInstanceListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SessionInstance> sessions});
}

/// @nodoc
class __$$SessionInstanceListImplCopyWithImpl<$Res>
    extends _$SessionInstanceListCopyWithImpl<$Res, _$SessionInstanceListImpl>
    implements _$$SessionInstanceListImplCopyWith<$Res> {
  __$$SessionInstanceListImplCopyWithImpl(_$SessionInstanceListImpl _value,
      $Res Function(_$SessionInstanceListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$SessionInstanceListImpl(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionInstance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionInstanceListImpl
    with DiagnosticableTreeMixin
    implements _SessionInstanceList {
  const _$SessionInstanceListImpl(
      {required final List<SessionInstance> sessions})
      : _sessions = sessions;

  factory _$SessionInstanceListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionInstanceListImplFromJson(json);

  final List<SessionInstance> _sessions;
  @override
  List<SessionInstance> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionInstanceList(sessions: $sessions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionInstanceList'))
      ..add(DiagnosticsProperty('sessions', sessions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionInstanceListImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionInstanceListImplCopyWith<_$SessionInstanceListImpl> get copyWith =>
      __$$SessionInstanceListImplCopyWithImpl<_$SessionInstanceListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionInstanceListImplToJson(
      this,
    );
  }
}

abstract class _SessionInstanceList implements SessionInstanceList {
  const factory _SessionInstanceList(
          {required final List<SessionInstance> sessions}) =
      _$SessionInstanceListImpl;

  factory _SessionInstanceList.fromJson(Map<String, dynamic> json) =
      _$SessionInstanceListImpl.fromJson;

  @override
  List<SessionInstance> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$SessionInstanceListImplCopyWith<_$SessionInstanceListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
