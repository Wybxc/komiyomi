// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginSettingsHash() => r'61f2d52c759221153ee52bef996850bb461968fe';

/// See also [LoginSettings].
@ProviderFor(LoginSettings)
final loginSettingsProvider =
    AutoDisposeNotifierProvider<LoginSettings, HttpBasicAuth?>.internal(
  LoginSettings.new,
  name: r'loginSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginSettingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginSettings = AutoDisposeNotifier<HttpBasicAuth?>;
String _$graphQLHash() => r'2f8898e5739cf0b37a2207c020552794e39002a0';

/// See also [GraphQL].
@ProviderFor(GraphQL)
final graphQLProvider = NotifierProvider<GraphQL, LoginState?>.internal(
  GraphQL.new,
  name: r'graphQLProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$graphQLHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GraphQL = Notifier<LoginState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
