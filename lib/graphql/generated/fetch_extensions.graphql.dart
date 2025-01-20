import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Mutation$FetchExtensions {
  factory Variables$Mutation$FetchExtensions(
          {Input$FetchExtensionsInput? input}) =>
      Variables$Mutation$FetchExtensions._({
        if (input != null) r'input': input,
      });

  Variables$Mutation$FetchExtensions._(this._$data);

  factory Variables$Mutation$FetchExtensions.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$FetchExtensionsInput.fromJson(
              (l$input as Map<String, dynamic>));
    }
    return Variables$Mutation$FetchExtensions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FetchExtensionsInput? get input =>
      (_$data['input'] as Input$FetchExtensionsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$FetchExtensions<
          Variables$Mutation$FetchExtensions>
      get copyWith => CopyWith$Variables$Mutation$FetchExtensions(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FetchExtensions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$FetchExtensions<TRes> {
  factory CopyWith$Variables$Mutation$FetchExtensions(
    Variables$Mutation$FetchExtensions instance,
    TRes Function(Variables$Mutation$FetchExtensions) then,
  ) = _CopyWithImpl$Variables$Mutation$FetchExtensions;

  factory CopyWith$Variables$Mutation$FetchExtensions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FetchExtensions;

  TRes call({Input$FetchExtensionsInput? input});
}

class _CopyWithImpl$Variables$Mutation$FetchExtensions<TRes>
    implements CopyWith$Variables$Mutation$FetchExtensions<TRes> {
  _CopyWithImpl$Variables$Mutation$FetchExtensions(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FetchExtensions _instance;

  final TRes Function(Variables$Mutation$FetchExtensions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$FetchExtensions._({
        ..._instance._$data,
        if (input != _undefined)
          'input': (input as Input$FetchExtensionsInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FetchExtensions<TRes>
    implements CopyWith$Variables$Mutation$FetchExtensions<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FetchExtensions(this._res);

  TRes _res;

  call({Input$FetchExtensionsInput? input}) => _res;
}

class Mutation$FetchExtensions {
  Mutation$FetchExtensions({
    this.fetchExtensions,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FetchExtensions.fromJson(Map<String, dynamic> json) {
    final l$fetchExtensions = json['fetchExtensions'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchExtensions(
      fetchExtensions: l$fetchExtensions == null
          ? null
          : Mutation$FetchExtensions$fetchExtensions.fromJson(
              (l$fetchExtensions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FetchExtensions$fetchExtensions? fetchExtensions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchExtensions = fetchExtensions;
    _resultData['fetchExtensions'] = l$fetchExtensions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchExtensions = fetchExtensions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchExtensions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchExtensions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchExtensions = fetchExtensions;
    final lOther$fetchExtensions = other.fetchExtensions;
    if (l$fetchExtensions != lOther$fetchExtensions) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FetchExtensions
    on Mutation$FetchExtensions {
  CopyWith$Mutation$FetchExtensions<Mutation$FetchExtensions> get copyWith =>
      CopyWith$Mutation$FetchExtensions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FetchExtensions<TRes> {
  factory CopyWith$Mutation$FetchExtensions(
    Mutation$FetchExtensions instance,
    TRes Function(Mutation$FetchExtensions) then,
  ) = _CopyWithImpl$Mutation$FetchExtensions;

  factory CopyWith$Mutation$FetchExtensions.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchExtensions;

  TRes call({
    Mutation$FetchExtensions$fetchExtensions? fetchExtensions,
    String? $__typename,
  });
  CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> get fetchExtensions;
}

class _CopyWithImpl$Mutation$FetchExtensions<TRes>
    implements CopyWith$Mutation$FetchExtensions<TRes> {
  _CopyWithImpl$Mutation$FetchExtensions(
    this._instance,
    this._then,
  );

  final Mutation$FetchExtensions _instance;

  final TRes Function(Mutation$FetchExtensions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchExtensions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchExtensions(
        fetchExtensions: fetchExtensions == _undefined
            ? _instance.fetchExtensions
            : (fetchExtensions as Mutation$FetchExtensions$fetchExtensions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> get fetchExtensions {
    final local$fetchExtensions = _instance.fetchExtensions;
    return local$fetchExtensions == null
        ? CopyWith$Mutation$FetchExtensions$fetchExtensions.stub(
            _then(_instance))
        : CopyWith$Mutation$FetchExtensions$fetchExtensions(
            local$fetchExtensions, (e) => call(fetchExtensions: e));
  }
}

class _CopyWithStubImpl$Mutation$FetchExtensions<TRes>
    implements CopyWith$Mutation$FetchExtensions<TRes> {
  _CopyWithStubImpl$Mutation$FetchExtensions(this._res);

  TRes _res;

  call({
    Mutation$FetchExtensions$fetchExtensions? fetchExtensions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> get fetchExtensions =>
      CopyWith$Mutation$FetchExtensions$fetchExtensions.stub(_res);
}

const documentNodeMutationFetchExtensions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FetchExtensions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'FetchExtensionsInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchExtensions'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'extensions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pkgName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lang'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'versionCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'versionName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'iconUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'repo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isNsfw'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isInstalled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isObsolete'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasUpdate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$FetchExtensions _parserFn$Mutation$FetchExtensions(
        Map<String, dynamic> data) =>
    Mutation$FetchExtensions.fromJson(data);
typedef OnMutationCompleted$Mutation$FetchExtensions = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$FetchExtensions?,
);

class Options$Mutation$FetchExtensions
    extends graphql.MutationOptions<Mutation$FetchExtensions> {
  Options$Mutation$FetchExtensions({
    String? operationName,
    Variables$Mutation$FetchExtensions? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchExtensions? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FetchExtensions? onCompleted,
    graphql.OnMutationUpdate<Mutation$FetchExtensions>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$FetchExtensions(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFetchExtensions,
          parserFn: _parserFn$Mutation$FetchExtensions,
        );

  final OnMutationCompleted$Mutation$FetchExtensions? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FetchExtensions
    extends graphql.WatchQueryOptions<Mutation$FetchExtensions> {
  WatchOptions$Mutation$FetchExtensions({
    String? operationName,
    Variables$Mutation$FetchExtensions? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchExtensions? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationFetchExtensions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FetchExtensions,
        );
}

extension ClientExtension$Mutation$FetchExtensions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FetchExtensions>> mutate$FetchExtensions(
          [Options$Mutation$FetchExtensions? options]) async =>
      await this.mutate(options ?? Options$Mutation$FetchExtensions());
  graphql.ObservableQuery<
      Mutation$FetchExtensions> watchMutation$FetchExtensions(
          [WatchOptions$Mutation$FetchExtensions? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$FetchExtensions());
}

class Mutation$FetchExtensions$fetchExtensions {
  Mutation$FetchExtensions$fetchExtensions({
    required this.extensions,
    this.$__typename = 'FetchExtensionsPayload',
  });

  factory Mutation$FetchExtensions$fetchExtensions.fromJson(
      Map<String, dynamic> json) {
    final l$extensions = json['extensions'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchExtensions$fetchExtensions(
      extensions: (l$extensions as List<dynamic>)
          .map((e) =>
              Mutation$FetchExtensions$fetchExtensions$extensions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$FetchExtensions$fetchExtensions$extensions> extensions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extensions = extensions;
    _resultData['extensions'] = l$extensions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extensions = extensions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$extensions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchExtensions$fetchExtensions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extensions = extensions;
    final lOther$extensions = other.extensions;
    if (l$extensions.length != lOther$extensions.length) {
      return false;
    }
    for (int i = 0; i < l$extensions.length; i++) {
      final l$extensions$entry = l$extensions[i];
      final lOther$extensions$entry = lOther$extensions[i];
      if (l$extensions$entry != lOther$extensions$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FetchExtensions$fetchExtensions
    on Mutation$FetchExtensions$fetchExtensions {
  CopyWith$Mutation$FetchExtensions$fetchExtensions<
          Mutation$FetchExtensions$fetchExtensions>
      get copyWith => CopyWith$Mutation$FetchExtensions$fetchExtensions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> {
  factory CopyWith$Mutation$FetchExtensions$fetchExtensions(
    Mutation$FetchExtensions$fetchExtensions instance,
    TRes Function(Mutation$FetchExtensions$fetchExtensions) then,
  ) = _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions;

  factory CopyWith$Mutation$FetchExtensions$fetchExtensions.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions;

  TRes call({
    List<Mutation$FetchExtensions$fetchExtensions$extensions>? extensions,
    String? $__typename,
  });
  TRes extensions(
      Iterable<Mutation$FetchExtensions$fetchExtensions$extensions> Function(
              Iterable<
                  CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<
                      Mutation$FetchExtensions$fetchExtensions$extensions>>)
          _fn);
}

class _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions<TRes>
    implements CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> {
  _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions(
    this._instance,
    this._then,
  );

  final Mutation$FetchExtensions$fetchExtensions _instance;

  final TRes Function(Mutation$FetchExtensions$fetchExtensions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extensions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchExtensions$fetchExtensions(
        extensions: extensions == _undefined || extensions == null
            ? _instance.extensions
            : (extensions
                as List<Mutation$FetchExtensions$fetchExtensions$extensions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes extensions(
          Iterable<Mutation$FetchExtensions$fetchExtensions$extensions> Function(
                  Iterable<
                      CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<
                          Mutation$FetchExtensions$fetchExtensions$extensions>>)
              _fn) =>
      call(
          extensions: _fn(_instance.extensions.map((e) =>
              CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions<TRes>
    implements CopyWith$Mutation$FetchExtensions$fetchExtensions<TRes> {
  _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions(this._res);

  TRes _res;

  call({
    List<Mutation$FetchExtensions$fetchExtensions$extensions>? extensions,
    String? $__typename,
  }) =>
      _res;

  extensions(_fn) => _res;
}

class Mutation$FetchExtensions$fetchExtensions$extensions {
  Mutation$FetchExtensions$fetchExtensions$extensions({
    required this.pkgName,
    required this.name,
    required this.lang,
    required this.versionCode,
    required this.versionName,
    required this.iconUrl,
    this.repo,
    required this.isNsfw,
    required this.isInstalled,
    required this.isObsolete,
    required this.hasUpdate,
    this.$__typename = 'ExtensionType',
  });

  factory Mutation$FetchExtensions$fetchExtensions$extensions.fromJson(
      Map<String, dynamic> json) {
    final l$pkgName = json['pkgName'];
    final l$name = json['name'];
    final l$lang = json['lang'];
    final l$versionCode = json['versionCode'];
    final l$versionName = json['versionName'];
    final l$iconUrl = json['iconUrl'];
    final l$repo = json['repo'];
    final l$isNsfw = json['isNsfw'];
    final l$isInstalled = json['isInstalled'];
    final l$isObsolete = json['isObsolete'];
    final l$hasUpdate = json['hasUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchExtensions$fetchExtensions$extensions(
      pkgName: (l$pkgName as String),
      name: (l$name as String),
      lang: (l$lang as String),
      versionCode: (l$versionCode as int),
      versionName: (l$versionName as String),
      iconUrl: (l$iconUrl as String),
      repo: (l$repo as String?),
      isNsfw: (l$isNsfw as bool),
      isInstalled: (l$isInstalled as bool),
      isObsolete: (l$isObsolete as bool),
      hasUpdate: (l$hasUpdate as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String pkgName;

  final String name;

  final String lang;

  final int versionCode;

  final String versionName;

  final String iconUrl;

  final String? repo;

  final bool isNsfw;

  final bool isInstalled;

  final bool isObsolete;

  final bool hasUpdate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pkgName = pkgName;
    _resultData['pkgName'] = l$pkgName;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$lang = lang;
    _resultData['lang'] = l$lang;
    final l$versionCode = versionCode;
    _resultData['versionCode'] = l$versionCode;
    final l$versionName = versionName;
    _resultData['versionName'] = l$versionName;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$repo = repo;
    _resultData['repo'] = l$repo;
    final l$isNsfw = isNsfw;
    _resultData['isNsfw'] = l$isNsfw;
    final l$isInstalled = isInstalled;
    _resultData['isInstalled'] = l$isInstalled;
    final l$isObsolete = isObsolete;
    _resultData['isObsolete'] = l$isObsolete;
    final l$hasUpdate = hasUpdate;
    _resultData['hasUpdate'] = l$hasUpdate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pkgName = pkgName;
    final l$name = name;
    final l$lang = lang;
    final l$versionCode = versionCode;
    final l$versionName = versionName;
    final l$iconUrl = iconUrl;
    final l$repo = repo;
    final l$isNsfw = isNsfw;
    final l$isInstalled = isInstalled;
    final l$isObsolete = isObsolete;
    final l$hasUpdate = hasUpdate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pkgName,
      l$name,
      l$lang,
      l$versionCode,
      l$versionName,
      l$iconUrl,
      l$repo,
      l$isNsfw,
      l$isInstalled,
      l$isObsolete,
      l$hasUpdate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchExtensions$fetchExtensions$extensions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pkgName = pkgName;
    final lOther$pkgName = other.pkgName;
    if (l$pkgName != lOther$pkgName) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$lang = lang;
    final lOther$lang = other.lang;
    if (l$lang != lOther$lang) {
      return false;
    }
    final l$versionCode = versionCode;
    final lOther$versionCode = other.versionCode;
    if (l$versionCode != lOther$versionCode) {
      return false;
    }
    final l$versionName = versionName;
    final lOther$versionName = other.versionName;
    if (l$versionName != lOther$versionName) {
      return false;
    }
    final l$iconUrl = iconUrl;
    final lOther$iconUrl = other.iconUrl;
    if (l$iconUrl != lOther$iconUrl) {
      return false;
    }
    final l$repo = repo;
    final lOther$repo = other.repo;
    if (l$repo != lOther$repo) {
      return false;
    }
    final l$isNsfw = isNsfw;
    final lOther$isNsfw = other.isNsfw;
    if (l$isNsfw != lOther$isNsfw) {
      return false;
    }
    final l$isInstalled = isInstalled;
    final lOther$isInstalled = other.isInstalled;
    if (l$isInstalled != lOther$isInstalled) {
      return false;
    }
    final l$isObsolete = isObsolete;
    final lOther$isObsolete = other.isObsolete;
    if (l$isObsolete != lOther$isObsolete) {
      return false;
    }
    final l$hasUpdate = hasUpdate;
    final lOther$hasUpdate = other.hasUpdate;
    if (l$hasUpdate != lOther$hasUpdate) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FetchExtensions$fetchExtensions$extensions
    on Mutation$FetchExtensions$fetchExtensions$extensions {
  CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<
          Mutation$FetchExtensions$fetchExtensions$extensions>
      get copyWith =>
          CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<
    TRes> {
  factory CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions(
    Mutation$FetchExtensions$fetchExtensions$extensions instance,
    TRes Function(Mutation$FetchExtensions$fetchExtensions$extensions) then,
  ) = _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions$extensions;

  factory CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions$extensions;

  TRes call({
    String? pkgName,
    String? name,
    String? lang,
    int? versionCode,
    String? versionName,
    String? iconUrl,
    String? repo,
    bool? isNsfw,
    bool? isInstalled,
    bool? isObsolete,
    bool? hasUpdate,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions$extensions<TRes>
    implements
        CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<TRes> {
  _CopyWithImpl$Mutation$FetchExtensions$fetchExtensions$extensions(
    this._instance,
    this._then,
  );

  final Mutation$FetchExtensions$fetchExtensions$extensions _instance;

  final TRes Function(Mutation$FetchExtensions$fetchExtensions$extensions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pkgName = _undefined,
    Object? name = _undefined,
    Object? lang = _undefined,
    Object? versionCode = _undefined,
    Object? versionName = _undefined,
    Object? iconUrl = _undefined,
    Object? repo = _undefined,
    Object? isNsfw = _undefined,
    Object? isInstalled = _undefined,
    Object? isObsolete = _undefined,
    Object? hasUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchExtensions$fetchExtensions$extensions(
        pkgName: pkgName == _undefined || pkgName == null
            ? _instance.pkgName
            : (pkgName as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        lang: lang == _undefined || lang == null
            ? _instance.lang
            : (lang as String),
        versionCode: versionCode == _undefined || versionCode == null
            ? _instance.versionCode
            : (versionCode as int),
        versionName: versionName == _undefined || versionName == null
            ? _instance.versionName
            : (versionName as String),
        iconUrl: iconUrl == _undefined || iconUrl == null
            ? _instance.iconUrl
            : (iconUrl as String),
        repo: repo == _undefined ? _instance.repo : (repo as String?),
        isNsfw: isNsfw == _undefined || isNsfw == null
            ? _instance.isNsfw
            : (isNsfw as bool),
        isInstalled: isInstalled == _undefined || isInstalled == null
            ? _instance.isInstalled
            : (isInstalled as bool),
        isObsolete: isObsolete == _undefined || isObsolete == null
            ? _instance.isObsolete
            : (isObsolete as bool),
        hasUpdate: hasUpdate == _undefined || hasUpdate == null
            ? _instance.hasUpdate
            : (hasUpdate as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions$extensions<
        TRes>
    implements
        CopyWith$Mutation$FetchExtensions$fetchExtensions$extensions<TRes> {
  _CopyWithStubImpl$Mutation$FetchExtensions$fetchExtensions$extensions(
      this._res);

  TRes _res;

  call({
    String? pkgName,
    String? name,
    String? lang,
    int? versionCode,
    String? versionName,
    String? iconUrl,
    String? repo,
    bool? isNsfw,
    bool? isInstalled,
    bool? isObsolete,
    bool? hasUpdate,
    String? $__typename,
  }) =>
      _res;
}
