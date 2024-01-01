// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getInProgressSessionListHash() =>
    r'b1c9b88c765d38f739ed4c4c22adaec90ab31ae3';

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
    r'1336f092fb247eadab8e07b40ab96d93b3c1c154';

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
    r'773bb10b7de538ffb58968f1ee12aa5ea56d627b';

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

String _$sessionTemplateListNotifierHash() =>
    r'9a9a835008d9e3881563b6d1ab879f26f0a816ca';

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
    r'cfe1db805960c9f49e2de6d1eed28adc4d52c892';

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
