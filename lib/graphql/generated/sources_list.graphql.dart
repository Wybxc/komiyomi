import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Source {
  Fragment$Source({
    required this.id,
    required this.name,
    required this.displayName,
    required this.lang,
    required this.iconUrl,
    required this.isNsfw,
    required this.supportsLatest,
    required this.$extension,
    this.$__typename = 'SourceType',
  });

  factory Fragment$Source.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$displayName = json['displayName'];
    final l$lang = json['lang'];
    final l$iconUrl = json['iconUrl'];
    final l$isNsfw = json['isNsfw'];
    final l$supportsLatest = json['supportsLatest'];
    final l$$extension = json['extension'];
    final l$$__typename = json['__typename'];
    return Fragment$Source(
      id: (l$id as String),
      name: (l$name as String),
      displayName: (l$displayName as String),
      lang: (l$lang as String),
      iconUrl: (l$iconUrl as String),
      isNsfw: (l$isNsfw as bool),
      supportsLatest: (l$supportsLatest as bool),
      $extension: Fragment$Source$extension.fromJson(
          (l$$extension as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String displayName;

  final String lang;

  final String iconUrl;

  final bool isNsfw;

  final bool supportsLatest;

  final Fragment$Source$extension $extension;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$lang = lang;
    _resultData['lang'] = l$lang;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$isNsfw = isNsfw;
    _resultData['isNsfw'] = l$isNsfw;
    final l$supportsLatest = supportsLatest;
    _resultData['supportsLatest'] = l$supportsLatest;
    final l$$extension = $extension;
    _resultData['extension'] = l$$extension.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$displayName = displayName;
    final l$lang = lang;
    final l$iconUrl = iconUrl;
    final l$isNsfw = isNsfw;
    final l$supportsLatest = supportsLatest;
    final l$$extension = $extension;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$displayName,
      l$lang,
      l$iconUrl,
      l$isNsfw,
      l$supportsLatest,
      l$$extension,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Source || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$lang = lang;
    final lOther$lang = other.lang;
    if (l$lang != lOther$lang) {
      return false;
    }
    final l$iconUrl = iconUrl;
    final lOther$iconUrl = other.iconUrl;
    if (l$iconUrl != lOther$iconUrl) {
      return false;
    }
    final l$isNsfw = isNsfw;
    final lOther$isNsfw = other.isNsfw;
    if (l$isNsfw != lOther$isNsfw) {
      return false;
    }
    final l$supportsLatest = supportsLatest;
    final lOther$supportsLatest = other.supportsLatest;
    if (l$supportsLatest != lOther$supportsLatest) {
      return false;
    }
    final l$$extension = $extension;
    final lOther$$extension = other.$extension;
    if (l$$extension != lOther$$extension) {
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

extension UtilityExtension$Fragment$Source on Fragment$Source {
  CopyWith$Fragment$Source<Fragment$Source> get copyWith =>
      CopyWith$Fragment$Source(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Source<TRes> {
  factory CopyWith$Fragment$Source(
    Fragment$Source instance,
    TRes Function(Fragment$Source) then,
  ) = _CopyWithImpl$Fragment$Source;

  factory CopyWith$Fragment$Source.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Source;

  TRes call({
    String? id,
    String? name,
    String? displayName,
    String? lang,
    String? iconUrl,
    bool? isNsfw,
    bool? supportsLatest,
    Fragment$Source$extension? $extension,
    String? $__typename,
  });
  CopyWith$Fragment$Source$extension<TRes> get $extension;
}

class _CopyWithImpl$Fragment$Source<TRes>
    implements CopyWith$Fragment$Source<TRes> {
  _CopyWithImpl$Fragment$Source(
    this._instance,
    this._then,
  );

  final Fragment$Source _instance;

  final TRes Function(Fragment$Source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? displayName = _undefined,
    Object? lang = _undefined,
    Object? iconUrl = _undefined,
    Object? isNsfw = _undefined,
    Object? supportsLatest = _undefined,
    Object? $extension = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Source(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        lang: lang == _undefined || lang == null
            ? _instance.lang
            : (lang as String),
        iconUrl: iconUrl == _undefined || iconUrl == null
            ? _instance.iconUrl
            : (iconUrl as String),
        isNsfw: isNsfw == _undefined || isNsfw == null
            ? _instance.isNsfw
            : (isNsfw as bool),
        supportsLatest: supportsLatest == _undefined || supportsLatest == null
            ? _instance.supportsLatest
            : (supportsLatest as bool),
        $extension: $extension == _undefined || $extension == null
            ? _instance.$extension
            : ($extension as Fragment$Source$extension),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Source$extension<TRes> get $extension {
    final local$$extension = _instance.$extension;
    return CopyWith$Fragment$Source$extension(
        local$$extension, (e) => call($extension: e));
  }
}

class _CopyWithStubImpl$Fragment$Source<TRes>
    implements CopyWith$Fragment$Source<TRes> {
  _CopyWithStubImpl$Fragment$Source(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? displayName,
    String? lang,
    String? iconUrl,
    bool? isNsfw,
    bool? supportsLatest,
    Fragment$Source$extension? $extension,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Source$extension<TRes> get $extension =>
      CopyWith$Fragment$Source$extension.stub(_res);
}

const fragmentDefinitionSource = FragmentDefinitionNode(
  name: NameNode(value: 'Source'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'SourceType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
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
      name: NameNode(value: 'displayName'),
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
      name: NameNode(value: 'iconUrl'),
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
      name: NameNode(value: 'supportsLatest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'extension'),
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
          name: NameNode(value: 'repo'),
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
);
const documentNodeFragmentSource = DocumentNode(definitions: [
  fragmentDefinitionSource,
]);

extension ClientExtension$Fragment$Source on graphql.GraphQLClient {
  void writeFragment$Source({
    required Fragment$Source data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Source',
            document: documentNodeFragmentSource,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Source? readFragment$Source({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Source',
          document: documentNodeFragmentSource,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Source.fromJson(result);
  }
}

class Fragment$Source$extension {
  Fragment$Source$extension({
    required this.pkgName,
    this.repo,
    this.$__typename = 'ExtensionType',
  });

  factory Fragment$Source$extension.fromJson(Map<String, dynamic> json) {
    final l$pkgName = json['pkgName'];
    final l$repo = json['repo'];
    final l$$__typename = json['__typename'];
    return Fragment$Source$extension(
      pkgName: (l$pkgName as String),
      repo: (l$repo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String pkgName;

  final String? repo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pkgName = pkgName;
    _resultData['pkgName'] = l$pkgName;
    final l$repo = repo;
    _resultData['repo'] = l$repo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pkgName = pkgName;
    final l$repo = repo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pkgName,
      l$repo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Source$extension ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pkgName = pkgName;
    final lOther$pkgName = other.pkgName;
    if (l$pkgName != lOther$pkgName) {
      return false;
    }
    final l$repo = repo;
    final lOther$repo = other.repo;
    if (l$repo != lOther$repo) {
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

extension UtilityExtension$Fragment$Source$extension
    on Fragment$Source$extension {
  CopyWith$Fragment$Source$extension<Fragment$Source$extension> get copyWith =>
      CopyWith$Fragment$Source$extension(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Source$extension<TRes> {
  factory CopyWith$Fragment$Source$extension(
    Fragment$Source$extension instance,
    TRes Function(Fragment$Source$extension) then,
  ) = _CopyWithImpl$Fragment$Source$extension;

  factory CopyWith$Fragment$Source$extension.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Source$extension;

  TRes call({
    String? pkgName,
    String? repo,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Source$extension<TRes>
    implements CopyWith$Fragment$Source$extension<TRes> {
  _CopyWithImpl$Fragment$Source$extension(
    this._instance,
    this._then,
  );

  final Fragment$Source$extension _instance;

  final TRes Function(Fragment$Source$extension) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pkgName = _undefined,
    Object? repo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Source$extension(
        pkgName: pkgName == _undefined || pkgName == null
            ? _instance.pkgName
            : (pkgName as String),
        repo: repo == _undefined ? _instance.repo : (repo as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Source$extension<TRes>
    implements CopyWith$Fragment$Source$extension<TRes> {
  _CopyWithStubImpl$Fragment$Source$extension(this._res);

  TRes _res;

  call({
    String? pkgName,
    String? repo,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourcesList {
  Query$SourcesList({
    required this.sources,
    this.$__typename = 'Query',
  });

  factory Query$SourcesList.fromJson(Map<String, dynamic> json) {
    final l$sources = json['sources'];
    final l$$__typename = json['__typename'];
    return Query$SourcesList(
      sources: Query$SourcesList$sources.fromJson(
          (l$sources as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SourcesList$sources sources;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sources = sources;
    _resultData['sources'] = l$sources.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sources = sources;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sources,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourcesList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sources = sources;
    final lOther$sources = other.sources;
    if (l$sources != lOther$sources) {
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

extension UtilityExtension$Query$SourcesList on Query$SourcesList {
  CopyWith$Query$SourcesList<Query$SourcesList> get copyWith =>
      CopyWith$Query$SourcesList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SourcesList<TRes> {
  factory CopyWith$Query$SourcesList(
    Query$SourcesList instance,
    TRes Function(Query$SourcesList) then,
  ) = _CopyWithImpl$Query$SourcesList;

  factory CopyWith$Query$SourcesList.stub(TRes res) =
      _CopyWithStubImpl$Query$SourcesList;

  TRes call({
    Query$SourcesList$sources? sources,
    String? $__typename,
  });
  CopyWith$Query$SourcesList$sources<TRes> get sources;
}

class _CopyWithImpl$Query$SourcesList<TRes>
    implements CopyWith$Query$SourcesList<TRes> {
  _CopyWithImpl$Query$SourcesList(
    this._instance,
    this._then,
  );

  final Query$SourcesList _instance;

  final TRes Function(Query$SourcesList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sources = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourcesList(
        sources: sources == _undefined || sources == null
            ? _instance.sources
            : (sources as Query$SourcesList$sources),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SourcesList$sources<TRes> get sources {
    final local$sources = _instance.sources;
    return CopyWith$Query$SourcesList$sources(
        local$sources, (e) => call(sources: e));
  }
}

class _CopyWithStubImpl$Query$SourcesList<TRes>
    implements CopyWith$Query$SourcesList<TRes> {
  _CopyWithStubImpl$Query$SourcesList(this._res);

  TRes _res;

  call({
    Query$SourcesList$sources? sources,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SourcesList$sources<TRes> get sources =>
      CopyWith$Query$SourcesList$sources.stub(_res);
}

const documentNodeQuerySourcesList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SourcesList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sources'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Source'),
                directives: [],
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
  fragmentDefinitionSource,
]);
Query$SourcesList _parserFn$Query$SourcesList(Map<String, dynamic> data) =>
    Query$SourcesList.fromJson(data);
typedef OnQueryComplete$Query$SourcesList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SourcesList?,
);

class Options$Query$SourcesList
    extends graphql.QueryOptions<Query$SourcesList> {
  Options$Query$SourcesList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SourcesList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SourcesList? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$SourcesList(data),
                  ),
          onError: onError,
          document: documentNodeQuerySourcesList,
          parserFn: _parserFn$Query$SourcesList,
        );

  final OnQueryComplete$Query$SourcesList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SourcesList
    extends graphql.WatchQueryOptions<Query$SourcesList> {
  WatchOptions$Query$SourcesList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SourcesList? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySourcesList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SourcesList,
        );
}

class FetchMoreOptions$Query$SourcesList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SourcesList({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySourcesList,
        );
}

extension ClientExtension$Query$SourcesList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SourcesList>> query$SourcesList(
          [Options$Query$SourcesList? options]) async =>
      await this.query(options ?? Options$Query$SourcesList());
  graphql.ObservableQuery<Query$SourcesList> watchQuery$SourcesList(
          [WatchOptions$Query$SourcesList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SourcesList());
  void writeQuery$SourcesList({
    required Query$SourcesList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySourcesList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SourcesList? readQuery$SourcesList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySourcesList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SourcesList.fromJson(result);
  }
}

class Query$SourcesList$sources {
  Query$SourcesList$sources({
    required this.nodes,
    this.$__typename = 'SourceNodeList',
  });

  factory Query$SourcesList$sources.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SourcesList$sources(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Fragment$Source.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Source> nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourcesList$sources ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$SourcesList$sources
    on Query$SourcesList$sources {
  CopyWith$Query$SourcesList$sources<Query$SourcesList$sources> get copyWith =>
      CopyWith$Query$SourcesList$sources(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SourcesList$sources<TRes> {
  factory CopyWith$Query$SourcesList$sources(
    Query$SourcesList$sources instance,
    TRes Function(Query$SourcesList$sources) then,
  ) = _CopyWithImpl$Query$SourcesList$sources;

  factory CopyWith$Query$SourcesList$sources.stub(TRes res) =
      _CopyWithStubImpl$Query$SourcesList$sources;

  TRes call({
    List<Fragment$Source>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$Source> Function(
              Iterable<CopyWith$Fragment$Source<Fragment$Source>>)
          _fn);
}

class _CopyWithImpl$Query$SourcesList$sources<TRes>
    implements CopyWith$Query$SourcesList$sources<TRes> {
  _CopyWithImpl$Query$SourcesList$sources(
    this._instance,
    this._then,
  );

  final Query$SourcesList$sources _instance;

  final TRes Function(Query$SourcesList$sources) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourcesList$sources(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Fragment$Source>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$Source> Function(
                  Iterable<CopyWith$Fragment$Source<Fragment$Source>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) => CopyWith$Fragment$Source(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$SourcesList$sources<TRes>
    implements CopyWith$Query$SourcesList$sources<TRes> {
  _CopyWithStubImpl$Query$SourcesList$sources(this._res);

  TRes _res;

  call({
    List<Fragment$Source>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}
