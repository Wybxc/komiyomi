// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mangaInfoQueryHash() => r'be4de82f54f631abd55bb88ef650457435432e4f';

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

/// See also [mangaInfoQuery].
@ProviderFor(mangaInfoQuery)
const mangaInfoQueryProvider = MangaInfoQueryFamily();

/// See also [mangaInfoQuery].
class MangaInfoQueryFamily extends Family<ObservableQuery<Query$MangaInfo>?> {
  /// See also [mangaInfoQuery].
  const MangaInfoQueryFamily();

  /// See also [mangaInfoQuery].
  MangaInfoQueryProvider call(
    int mangaId,
  ) {
    return MangaInfoQueryProvider(
      mangaId,
    );
  }

  @override
  MangaInfoQueryProvider getProviderOverride(
    covariant MangaInfoQueryProvider provider,
  ) {
    return call(
      provider.mangaId,
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
  String? get name => r'mangaInfoQueryProvider';
}

/// See also [mangaInfoQuery].
class MangaInfoQueryProvider
    extends AutoDisposeProvider<ObservableQuery<Query$MangaInfo>?> {
  /// See also [mangaInfoQuery].
  MangaInfoQueryProvider(
    int mangaId,
  ) : this._internal(
          (ref) => mangaInfoQuery(
            ref as MangaInfoQueryRef,
            mangaId,
          ),
          from: mangaInfoQueryProvider,
          name: r'mangaInfoQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mangaInfoQueryHash,
          dependencies: MangaInfoQueryFamily._dependencies,
          allTransitiveDependencies:
              MangaInfoQueryFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  MangaInfoQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
  }) : super.internal();

  final int mangaId;

  @override
  Override overrideWith(
    ObservableQuery<Query$MangaInfo>? Function(MangaInfoQueryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MangaInfoQueryProvider._internal(
        (ref) => create(ref as MangaInfoQueryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ObservableQuery<Query$MangaInfo>?>
      createElement() {
    return _MangaInfoQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MangaInfoQueryProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MangaInfoQueryRef
    on AutoDisposeProviderRef<ObservableQuery<Query$MangaInfo>?> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _MangaInfoQueryProviderElement
    extends AutoDisposeProviderElement<ObservableQuery<Query$MangaInfo>?>
    with MangaInfoQueryRef {
  _MangaInfoQueryProviderElement(super.provider);

  @override
  int get mangaId => (origin as MangaInfoQueryProvider).mangaId;
}

String _$mangaInfoHash() => r'a2b280be837472d4fc843ee7d2af740889d4ad5b';

abstract class _$MangaInfo
    extends BuildlessAutoDisposeStreamNotifier<Fragment$MangaDetails> {
  late final int mangaId;

  Stream<Fragment$MangaDetails> build(
    int mangaId,
  );
}

/// See also [MangaInfo].
@ProviderFor(MangaInfo)
const mangaInfoProvider = MangaInfoFamily();

/// See also [MangaInfo].
class MangaInfoFamily extends Family<AsyncValue<Fragment$MangaDetails>> {
  /// See also [MangaInfo].
  const MangaInfoFamily();

  /// See also [MangaInfo].
  MangaInfoProvider call(
    int mangaId,
  ) {
    return MangaInfoProvider(
      mangaId,
    );
  }

  @override
  MangaInfoProvider getProviderOverride(
    covariant MangaInfoProvider provider,
  ) {
    return call(
      provider.mangaId,
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
  String? get name => r'mangaInfoProvider';
}

/// See also [MangaInfo].
class MangaInfoProvider extends AutoDisposeStreamNotifierProviderImpl<MangaInfo,
    Fragment$MangaDetails> {
  /// See also [MangaInfo].
  MangaInfoProvider(
    int mangaId,
  ) : this._internal(
          () => MangaInfo()..mangaId = mangaId,
          from: mangaInfoProvider,
          name: r'mangaInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mangaInfoHash,
          dependencies: MangaInfoFamily._dependencies,
          allTransitiveDependencies: MangaInfoFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  MangaInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
  }) : super.internal();

  final int mangaId;

  @override
  Stream<Fragment$MangaDetails> runNotifierBuild(
    covariant MangaInfo notifier,
  ) {
    return notifier.build(
      mangaId,
    );
  }

  @override
  Override overrideWith(MangaInfo Function() create) {
    return ProviderOverride(
      origin: this,
      override: MangaInfoProvider._internal(
        () => create()..mangaId = mangaId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<MangaInfo, Fragment$MangaDetails>
      createElement() {
    return _MangaInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MangaInfoProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MangaInfoRef
    on AutoDisposeStreamNotifierProviderRef<Fragment$MangaDetails> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _MangaInfoProviderElement
    extends AutoDisposeStreamNotifierProviderElement<MangaInfo,
        Fragment$MangaDetails> with MangaInfoRef {
  _MangaInfoProviderElement(super.provider);

  @override
  int get mangaId => (origin as MangaInfoProvider).mangaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
