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

CounterTask _$CounterTaskFromJson(Map<String, dynamic> json) {
  return _CounterTask.fromJson(json);
}

/// @nodoc
mixin _$CounterTask {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get increment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterTaskCopyWith<CounterTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterTaskCopyWith<$Res> {
  factory $CounterTaskCopyWith(
          CounterTask value, $Res Function(CounterTask) then) =
      _$CounterTaskCopyWithImpl<$Res, CounterTask>;
  @useResult
  $Res call({String id, String title, String description, int increment});
}

/// @nodoc
class _$CounterTaskCopyWithImpl<$Res, $Val extends CounterTask>
    implements $CounterTaskCopyWith<$Res> {
  _$CounterTaskCopyWithImpl(this._value, this._then);

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
    Object? increment = null,
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
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterTaskImplCopyWith<$Res>
    implements $CounterTaskCopyWith<$Res> {
  factory _$$CounterTaskImplCopyWith(
          _$CounterTaskImpl value, $Res Function(_$CounterTaskImpl) then) =
      __$$CounterTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description, int increment});
}

/// @nodoc
class __$$CounterTaskImplCopyWithImpl<$Res>
    extends _$CounterTaskCopyWithImpl<$Res, _$CounterTaskImpl>
    implements _$$CounterTaskImplCopyWith<$Res> {
  __$$CounterTaskImplCopyWithImpl(
      _$CounterTaskImpl _value, $Res Function(_$CounterTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? increment = null,
  }) {
    return _then(_$CounterTaskImpl(
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
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterTaskImpl with DiagnosticableTreeMixin implements _CounterTask {
  const _$CounterTaskImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.increment = 0});

  factory _$CounterTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterTaskImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final int increment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CounterTask(id: $id, title: $title, description: $description, increment: $increment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CounterTask'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('increment', increment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.increment, increment) ||
                other.increment == increment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, increment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterTaskImplCopyWith<_$CounterTaskImpl> get copyWith =>
      __$$CounterTaskImplCopyWithImpl<_$CounterTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterTaskImplToJson(
      this,
    );
  }
}

abstract class _CounterTask implements CounterTask {
  const factory _CounterTask(
      {required final String id,
      required final String title,
      required final String description,
      final int increment}) = _$CounterTaskImpl;

  factory _CounterTask.fromJson(Map<String, dynamic> json) =
      _$CounterTaskImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get increment;
  @override
  @JsonKey(ignore: true)
  _$$CounterTaskImplCopyWith<_$CounterTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CounterTaskInstance _$CounterTaskInstanceFromJson(Map<String, dynamic> json) {
  return _CounterTaskInstance.fromJson(json);
}

/// @nodoc
mixin _$CounterTaskInstance {
  CounterTask get counterTask => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get increment => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterTaskInstanceCopyWith<CounterTaskInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterTaskInstanceCopyWith<$Res> {
  factory $CounterTaskInstanceCopyWith(
          CounterTaskInstance value, $Res Function(CounterTaskInstance) then) =
      _$CounterTaskInstanceCopyWithImpl<$Res, CounterTaskInstance>;
  @useResult
  $Res call(
      {CounterTask counterTask,
      String id,
      String title,
      String description,
      int increment,
      int count});

  $CounterTaskCopyWith<$Res> get counterTask;
}

/// @nodoc
class _$CounterTaskInstanceCopyWithImpl<$Res, $Val extends CounterTaskInstance>
    implements $CounterTaskInstanceCopyWith<$Res> {
  _$CounterTaskInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterTask = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? increment = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      counterTask: null == counterTask
          ? _value.counterTask
          : counterTask // ignore: cast_nullable_to_non_nullable
              as CounterTask,
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
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterTaskCopyWith<$Res> get counterTask {
    return $CounterTaskCopyWith<$Res>(_value.counterTask, (value) {
      return _then(_value.copyWith(counterTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CounterTaskInstanceImplCopyWith<$Res>
    implements $CounterTaskInstanceCopyWith<$Res> {
  factory _$$CounterTaskInstanceImplCopyWith(_$CounterTaskInstanceImpl value,
          $Res Function(_$CounterTaskInstanceImpl) then) =
      __$$CounterTaskInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CounterTask counterTask,
      String id,
      String title,
      String description,
      int increment,
      int count});

  @override
  $CounterTaskCopyWith<$Res> get counterTask;
}

/// @nodoc
class __$$CounterTaskInstanceImplCopyWithImpl<$Res>
    extends _$CounterTaskInstanceCopyWithImpl<$Res, _$CounterTaskInstanceImpl>
    implements _$$CounterTaskInstanceImplCopyWith<$Res> {
  __$$CounterTaskInstanceImplCopyWithImpl(_$CounterTaskInstanceImpl _value,
      $Res Function(_$CounterTaskInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterTask = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? increment = null,
    Object? count = null,
  }) {
    return _then(_$CounterTaskInstanceImpl(
      counterTask: null == counterTask
          ? _value.counterTask
          : counterTask // ignore: cast_nullable_to_non_nullable
              as CounterTask,
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
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterTaskInstanceImpl
    with DiagnosticableTreeMixin
    implements _CounterTaskInstance {
  const _$CounterTaskInstanceImpl(
      {required this.counterTask,
      required this.id,
      required this.title,
      required this.description,
      required this.increment,
      this.count = 0});

  factory _$CounterTaskInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterTaskInstanceImplFromJson(json);

  @override
  final CounterTask counterTask;
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int increment;
  @override
  @JsonKey()
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CounterTaskInstance(counterTask: $counterTask, id: $id, title: $title, description: $description, increment: $increment, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CounterTaskInstance'))
      ..add(DiagnosticsProperty('counterTask', counterTask))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('increment', increment))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterTaskInstanceImpl &&
            (identical(other.counterTask, counterTask) ||
                other.counterTask == counterTask) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.increment, increment) ||
                other.increment == increment) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, counterTask, id, title, description, increment, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterTaskInstanceImplCopyWith<_$CounterTaskInstanceImpl> get copyWith =>
      __$$CounterTaskInstanceImplCopyWithImpl<_$CounterTaskInstanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterTaskInstanceImplToJson(
      this,
    );
  }
}

abstract class _CounterTaskInstance implements CounterTaskInstance {
  const factory _CounterTaskInstance(
      {required final CounterTask counterTask,
      required final String id,
      required final String title,
      required final String description,
      required final int increment,
      final int count}) = _$CounterTaskInstanceImpl;

  factory _CounterTaskInstance.fromJson(Map<String, dynamic> json) =
      _$CounterTaskInstanceImpl.fromJson;

  @override
  CounterTask get counterTask;
  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get increment;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CounterTaskInstanceImplCopyWith<_$CounterTaskInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get photoVerify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({String id, String title, String description, dynamic photoVerify});
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
    Object? photoVerify = freezed,
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
      photoVerify: freezed == photoVerify
          ? _value.photoVerify
          : photoVerify // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $Res call({String id, String title, String description, dynamic photoVerify});
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
    Object? photoVerify = freezed,
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
      photoVerify: freezed == photoVerify ? _value.photoVerify! : photoVerify,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl with DiagnosticableTreeMixin implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.photoVerify = false});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final dynamic photoVerify;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, title: $title, description: $description, photoVerify: $photoVerify)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('photoVerify', photoVerify));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.photoVerify, photoVerify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(photoVerify));

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
      required final String description,
      final dynamic photoVerify}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  dynamic get photoVerify;
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
  String? get photoVerificationPath => throw _privateConstructorUsedError;

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
      {Task task,
      String id,
      String title,
      String description,
      bool completed,
      String? photoVerificationPath});

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
    Object? photoVerificationPath = freezed,
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
      photoVerificationPath: freezed == photoVerificationPath
          ? _value.photoVerificationPath
          : photoVerificationPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {Task task,
      String id,
      String title,
      String description,
      bool completed,
      String? photoVerificationPath});

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
    Object? photoVerificationPath = freezed,
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
      photoVerificationPath: freezed == photoVerificationPath
          ? _value.photoVerificationPath
          : photoVerificationPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.completed = false,
      this.photoVerificationPath});

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
  final String? photoVerificationPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskInstance(task: $task, id: $id, title: $title, description: $description, completed: $completed, photoVerificationPath: $photoVerificationPath)';
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
      ..add(DiagnosticsProperty('completed', completed))
      ..add(
          DiagnosticsProperty('photoVerificationPath', photoVerificationPath));
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
                other.completed == completed) &&
            (identical(other.photoVerificationPath, photoVerificationPath) ||
                other.photoVerificationPath == photoVerificationPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, task, id, title, description,
      completed, photoVerificationPath);

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
      final bool completed,
      final String? photoVerificationPath}) = _$TaskInstanceImpl;

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
  String? get photoVerificationPath;
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
  List<CounterTask> get counters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id, String name, List<Task> tasks, List<CounterTask> counters});
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
    Object? counters = null,
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
      counters: null == counters
          ? _value.counters
          : counters // ignore: cast_nullable_to_non_nullable
              as List<CounterTask>,
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
  $Res call(
      {String id, String name, List<Task> tasks, List<CounterTask> counters});
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
    Object? counters = null,
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
      counters: null == counters
          ? _value._counters
          : counters // ignore: cast_nullable_to_non_nullable
              as List<CounterTask>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl with DiagnosticableTreeMixin implements _Session {
  const _$SessionImpl(
      {required this.id,
      required this.name,
      required final List<Task> tasks,
      final List<CounterTask> counters = const []})
      : _tasks = tasks,
        _counters = counters;

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

  final List<CounterTask> _counters;
  @override
  @JsonKey()
  List<CounterTask> get counters {
    if (_counters is EqualUnmodifiableListView) return _counters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counters);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session(id: $id, name: $name, tasks: $tasks, counters: $counters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('tasks', tasks))
      ..add(DiagnosticsProperty('counters', counters));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._counters, _counters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_counters));

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
      required final List<Task> tasks,
      final List<CounterTask> counters}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Task> get tasks;
  @override
  List<CounterTask> get counters;
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
  List<CounterTaskInstance> get counterInstances =>
      throw _privateConstructorUsedError;
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
      List<CounterTaskInstance> counterInstances,
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
    Object? counterInstances = null,
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
      counterInstances: null == counterInstances
          ? _value.counterInstances
          : counterInstances // ignore: cast_nullable_to_non_nullable
              as List<CounterTaskInstance>,
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
      List<CounterTaskInstance> counterInstances,
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
    Object? counterInstances = null,
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
      counterInstances: null == counterInstances
          ? _value._counterInstances
          : counterInstances // ignore: cast_nullable_to_non_nullable
              as List<CounterTaskInstance>,
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
      final List<CounterTaskInstance> counterInstances = const [],
      this.completed = false,
      this.start,
      this.end})
      : _taskInstances = taskInstances,
        _counterInstances = counterInstances;

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

  final List<CounterTaskInstance> _counterInstances;
  @override
  @JsonKey()
  List<CounterTaskInstance> get counterInstances {
    if (_counterInstances is EqualUnmodifiableListView)
      return _counterInstances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counterInstances);
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
    return 'SessionInstance(id: $id, session: $session, taskInstances: $taskInstances, counterInstances: $counterInstances, completed: $completed, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionInstance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('taskInstances', taskInstances))
      ..add(DiagnosticsProperty('counterInstances', counterInstances))
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
            const DeepCollectionEquality()
                .equals(other._counterInstances, _counterInstances) &&
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
      const DeepCollectionEquality().hash(_counterInstances),
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
      final List<CounterTaskInstance> counterInstances,
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
  List<CounterTaskInstance> get counterInstances;
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
