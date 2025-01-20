// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chapterListQueryHash() => r'3f95e2c72f4c9d6f85b200e410f0bd55d7f03e53';

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

/// See also [chapterListQuery].
@ProviderFor(chapterListQuery)
const chapterListQueryProvider = ChapterListQueryFamily();

/// See also [chapterListQuery].
class ChapterListQueryFamily
    extends Family<ObservableQuery<Query$ChapterList>?> {
  /// See also [chapterListQuery].
  const ChapterListQueryFamily();

  /// See also [chapterListQuery].
  ChapterListQueryProvider call(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  }) {
    return ChapterListQueryProvider(
      mangaId,
      options: options,
    );
  }

  @override
  ChapterListQueryProvider getProviderOverride(
    covariant ChapterListQueryProvider provider,
  ) {
    return call(
      provider.mangaId,
      options: provider.options,
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
  String? get name => r'chapterListQueryProvider';
}

/// See also [chapterListQuery].
class ChapterListQueryProvider
    extends AutoDisposeProvider<ObservableQuery<Query$ChapterList>?> {
  /// See also [chapterListQuery].
  ChapterListQueryProvider(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  }) : this._internal(
          (ref) => chapterListQuery(
            ref as ChapterListQueryRef,
            mangaId,
            options: options,
          ),
          from: chapterListQueryProvider,
          name: r'chapterListQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterListQueryHash,
          dependencies: ChapterListQueryFamily._dependencies,
          allTransitiveDependencies:
              ChapterListQueryFamily._allTransitiveDependencies,
          mangaId: mangaId,
          options: options,
        );

  ChapterListQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
    required this.options,
  }) : super.internal();

  final int mangaId;
  final ChapterListOptions options;

  @override
  Override overrideWith(
    ObservableQuery<Query$ChapterList>? Function(ChapterListQueryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChapterListQueryProvider._internal(
        (ref) => create(ref as ChapterListQueryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
        options: options,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ObservableQuery<Query$ChapterList>?>
      createElement() {
    return _ChapterListQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterListQueryProvider &&
        other.mangaId == mangaId &&
        other.options == options;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);
    hash = _SystemHash.combine(hash, options.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChapterListQueryRef
    on AutoDisposeProviderRef<ObservableQuery<Query$ChapterList>?> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;

  /// The parameter `options` of this provider.
  ChapterListOptions get options;
}

class _ChapterListQueryProviderElement
    extends AutoDisposeProviderElement<ObservableQuery<Query$ChapterList>?>
    with ChapterListQueryRef {
  _ChapterListQueryProviderElement(super.provider);

  @override
  int get mangaId => (origin as ChapterListQueryProvider).mangaId;
  @override
  ChapterListOptions get options =>
      (origin as ChapterListQueryProvider).options;
}

String _$chapterListHash() => r'3e2a8dd19ecccff1d6a38cbe7c8ae9a1530cbb6b';

abstract class _$ChapterList
    extends BuildlessAutoDisposeStreamNotifier<List<Fragment$Chapter>> {
  late final int mangaId;
  late final ChapterListOptions options;

  Stream<List<Fragment$Chapter>> build(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  });
}

/// See also [ChapterList].
@ProviderFor(ChapterList)
const chapterListProvider = ChapterListFamily();

/// See also [ChapterList].
class ChapterListFamily extends Family<AsyncValue<List<Fragment$Chapter>>> {
  /// See also [ChapterList].
  const ChapterListFamily();

  /// See also [ChapterList].
  ChapterListProvider call(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  }) {
    return ChapterListProvider(
      mangaId,
      options: options,
    );
  }

  @override
  ChapterListProvider getProviderOverride(
    covariant ChapterListProvider provider,
  ) {
    return call(
      provider.mangaId,
      options: provider.options,
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
  String? get name => r'chapterListProvider';
}

/// See also [ChapterList].
class ChapterListProvider extends AutoDisposeStreamNotifierProviderImpl<
    ChapterList, List<Fragment$Chapter>> {
  /// See also [ChapterList].
  ChapterListProvider(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  }) : this._internal(
          () => ChapterList()
            ..mangaId = mangaId
            ..options = options,
          from: chapterListProvider,
          name: r'chapterListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterListHash,
          dependencies: ChapterListFamily._dependencies,
          allTransitiveDependencies:
              ChapterListFamily._allTransitiveDependencies,
          mangaId: mangaId,
          options: options,
        );

  ChapterListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
    required this.options,
  }) : super.internal();

  final int mangaId;
  final ChapterListOptions options;

  @override
  Stream<List<Fragment$Chapter>> runNotifierBuild(
    covariant ChapterList notifier,
  ) {
    return notifier.build(
      mangaId,
      options: options,
    );
  }

  @override
  Override overrideWith(ChapterList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChapterListProvider._internal(
        () => create()
          ..mangaId = mangaId
          ..options = options,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
        options: options,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<ChapterList, List<Fragment$Chapter>>
      createElement() {
    return _ChapterListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterListProvider &&
        other.mangaId == mangaId &&
        other.options == options;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);
    hash = _SystemHash.combine(hash, options.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChapterListRef
    on AutoDisposeStreamNotifierProviderRef<List<Fragment$Chapter>> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;

  /// The parameter `options` of this provider.
  ChapterListOptions get options;
}

class _ChapterListProviderElement
    extends AutoDisposeStreamNotifierProviderElement<ChapterList,
        List<Fragment$Chapter>> with ChapterListRef {
  _ChapterListProviderElement(super.provider);

  @override
  int get mangaId => (origin as ChapterListProvider).mangaId;
  @override
  ChapterListOptions get options => (origin as ChapterListProvider).options;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
