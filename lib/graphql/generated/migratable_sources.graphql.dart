import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$MigratableSources {
  Query$MigratableSources({
    required this.mangas,
    this.$__typename = 'Query',
  });

  factory Query$MigratableSources.fromJson(Map<String, dynamic> json) {
    final l$mangas = json['mangas'];
    final l$$__typename = json['__typename'];
    return Query$MigratableSources(
      mangas: Query$MigratableSources$mangas.fromJson(
          (l$mangas as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MigratableSources$mangas mangas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mangas = mangas;
    _resultData['mangas'] = l$mangas.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mangas = mangas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mangas,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MigratableSources || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mangas = mangas;
    final lOther$mangas = other.mangas;
    if (l$mangas != lOther$mangas) {
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

extension UtilityExtension$Query$MigratableSources on Query$MigratableSources {
  CopyWith$Query$MigratableSources<Query$MigratableSources> get copyWith =>
      CopyWith$Query$MigratableSources(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MigratableSources<TRes> {
  factory CopyWith$Query$MigratableSources(
    Query$MigratableSources instance,
    TRes Function(Query$MigratableSources) then,
  ) = _CopyWithImpl$Query$MigratableSources;

  factory CopyWith$Query$MigratableSources.stub(TRes res) =
      _CopyWithStubImpl$Query$MigratableSources;

  TRes call({
    Query$MigratableSources$mangas? mangas,
    String? $__typename,
  });
  CopyWith$Query$MigratableSources$mangas<TRes> get mangas;
}

class _CopyWithImpl$Query$MigratableSources<TRes>
    implements CopyWith$Query$MigratableSources<TRes> {
  _CopyWithImpl$Query$MigratableSources(
    this._instance,
    this._then,
  );

  final Query$MigratableSources _instance;

  final TRes Function(Query$MigratableSources) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mangas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MigratableSources(
        mangas: mangas == _undefined || mangas == null
            ? _instance.mangas
            : (mangas as Query$MigratableSources$mangas),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MigratableSources$mangas<TRes> get mangas {
    final local$mangas = _instance.mangas;
    return CopyWith$Query$MigratableSources$mangas(
        local$mangas, (e) => call(mangas: e));
  }
}

class _CopyWithStubImpl$Query$MigratableSources<TRes>
    implements CopyWith$Query$MigratableSources<TRes> {
  _CopyWithStubImpl$Query$MigratableSources(this._res);

  TRes _res;

  call({
    Query$MigratableSources$mangas? mangas,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MigratableSources$mangas<TRes> get mangas =>
      CopyWith$Query$MigratableSources$mangas.stub(_res);
}

const documentNodeQueryMigratableSources = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MigratableSources'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'mangas'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'condition'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'inLibrary'),
                value: BooleanValueNode(value: true),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'sourceId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'source'),
                alias: null,
                arguments: [],
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
Query$MigratableSources _parserFn$Query$MigratableSources(
        Map<String, dynamic> data) =>
    Query$MigratableSources.fromJson(data);
typedef OnQueryComplete$Query$MigratableSources = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MigratableSources?,
);

class Options$Query$MigratableSources
    extends graphql.QueryOptions<Query$MigratableSources> {
  Options$Query$MigratableSources({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MigratableSources? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MigratableSources? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$MigratableSources(data),
                  ),
          onError: onError,
          document: documentNodeQueryMigratableSources,
          parserFn: _parserFn$Query$MigratableSources,
        );

  final OnQueryComplete$Query$MigratableSources? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MigratableSources
    extends graphql.WatchQueryOptions<Query$MigratableSources> {
  WatchOptions$Query$MigratableSources({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MigratableSources? typedOptimisticResult,
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
          document: documentNodeQueryMigratableSources,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MigratableSources,
        );
}

class FetchMoreOptions$Query$MigratableSources
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MigratableSources(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMigratableSources,
        );
}

extension ClientExtension$Query$MigratableSources on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MigratableSources>> query$MigratableSources(
          [Options$Query$MigratableSources? options]) async =>
      await this.query(options ?? Options$Query$MigratableSources());
  graphql.ObservableQuery<Query$MigratableSources> watchQuery$MigratableSources(
          [WatchOptions$Query$MigratableSources? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MigratableSources());
  void writeQuery$MigratableSources({
    required Query$MigratableSources data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryMigratableSources)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MigratableSources? readQuery$MigratableSources(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryMigratableSources)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MigratableSources.fromJson(result);
  }
}

class Query$MigratableSources$mangas {
  Query$MigratableSources$mangas({
    required this.nodes,
    this.$__typename = 'MangaNodeList',
  });

  factory Query$MigratableSources$mangas.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$MigratableSources$mangas(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$MigratableSources$mangas$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MigratableSources$mangas$nodes> nodes;

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
    if (other is! Query$MigratableSources$mangas ||
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

extension UtilityExtension$Query$MigratableSources$mangas
    on Query$MigratableSources$mangas {
  CopyWith$Query$MigratableSources$mangas<Query$MigratableSources$mangas>
      get copyWith => CopyWith$Query$MigratableSources$mangas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MigratableSources$mangas<TRes> {
  factory CopyWith$Query$MigratableSources$mangas(
    Query$MigratableSources$mangas instance,
    TRes Function(Query$MigratableSources$mangas) then,
  ) = _CopyWithImpl$Query$MigratableSources$mangas;

  factory CopyWith$Query$MigratableSources$mangas.stub(TRes res) =
      _CopyWithStubImpl$Query$MigratableSources$mangas;

  TRes call({
    List<Query$MigratableSources$mangas$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$MigratableSources$mangas$nodes> Function(
              Iterable<
                  CopyWith$Query$MigratableSources$mangas$nodes<
                      Query$MigratableSources$mangas$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$MigratableSources$mangas<TRes>
    implements CopyWith$Query$MigratableSources$mangas<TRes> {
  _CopyWithImpl$Query$MigratableSources$mangas(
    this._instance,
    this._then,
  );

  final Query$MigratableSources$mangas _instance;

  final TRes Function(Query$MigratableSources$mangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MigratableSources$mangas(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Query$MigratableSources$mangas$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$MigratableSources$mangas$nodes> Function(
                  Iterable<
                      CopyWith$Query$MigratableSources$mangas$nodes<
                          Query$MigratableSources$mangas$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              .map((e) => CopyWith$Query$MigratableSources$mangas$nodes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$MigratableSources$mangas<TRes>
    implements CopyWith$Query$MigratableSources$mangas<TRes> {
  _CopyWithStubImpl$Query$MigratableSources$mangas(this._res);

  TRes _res;

  call({
    List<Query$MigratableSources$mangas$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$MigratableSources$mangas$nodes {
  Query$MigratableSources$mangas$nodes({
    required this.sourceId,
    this.source,
    this.$__typename = 'MangaType',
  });

  factory Query$MigratableSources$mangas$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$sourceId = json['sourceId'];
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Query$MigratableSources$mangas$nodes(
      sourceId: (l$sourceId as String),
      source: l$source == null
          ? null
          : Query$MigratableSources$mangas$nodes$source.fromJson(
              (l$source as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String sourceId;

  final Query$MigratableSources$mangas$nodes$source? source;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sourceId = sourceId;
    _resultData['sourceId'] = l$sourceId;
    final l$source = source;
    _resultData['source'] = l$source?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sourceId = sourceId;
    final l$source = source;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sourceId,
      l$source,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MigratableSources$mangas$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sourceId = sourceId;
    final lOther$sourceId = other.sourceId;
    if (l$sourceId != lOther$sourceId) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
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

extension UtilityExtension$Query$MigratableSources$mangas$nodes
    on Query$MigratableSources$mangas$nodes {
  CopyWith$Query$MigratableSources$mangas$nodes<
          Query$MigratableSources$mangas$nodes>
      get copyWith => CopyWith$Query$MigratableSources$mangas$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MigratableSources$mangas$nodes<TRes> {
  factory CopyWith$Query$MigratableSources$mangas$nodes(
    Query$MigratableSources$mangas$nodes instance,
    TRes Function(Query$MigratableSources$mangas$nodes) then,
  ) = _CopyWithImpl$Query$MigratableSources$mangas$nodes;

  factory CopyWith$Query$MigratableSources$mangas$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$MigratableSources$mangas$nodes;

  TRes call({
    String? sourceId,
    Query$MigratableSources$mangas$nodes$source? source,
    String? $__typename,
  });
  CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> get source;
}

class _CopyWithImpl$Query$MigratableSources$mangas$nodes<TRes>
    implements CopyWith$Query$MigratableSources$mangas$nodes<TRes> {
  _CopyWithImpl$Query$MigratableSources$mangas$nodes(
    this._instance,
    this._then,
  );

  final Query$MigratableSources$mangas$nodes _instance;

  final TRes Function(Query$MigratableSources$mangas$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sourceId = _undefined,
    Object? source = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MigratableSources$mangas$nodes(
        sourceId: sourceId == _undefined || sourceId == null
            ? _instance.sourceId
            : (sourceId as String),
        source: source == _undefined
            ? _instance.source
            : (source as Query$MigratableSources$mangas$nodes$source?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Query$MigratableSources$mangas$nodes$source.stub(
            _then(_instance))
        : CopyWith$Query$MigratableSources$mangas$nodes$source(
            local$source, (e) => call(source: e));
  }
}

class _CopyWithStubImpl$Query$MigratableSources$mangas$nodes<TRes>
    implements CopyWith$Query$MigratableSources$mangas$nodes<TRes> {
  _CopyWithStubImpl$Query$MigratableSources$mangas$nodes(this._res);

  TRes _res;

  call({
    String? sourceId,
    Query$MigratableSources$mangas$nodes$source? source,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> get source =>
      CopyWith$Query$MigratableSources$mangas$nodes$source.stub(_res);
}

class Query$MigratableSources$mangas$nodes$source {
  Query$MigratableSources$mangas$nodes$source({
    required this.id,
    required this.name,
    required this.displayName,
    required this.lang,
    required this.iconUrl,
    this.$__typename = 'SourceType',
  });

  factory Query$MigratableSources$mangas$nodes$source.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$displayName = json['displayName'];
    final l$lang = json['lang'];
    final l$iconUrl = json['iconUrl'];
    final l$$__typename = json['__typename'];
    return Query$MigratableSources$mangas$nodes$source(
      id: (l$id as String),
      name: (l$name as String),
      displayName: (l$displayName as String),
      lang: (l$lang as String),
      iconUrl: (l$iconUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String displayName;

  final String lang;

  final String iconUrl;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$displayName,
      l$lang,
      l$iconUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MigratableSources$mangas$nodes$source ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MigratableSources$mangas$nodes$source
    on Query$MigratableSources$mangas$nodes$source {
  CopyWith$Query$MigratableSources$mangas$nodes$source<
          Query$MigratableSources$mangas$nodes$source>
      get copyWith => CopyWith$Query$MigratableSources$mangas$nodes$source(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> {
  factory CopyWith$Query$MigratableSources$mangas$nodes$source(
    Query$MigratableSources$mangas$nodes$source instance,
    TRes Function(Query$MigratableSources$mangas$nodes$source) then,
  ) = _CopyWithImpl$Query$MigratableSources$mangas$nodes$source;

  factory CopyWith$Query$MigratableSources$mangas$nodes$source.stub(TRes res) =
      _CopyWithStubImpl$Query$MigratableSources$mangas$nodes$source;

  TRes call({
    String? id,
    String? name,
    String? displayName,
    String? lang,
    String? iconUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MigratableSources$mangas$nodes$source<TRes>
    implements CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> {
  _CopyWithImpl$Query$MigratableSources$mangas$nodes$source(
    this._instance,
    this._then,
  );

  final Query$MigratableSources$mangas$nodes$source _instance;

  final TRes Function(Query$MigratableSources$mangas$nodes$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? displayName = _undefined,
    Object? lang = _undefined,
    Object? iconUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MigratableSources$mangas$nodes$source(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MigratableSources$mangas$nodes$source<TRes>
    implements CopyWith$Query$MigratableSources$mangas$nodes$source<TRes> {
  _CopyWithStubImpl$Query$MigratableSources$mangas$nodes$source(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? displayName,
    String? lang,
    String? iconUrl,
    String? $__typename,
  }) =>
      _res;
}
