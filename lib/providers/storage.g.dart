// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storageHash() => r'349eb440b2823ff7aa8de87443d347adb37d1fa7';

/// See also [storage].
@ProviderFor(storage)
final storageProvider =
    AutoDisposeProvider<SharedPreferencesWithCache>.internal(
  storage,
  name: r'storageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StorageRef = AutoDisposeProviderRef<SharedPreferencesWithCache>;
String _$strPrefHash() => r'2a35fbcc2fb24d6c024e7716c3d1e6249b18d61a';

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

abstract class _$StrPref extends BuildlessAutoDisposeNotifier<String?> {
  late final String key;

  String? build(
    String key,
  );
}

/// See also [StrPref].
@ProviderFor(StrPref)
const strPrefProvider = StrPrefFamily();

/// See also [StrPref].
class StrPrefFamily extends Family<String?> {
  /// See also [StrPref].
  const StrPrefFamily();

  /// See also [StrPref].
  StrPrefProvider call(
    String key,
  ) {
    return StrPrefProvider(
      key,
    );
  }

  @override
  StrPrefProvider getProviderOverride(
    covariant StrPrefProvider provider,
  ) {
    return call(
      provider.key,
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
  String? get name => r'strPrefProvider';
}

/// See also [StrPref].
class StrPrefProvider
    extends AutoDisposeNotifierProviderImpl<StrPref, String?> {
  /// See also [StrPref].
  StrPrefProvider(
    String key,
  ) : this._internal(
          () => StrPref()..key = key,
          from: strPrefProvider,
          name: r'strPrefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strPrefHash,
          dependencies: StrPrefFamily._dependencies,
          allTransitiveDependencies: StrPrefFamily._allTransitiveDependencies,
          key: key,
        );

  StrPrefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  String? runNotifierBuild(
    covariant StrPref notifier,
  ) {
    return notifier.build(
      key,
    );
  }

  @override
  Override overrideWith(StrPref Function() create) {
    return ProviderOverride(
      origin: this,
      override: StrPrefProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<StrPref, String?> createElement() {
    return _StrPrefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrPrefProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StrPrefRef on AutoDisposeNotifierProviderRef<String?> {
  /// The parameter `key` of this provider.
  String get key;
}

class _StrPrefProviderElement
    extends AutoDisposeNotifierProviderElement<StrPref, String?>
    with StrPrefRef {
  _StrPrefProviderElement(super.provider);

  @override
  String get key => (origin as StrPrefProvider).key;
}

String _$boolPrefHash() => r'9bf3f2e2a6c313ce7b36a680e5ea2aacba445f0d';

abstract class _$BoolPref extends BuildlessAutoDisposeNotifier<bool?> {
  late final String key;

  bool? build(
    String key,
  );
}

/// See also [BoolPref].
@ProviderFor(BoolPref)
const boolPrefProvider = BoolPrefFamily();

/// See also [BoolPref].
class BoolPrefFamily extends Family<bool?> {
  /// See also [BoolPref].
  const BoolPrefFamily();

  /// See also [BoolPref].
  BoolPrefProvider call(
    String key,
  ) {
    return BoolPrefProvider(
      key,
    );
  }

  @override
  BoolPrefProvider getProviderOverride(
    covariant BoolPrefProvider provider,
  ) {
    return call(
      provider.key,
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
  String? get name => r'boolPrefProvider';
}

/// See also [BoolPref].
class BoolPrefProvider
    extends AutoDisposeNotifierProviderImpl<BoolPref, bool?> {
  /// See also [BoolPref].
  BoolPrefProvider(
    String key,
  ) : this._internal(
          () => BoolPref()..key = key,
          from: boolPrefProvider,
          name: r'boolPrefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$boolPrefHash,
          dependencies: BoolPrefFamily._dependencies,
          allTransitiveDependencies: BoolPrefFamily._allTransitiveDependencies,
          key: key,
        );

  BoolPrefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  bool? runNotifierBuild(
    covariant BoolPref notifier,
  ) {
    return notifier.build(
      key,
    );
  }

  @override
  Override overrideWith(BoolPref Function() create) {
    return ProviderOverride(
      origin: this,
      override: BoolPrefProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BoolPref, bool?> createElement() {
    return _BoolPrefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolPrefProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BoolPrefRef on AutoDisposeNotifierProviderRef<bool?> {
  /// The parameter `key` of this provider.
  String get key;
}

class _BoolPrefProviderElement
    extends AutoDisposeNotifierProviderElement<BoolPref, bool?>
    with BoolPrefRef {
  _BoolPrefProviderElement(super.provider);

  @override
  String get key => (origin as BoolPrefProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
