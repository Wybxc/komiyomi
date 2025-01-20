// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_categories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allCategoriesQueryHash() =>
    r'a9d0daa09c7f4fe9817c4a531a79cbd85bae925f';

/// See also [allCategoriesQuery].
@ProviderFor(allCategoriesQuery)
final allCategoriesQueryProvider =
    AutoDisposeProvider<ObservableQuery<Query$AllCategories>?>.internal(
  allCategoriesQuery,
  name: r'allCategoriesQueryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allCategoriesQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllCategoriesQueryRef
    = AutoDisposeProviderRef<ObservableQuery<Query$AllCategories>?>;
String _$allCategoriesHash() => r'76044984623195e189d3ef64364ba74c3687802b';

/// See also [AllCategories].
@ProviderFor(AllCategories)
final allCategoriesProvider = AutoDisposeStreamNotifierProvider<AllCategories,
    List<Fragment$Manga>>.internal(
  AllCategories.new,
  name: r'allCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AllCategories = AutoDisposeStreamNotifier<List<Fragment$Manga>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
