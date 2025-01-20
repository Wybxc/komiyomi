// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_options.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chapterOptionsNotifierHash() =>
    r'ebe148e877317d29c441da952eec800f67e47d8d';

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

abstract class _$ChapterOptionsNotifier
    extends BuildlessAutoDisposeNotifier<ChapterOptions> {
  late final int mangaId;

  ChapterOptions build(
    int mangaId,
  );
}

/// See also [ChapterOptionsNotifier].
@ProviderFor(ChapterOptionsNotifier)
const chapterOptionsNotifierProvider = ChapterOptionsNotifierFamily();

/// See also [ChapterOptionsNotifier].
class ChapterOptionsNotifierFamily extends Family<ChapterOptions> {
  /// See also [ChapterOptionsNotifier].
  const ChapterOptionsNotifierFamily();

  /// See also [ChapterOptionsNotifier].
  ChapterOptionsNotifierProvider call(
    int mangaId,
  ) {
    return ChapterOptionsNotifierProvider(
      mangaId,
    );
  }

  @override
  ChapterOptionsNotifierProvider getProviderOverride(
    covariant ChapterOptionsNotifierProvider provider,
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
  String? get name => r'chapterOptionsNotifierProvider';
}

/// See also [ChapterOptionsNotifier].
class ChapterOptionsNotifierProvider extends AutoDisposeNotifierProviderImpl<
    ChapterOptionsNotifier, ChapterOptions> {
  /// See also [ChapterOptionsNotifier].
  ChapterOptionsNotifierProvider(
    int mangaId,
  ) : this._internal(
          () => ChapterOptionsNotifier()..mangaId = mangaId,
          from: chapterOptionsNotifierProvider,
          name: r'chapterOptionsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterOptionsNotifierHash,
          dependencies: ChapterOptionsNotifierFamily._dependencies,
          allTransitiveDependencies:
              ChapterOptionsNotifierFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  ChapterOptionsNotifierProvider._internal(
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
  ChapterOptions runNotifierBuild(
    covariant ChapterOptionsNotifier notifier,
  ) {
    return notifier.build(
      mangaId,
    );
  }

  @override
  Override overrideWith(ChapterOptionsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChapterOptionsNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChapterOptionsNotifier, ChapterOptions>
      createElement() {
    return _ChapterOptionsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterOptionsNotifierProvider && other.mangaId == mangaId;
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
mixin ChapterOptionsNotifierRef
    on AutoDisposeNotifierProviderRef<ChapterOptions> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _ChapterOptionsNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ChapterOptionsNotifier,
        ChapterOptions> with ChapterOptionsNotifierRef {
  _ChapterOptionsNotifierProviderElement(super.provider);

  @override
  int get mangaId => (origin as ChapterOptionsNotifierProvider).mangaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
