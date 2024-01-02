// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getInProgressSessionListHash() =>
    r'3c94986105ce02f24b2d6176df1bd4309eb2e054';

/// See also [getInProgressSessionList].
@ProviderFor(getInProgressSessionList)
final getInProgressSessionListProvider =
    AutoDisposeFutureProvider<List<SessionInstance>>.internal(
  getInProgressSessionList,
  name: r'getInProgressSessionListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getInProgressSessionListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetInProgressSessionListRef
    = AutoDisposeFutureProviderRef<List<SessionInstance>>;
String _$getCompletedSessionListHash() =>
    r'0e43069b7671db918b1f58c06ad6be910133db5f';

/// See also [getCompletedSessionList].
@ProviderFor(getCompletedSessionList)
final getCompletedSessionListProvider =
    AutoDisposeFutureProvider<List<SessionInstance>>.internal(
  getCompletedSessionList,
  name: r'getCompletedSessionListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCompletedSessionListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCompletedSessionListRef
    = AutoDisposeFutureProviderRef<List<SessionInstance>>;
String _$getInProgressTaskListHash() =>
    r'56bdc7542d1448277778e8d2a894e1ab3c136a14';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getInProgressTaskList].
@ProviderFor(getInProgressTaskList)
const getInProgressTaskListProvider = GetInProgressTaskListFamily();

/// See also [getInProgressTaskList].
class GetInProgressTaskListFamily
    extends Family<AsyncValue<List<TaskInstance>>> {
  /// See also [getInProgressTaskList].
  const GetInProgressTaskListFamily();

  /// See also [getInProgressTaskList].
  GetInProgressTaskListProvider call(
    String sessionInstanceId,
  ) {
    return GetInProgressTaskListProvider(
      sessionInstanceId,
    );
  }

  @override
  GetInProgressTaskListProvider getProviderOverride(
    covariant GetInProgressTaskListProvider provider,
  ) {
    return call(
      provider.sessionInstanceId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getInProgressTaskListProvider';
}

/// See also [getInProgressTaskList].
class GetInProgressTaskListProvider
    extends AutoDisposeFutureProvider<List<TaskInstance>> {
  /// See also [getInProgressTaskList].
  GetInProgressTaskListProvider(
    String sessionInstanceId,
  ) : this._internal(
          (ref) => getInProgressTaskList(
            ref as GetInProgressTaskListRef,
            sessionInstanceId,
          ),
          from: getInProgressTaskListProvider,
          name: r'getInProgressTaskListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInProgressTaskListHash,
          dependencies: GetInProgressTaskListFamily._dependencies,
          allTransitiveDependencies:
              GetInProgressTaskListFamily._allTransitiveDependencies,
          sessionInstanceId: sessionInstanceId,
        );

  GetInProgressTaskListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sessionInstanceId,
  }) : super.internal();

  final String sessionInstanceId;

  @override
  Override overrideWith(
    FutureOr<List<TaskInstance>> Function(GetInProgressTaskListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInProgressTaskListProvider._internal(
        (ref) => create(ref as GetInProgressTaskListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sessionInstanceId: sessionInstanceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TaskInstance>> createElement() {
    return _GetInProgressTaskListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInProgressTaskListProvider &&
        other.sessionInstanceId == sessionInstanceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sessionInstanceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetInProgressTaskListRef
    on AutoDisposeFutureProviderRef<List<TaskInstance>> {
  /// The parameter `sessionInstanceId` of this provider.
  String get sessionInstanceId;
}

class _GetInProgressTaskListProviderElement
    extends AutoDisposeFutureProviderElement<List<TaskInstance>>
    with GetInProgressTaskListRef {
  _GetInProgressTaskListProviderElement(super.provider);

  @override
  String get sessionInstanceId =>
      (origin as GetInProgressTaskListProvider).sessionInstanceId;
}

String _$getInProgressCounterTaskListHash() =>
    r'75f81298dd133476574f9854c9f3fb5c132899d3';

/// See also [getInProgressCounterTaskList].
@ProviderFor(getInProgressCounterTaskList)
const getInProgressCounterTaskListProvider =
    GetInProgressCounterTaskListFamily();

/// See also [getInProgressCounterTaskList].
class GetInProgressCounterTaskListFamily
    extends Family<AsyncValue<List<CounterTaskInstance>>> {
  /// See also [getInProgressCounterTaskList].
  const GetInProgressCounterTaskListFamily();

  /// See also [getInProgressCounterTaskList].
  GetInProgressCounterTaskListProvider call(
    String sessionInstanceId,
  ) {
    return GetInProgressCounterTaskListProvider(
      sessionInstanceId,
    );
  }

  @override
  GetInProgressCounterTaskListProvider getProviderOverride(
    covariant GetInProgressCounterTaskListProvider provider,
  ) {
    return call(
      provider.sessionInstanceId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getInProgressCounterTaskListProvider';
}

/// See also [getInProgressCounterTaskList].
class GetInProgressCounterTaskListProvider
    extends AutoDisposeFutureProvider<List<CounterTaskInstance>> {
  /// See also [getInProgressCounterTaskList].
  GetInProgressCounterTaskListProvider(
    String sessionInstanceId,
  ) : this._internal(
          (ref) => getInProgressCounterTaskList(
            ref as GetInProgressCounterTaskListRef,
            sessionInstanceId,
          ),
          from: getInProgressCounterTaskListProvider,
          name: r'getInProgressCounterTaskListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInProgressCounterTaskListHash,
          dependencies: GetInProgressCounterTaskListFamily._dependencies,
          allTransitiveDependencies:
              GetInProgressCounterTaskListFamily._allTransitiveDependencies,
          sessionInstanceId: sessionInstanceId,
        );

  GetInProgressCounterTaskListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sessionInstanceId,
  }) : super.internal();

  final String sessionInstanceId;

  @override
  Override overrideWith(
    FutureOr<List<CounterTaskInstance>> Function(
            GetInProgressCounterTaskListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInProgressCounterTaskListProvider._internal(
        (ref) => create(ref as GetInProgressCounterTaskListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sessionInstanceId: sessionInstanceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CounterTaskInstance>> createElement() {
    return _GetInProgressCounterTaskListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInProgressCounterTaskListProvider &&
        other.sessionInstanceId == sessionInstanceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sessionInstanceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetInProgressCounterTaskListRef
    on AutoDisposeFutureProviderRef<List<CounterTaskInstance>> {
  /// The parameter `sessionInstanceId` of this provider.
  String get sessionInstanceId;
}

class _GetInProgressCounterTaskListProviderElement
    extends AutoDisposeFutureProviderElement<List<CounterTaskInstance>>
    with GetInProgressCounterTaskListRef {
  _GetInProgressCounterTaskListProviderElement(super.provider);

  @override
  String get sessionInstanceId =>
      (origin as GetInProgressCounterTaskListProvider).sessionInstanceId;
}

String _$sessionTemplateListNotifierHash() =>
    r'9722ba36a0c47e2700af994ffe026739a92feb7b';

/// See also [SessionTemplateListNotifier].
@ProviderFor(SessionTemplateListNotifier)
final sessionTemplateListNotifierProvider = AutoDisposeAsyncNotifierProvider<
    SessionTemplateListNotifier, List<Session>>.internal(
  SessionTemplateListNotifier.new,
  name: r'sessionTemplateListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sessionTemplateListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SessionTemplateListNotifier = AutoDisposeAsyncNotifier<List<Session>>;
String _$sessionInstanceListNotifierHash() =>
    r'e7d070dea53c9f1faff978b52554ad628b0eb511';

/// See also [SessionInstanceListNotifier].
@ProviderFor(SessionInstanceListNotifier)
final sessionInstanceListNotifierProvider = AutoDisposeAsyncNotifierProvider<
    SessionInstanceListNotifier, List<SessionInstance>>.internal(
  SessionInstanceListNotifier.new,
  name: r'sessionInstanceListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sessionInstanceListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SessionInstanceListNotifier
    = AutoDisposeAsyncNotifier<List<SessionInstance>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
