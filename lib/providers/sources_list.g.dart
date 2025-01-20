// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sourcesListQueryHash() => r'6cc202a6490f39275042c5320b397350419d7119';

/// See also [sourcesListQuery].
@ProviderFor(sourcesListQuery)
final sourcesListQueryProvider =
    AutoDisposeProvider<ObservableQuery<Query$SourcesList>?>.internal(
  sourcesListQuery,
  name: r'sourcesListQueryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sourcesListQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SourcesListQueryRef
    = AutoDisposeProviderRef<ObservableQuery<Query$SourcesList>?>;
String _$sourcesListHash() => r'58a24bbfc731811481d9cbcf6b098adaac1337e3';

/// See also [SourcesList].
@ProviderFor(SourcesList)
final sourcesListProvider = AutoDisposeStreamNotifierProvider<SourcesList,
    List<Fragment$Source>>.internal(
  SourcesList.new,
  name: r'sourcesListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sourcesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SourcesList = AutoDisposeStreamNotifier<List<Fragment$Source>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
