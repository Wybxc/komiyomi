import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$ChapterUpdates {
  factory Variables$Query$ChapterUpdates({
    Input$ChapterFilterInput? filter,
    List<Input$ChapterOrderInput>? order,
  }) =>
      Variables$Query$ChapterUpdates._({
        if (filter != null) r'filter': filter,
        if (order != null) r'order': order,
      });

  Variables$Query$ChapterUpdates._(this._$data);

  factory Variables$Query$ChapterUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ChapterFilterInput.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) =>
              Input$ChapterOrderInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ChapterUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChapterFilterInput? get filter =>
      (_$data['filter'] as Input$ChapterFilterInput?);

  List<Input$ChapterOrderInput>? get order =>
      (_$data['order'] as List<Input$ChapterOrderInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$ChapterUpdates<Variables$Query$ChapterUpdates>
      get copyWith => CopyWith$Variables$Query$ChapterUpdates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ChapterUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ChapterUpdates<TRes> {
  factory CopyWith$Variables$Query$ChapterUpdates(
    Variables$Query$ChapterUpdates instance,
    TRes Function(Variables$Query$ChapterUpdates) then,
  ) = _CopyWithImpl$Variables$Query$ChapterUpdates;

  factory CopyWith$Variables$Query$ChapterUpdates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ChapterUpdates;

  TRes call({
    Input$ChapterFilterInput? filter,
    List<Input$ChapterOrderInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$ChapterUpdates<TRes>
    implements CopyWith$Variables$Query$ChapterUpdates<TRes> {
  _CopyWithImpl$Variables$Query$ChapterUpdates(
    this._instance,
    this._then,
  );

  final Variables$Query$ChapterUpdates _instance;

  final TRes Function(Variables$Query$ChapterUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$ChapterUpdates._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$ChapterFilterInput?),
        if (order != _undefined)
          'order': (order as List<Input$ChapterOrderInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ChapterUpdates<TRes>
    implements CopyWith$Variables$Query$ChapterUpdates<TRes> {
  _CopyWithStubImpl$Variables$Query$ChapterUpdates(this._res);

  TRes _res;

  call({
    Input$ChapterFilterInput? filter,
    List<Input$ChapterOrderInput>? order,
  }) =>
      _res;
}

class Query$ChapterUpdates {
  Query$ChapterUpdates({
    required this.chapters,
    this.$__typename = 'Query',
  });

  factory Query$ChapterUpdates.fromJson(Map<String, dynamic> json) {
    final l$chapters = json['chapters'];
    final l$$__typename = json['__typename'];
    return Query$ChapterUpdates(
      chapters: Query$ChapterUpdates$chapters.fromJson(
          (l$chapters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ChapterUpdates$chapters chapters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$chapters = chapters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$chapters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ChapterUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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

extension UtilityExtension$Query$ChapterUpdates on Query$ChapterUpdates {
  CopyWith$Query$ChapterUpdates<Query$ChapterUpdates> get copyWith =>
      CopyWith$Query$ChapterUpdates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ChapterUpdates<TRes> {
  factory CopyWith$Query$ChapterUpdates(
    Query$ChapterUpdates instance,
    TRes Function(Query$ChapterUpdates) then,
  ) = _CopyWithImpl$Query$ChapterUpdates;

  factory CopyWith$Query$ChapterUpdates.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterUpdates;

  TRes call({
    Query$ChapterUpdates$chapters? chapters,
    String? $__typename,
  });
  CopyWith$Query$ChapterUpdates$chapters<TRes> get chapters;
}

class _CopyWithImpl$Query$ChapterUpdates<TRes>
    implements CopyWith$Query$ChapterUpdates<TRes> {
  _CopyWithImpl$Query$ChapterUpdates(
    this._instance,
    this._then,
  );

  final Query$ChapterUpdates _instance;

  final TRes Function(Query$ChapterUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chapters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterUpdates(
        chapters: chapters == _undefined || chapters == null
            ? _instance.chapters
            : (chapters as Query$ChapterUpdates$chapters),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ChapterUpdates$chapters<TRes> get chapters {
    final local$chapters = _instance.chapters;
    return CopyWith$Query$ChapterUpdates$chapters(
        local$chapters, (e) => call(chapters: e));
  }
}

class _CopyWithStubImpl$Query$ChapterUpdates<TRes>
    implements CopyWith$Query$ChapterUpdates<TRes> {
  _CopyWithStubImpl$Query$ChapterUpdates(this._res);

  TRes _res;

  call({
    Query$ChapterUpdates$chapters? chapters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ChapterUpdates$chapters<TRes> get chapters =>
      CopyWith$Query$ChapterUpdates$chapters.stub(_res);
}

const documentNodeQueryChapterUpdates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ChapterUpdates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChapterFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ChapterOrderInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'chapters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
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
                name: NameNode(value: 'mangaId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scanlator'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'realUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sourceOrder'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'chapterNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isRead'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isDownloaded'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isBookmarked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fetchedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uploadDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'manga'),
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thumbnailUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thumbnailUrlLastFetched'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'inLibrary'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'initialized'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sourceId'),
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
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
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
            name: NameNode(value: 'totalCount'),
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
]);
Query$ChapterUpdates _parserFn$Query$ChapterUpdates(
        Map<String, dynamic> data) =>
    Query$ChapterUpdates.fromJson(data);
typedef OnQueryComplete$Query$ChapterUpdates = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ChapterUpdates?,
);

class Options$Query$ChapterUpdates
    extends graphql.QueryOptions<Query$ChapterUpdates> {
  Options$Query$ChapterUpdates({
    String? operationName,
    Variables$Query$ChapterUpdates? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ChapterUpdates? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ChapterUpdates? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$ChapterUpdates(data),
                  ),
          onError: onError,
          document: documentNodeQueryChapterUpdates,
          parserFn: _parserFn$Query$ChapterUpdates,
        );

  final OnQueryComplete$Query$ChapterUpdates? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ChapterUpdates
    extends graphql.WatchQueryOptions<Query$ChapterUpdates> {
  WatchOptions$Query$ChapterUpdates({
    String? operationName,
    Variables$Query$ChapterUpdates? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ChapterUpdates? typedOptimisticResult,
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
          document: documentNodeQueryChapterUpdates,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ChapterUpdates,
        );
}

class FetchMoreOptions$Query$ChapterUpdates extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ChapterUpdates({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ChapterUpdates? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryChapterUpdates,
        );
}

extension ClientExtension$Query$ChapterUpdates on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ChapterUpdates>> query$ChapterUpdates(
          [Options$Query$ChapterUpdates? options]) async =>
      await this.query(options ?? Options$Query$ChapterUpdates());
  graphql.ObservableQuery<Query$ChapterUpdates> watchQuery$ChapterUpdates(
          [WatchOptions$Query$ChapterUpdates? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ChapterUpdates());
  void writeQuery$ChapterUpdates({
    required Query$ChapterUpdates data,
    Variables$Query$ChapterUpdates? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryChapterUpdates),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ChapterUpdates? readQuery$ChapterUpdates({
    Variables$Query$ChapterUpdates? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryChapterUpdates),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ChapterUpdates.fromJson(result);
  }
}

class Query$ChapterUpdates$chapters {
  Query$ChapterUpdates$chapters({
    required this.nodes,
    required this.pageInfo,
    required this.totalCount,
    this.$__typename = 'ChapterNodeList',
  });

  factory Query$ChapterUpdates$chapters.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$ChapterUpdates$chapters(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$ChapterUpdates$chapters$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ChapterUpdates$chapters$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ChapterUpdates$chapters$nodes> nodes;

  final Query$ChapterUpdates$chapters$pageInfo pageInfo;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ChapterUpdates$chapters ||
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
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$ChapterUpdates$chapters
    on Query$ChapterUpdates$chapters {
  CopyWith$Query$ChapterUpdates$chapters<Query$ChapterUpdates$chapters>
      get copyWith => CopyWith$Query$ChapterUpdates$chapters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ChapterUpdates$chapters<TRes> {
  factory CopyWith$Query$ChapterUpdates$chapters(
    Query$ChapterUpdates$chapters instance,
    TRes Function(Query$ChapterUpdates$chapters) then,
  ) = _CopyWithImpl$Query$ChapterUpdates$chapters;

  factory CopyWith$Query$ChapterUpdates$chapters.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterUpdates$chapters;

  TRes call({
    List<Query$ChapterUpdates$chapters$nodes>? nodes,
    Query$ChapterUpdates$chapters$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$ChapterUpdates$chapters$nodes> Function(
              Iterable<
                  CopyWith$Query$ChapterUpdates$chapters$nodes<
                      Query$ChapterUpdates$chapters$nodes>>)
          _fn);
  CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$ChapterUpdates$chapters<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters<TRes> {
  _CopyWithImpl$Query$ChapterUpdates$chapters(
    this._instance,
    this._then,
  );

  final Query$ChapterUpdates$chapters _instance;

  final TRes Function(Query$ChapterUpdates$chapters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterUpdates$chapters(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Query$ChapterUpdates$chapters$nodes>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ChapterUpdates$chapters$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$ChapterUpdates$chapters$nodes> Function(
                  Iterable<
                      CopyWith$Query$ChapterUpdates$chapters$nodes<
                          Query$ChapterUpdates$chapters$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              .map((e) => CopyWith$Query$ChapterUpdates$chapters$nodes(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ChapterUpdates$chapters$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ChapterUpdates$chapters<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters<TRes> {
  _CopyWithStubImpl$Query$ChapterUpdates$chapters(this._res);

  TRes _res;

  call({
    List<Query$ChapterUpdates$chapters$nodes>? nodes,
    Query$ChapterUpdates$chapters$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ChapterUpdates$chapters$pageInfo.stub(_res);
}

class Query$ChapterUpdates$chapters$nodes {
  Query$ChapterUpdates$chapters$nodes({
    required this.id,
    required this.name,
    required this.mangaId,
    this.scanlator,
    this.realUrl,
    required this.sourceOrder,
    required this.chapterNumber,
    required this.isRead,
    required this.isDownloaded,
    required this.isBookmarked,
    required this.fetchedAt,
    required this.uploadDate,
    required this.manga,
    this.$__typename = 'ChapterType',
  });

  factory Query$ChapterUpdates$chapters$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$mangaId = json['mangaId'];
    final l$scanlator = json['scanlator'];
    final l$realUrl = json['realUrl'];
    final l$sourceOrder = json['sourceOrder'];
    final l$chapterNumber = json['chapterNumber'];
    final l$isRead = json['isRead'];
    final l$isDownloaded = json['isDownloaded'];
    final l$isBookmarked = json['isBookmarked'];
    final l$fetchedAt = json['fetchedAt'];
    final l$uploadDate = json['uploadDate'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$ChapterUpdates$chapters$nodes(
      id: (l$id as int),
      name: (l$name as String),
      mangaId: (l$mangaId as int),
      scanlator: (l$scanlator as String?),
      realUrl: (l$realUrl as String?),
      sourceOrder: (l$sourceOrder as int),
      chapterNumber: (l$chapterNumber as num).toDouble(),
      isRead: (l$isRead as bool),
      isDownloaded: (l$isDownloaded as bool),
      isBookmarked: (l$isBookmarked as bool),
      fetchedAt: (l$fetchedAt as String),
      uploadDate: (l$uploadDate as String),
      manga: Query$ChapterUpdates$chapters$nodes$manga.fromJson(
          (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int mangaId;

  final String? scanlator;

  final String? realUrl;

  final int sourceOrder;

  final double chapterNumber;

  final bool isRead;

  final bool isDownloaded;

  final bool isBookmarked;

  final String fetchedAt;

  final String uploadDate;

  final Query$ChapterUpdates$chapters$nodes$manga manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$mangaId = mangaId;
    _resultData['mangaId'] = l$mangaId;
    final l$scanlator = scanlator;
    _resultData['scanlator'] = l$scanlator;
    final l$realUrl = realUrl;
    _resultData['realUrl'] = l$realUrl;
    final l$sourceOrder = sourceOrder;
    _resultData['sourceOrder'] = l$sourceOrder;
    final l$chapterNumber = chapterNumber;
    _resultData['chapterNumber'] = l$chapterNumber;
    final l$isRead = isRead;
    _resultData['isRead'] = l$isRead;
    final l$isDownloaded = isDownloaded;
    _resultData['isDownloaded'] = l$isDownloaded;
    final l$isBookmarked = isBookmarked;
    _resultData['isBookmarked'] = l$isBookmarked;
    final l$fetchedAt = fetchedAt;
    _resultData['fetchedAt'] = l$fetchedAt;
    final l$uploadDate = uploadDate;
    _resultData['uploadDate'] = l$uploadDate;
    final l$manga = manga;
    _resultData['manga'] = l$manga.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$mangaId = mangaId;
    final l$scanlator = scanlator;
    final l$realUrl = realUrl;
    final l$sourceOrder = sourceOrder;
    final l$chapterNumber = chapterNumber;
    final l$isRead = isRead;
    final l$isDownloaded = isDownloaded;
    final l$isBookmarked = isBookmarked;
    final l$fetchedAt = fetchedAt;
    final l$uploadDate = uploadDate;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$mangaId,
      l$scanlator,
      l$realUrl,
      l$sourceOrder,
      l$chapterNumber,
      l$isRead,
      l$isDownloaded,
      l$isBookmarked,
      l$fetchedAt,
      l$uploadDate,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ChapterUpdates$chapters$nodes ||
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
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    final l$scanlator = scanlator;
    final lOther$scanlator = other.scanlator;
    if (l$scanlator != lOther$scanlator) {
      return false;
    }
    final l$realUrl = realUrl;
    final lOther$realUrl = other.realUrl;
    if (l$realUrl != lOther$realUrl) {
      return false;
    }
    final l$sourceOrder = sourceOrder;
    final lOther$sourceOrder = other.sourceOrder;
    if (l$sourceOrder != lOther$sourceOrder) {
      return false;
    }
    final l$chapterNumber = chapterNumber;
    final lOther$chapterNumber = other.chapterNumber;
    if (l$chapterNumber != lOther$chapterNumber) {
      return false;
    }
    final l$isRead = isRead;
    final lOther$isRead = other.isRead;
    if (l$isRead != lOther$isRead) {
      return false;
    }
    final l$isDownloaded = isDownloaded;
    final lOther$isDownloaded = other.isDownloaded;
    if (l$isDownloaded != lOther$isDownloaded) {
      return false;
    }
    final l$isBookmarked = isBookmarked;
    final lOther$isBookmarked = other.isBookmarked;
    if (l$isBookmarked != lOther$isBookmarked) {
      return false;
    }
    final l$fetchedAt = fetchedAt;
    final lOther$fetchedAt = other.fetchedAt;
    if (l$fetchedAt != lOther$fetchedAt) {
      return false;
    }
    final l$uploadDate = uploadDate;
    final lOther$uploadDate = other.uploadDate;
    if (l$uploadDate != lOther$uploadDate) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Query$ChapterUpdates$chapters$nodes
    on Query$ChapterUpdates$chapters$nodes {
  CopyWith$Query$ChapterUpdates$chapters$nodes<
          Query$ChapterUpdates$chapters$nodes>
      get copyWith => CopyWith$Query$ChapterUpdates$chapters$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ChapterUpdates$chapters$nodes<TRes> {
  factory CopyWith$Query$ChapterUpdates$chapters$nodes(
    Query$ChapterUpdates$chapters$nodes instance,
    TRes Function(Query$ChapterUpdates$chapters$nodes) then,
  ) = _CopyWithImpl$Query$ChapterUpdates$chapters$nodes;

  factory CopyWith$Query$ChapterUpdates$chapters$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes;

  TRes call({
    int? id,
    String? name,
    int? mangaId,
    String? scanlator,
    String? realUrl,
    int? sourceOrder,
    double? chapterNumber,
    bool? isRead,
    bool? isDownloaded,
    bool? isBookmarked,
    String? fetchedAt,
    String? uploadDate,
    Query$ChapterUpdates$chapters$nodes$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> get manga;
}

class _CopyWithImpl$Query$ChapterUpdates$chapters$nodes<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$nodes<TRes> {
  _CopyWithImpl$Query$ChapterUpdates$chapters$nodes(
    this._instance,
    this._then,
  );

  final Query$ChapterUpdates$chapters$nodes _instance;

  final TRes Function(Query$ChapterUpdates$chapters$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? mangaId = _undefined,
    Object? scanlator = _undefined,
    Object? realUrl = _undefined,
    Object? sourceOrder = _undefined,
    Object? chapterNumber = _undefined,
    Object? isRead = _undefined,
    Object? isDownloaded = _undefined,
    Object? isBookmarked = _undefined,
    Object? fetchedAt = _undefined,
    Object? uploadDate = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterUpdates$chapters$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        mangaId: mangaId == _undefined || mangaId == null
            ? _instance.mangaId
            : (mangaId as int),
        scanlator: scanlator == _undefined
            ? _instance.scanlator
            : (scanlator as String?),
        realUrl:
            realUrl == _undefined ? _instance.realUrl : (realUrl as String?),
        sourceOrder: sourceOrder == _undefined || sourceOrder == null
            ? _instance.sourceOrder
            : (sourceOrder as int),
        chapterNumber: chapterNumber == _undefined || chapterNumber == null
            ? _instance.chapterNumber
            : (chapterNumber as double),
        isRead: isRead == _undefined || isRead == null
            ? _instance.isRead
            : (isRead as bool),
        isDownloaded: isDownloaded == _undefined || isDownloaded == null
            ? _instance.isDownloaded
            : (isDownloaded as bool),
        isBookmarked: isBookmarked == _undefined || isBookmarked == null
            ? _instance.isBookmarked
            : (isBookmarked as bool),
        fetchedAt: fetchedAt == _undefined || fetchedAt == null
            ? _instance.fetchedAt
            : (fetchedAt as String),
        uploadDate: uploadDate == _undefined || uploadDate == null
            ? _instance.uploadDate
            : (uploadDate as String),
        manga: manga == _undefined || manga == null
            ? _instance.manga
            : (manga as Query$ChapterUpdates$chapters$nodes$manga),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return CopyWith$Query$ChapterUpdates$chapters$nodes$manga(
        local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$nodes<TRes> {
  _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? mangaId,
    String? scanlator,
    String? realUrl,
    int? sourceOrder,
    double? chapterNumber,
    bool? isRead,
    bool? isDownloaded,
    bool? isBookmarked,
    String? fetchedAt,
    String? uploadDate,
    Query$ChapterUpdates$chapters$nodes$manga? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> get manga =>
      CopyWith$Query$ChapterUpdates$chapters$nodes$manga.stub(_res);
}

class Query$ChapterUpdates$chapters$nodes$manga {
  Query$ChapterUpdates$chapters$nodes$manga({
    required this.id,
    required this.title,
    this.thumbnailUrl,
    this.thumbnailUrlLastFetched,
    required this.inLibrary,
    required this.initialized,
    required this.sourceId,
    this.$__typename = 'MangaType',
  });

  factory Query$ChapterUpdates$chapters$nodes$manga.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$thumbnailUrlLastFetched = json['thumbnailUrlLastFetched'];
    final l$inLibrary = json['inLibrary'];
    final l$initialized = json['initialized'];
    final l$sourceId = json['sourceId'];
    final l$$__typename = json['__typename'];
    return Query$ChapterUpdates$chapters$nodes$manga(
      id: (l$id as int),
      title: (l$title as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      thumbnailUrlLastFetched: (l$thumbnailUrlLastFetched as String?),
      inLibrary: (l$inLibrary as bool),
      initialized: (l$initialized as bool),
      sourceId: (l$sourceId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? thumbnailUrl;

  final String? thumbnailUrlLastFetched;

  final bool inLibrary;

  final bool initialized;

  final String sourceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$thumbnailUrlLastFetched = thumbnailUrlLastFetched;
    _resultData['thumbnailUrlLastFetched'] = l$thumbnailUrlLastFetched;
    final l$inLibrary = inLibrary;
    _resultData['inLibrary'] = l$inLibrary;
    final l$initialized = initialized;
    _resultData['initialized'] = l$initialized;
    final l$sourceId = sourceId;
    _resultData['sourceId'] = l$sourceId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnailUrl = thumbnailUrl;
    final l$thumbnailUrlLastFetched = thumbnailUrlLastFetched;
    final l$inLibrary = inLibrary;
    final l$initialized = initialized;
    final l$sourceId = sourceId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$thumbnailUrl,
      l$thumbnailUrlLastFetched,
      l$inLibrary,
      l$initialized,
      l$sourceId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ChapterUpdates$chapters$nodes$manga ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$thumbnailUrlLastFetched = thumbnailUrlLastFetched;
    final lOther$thumbnailUrlLastFetched = other.thumbnailUrlLastFetched;
    if (l$thumbnailUrlLastFetched != lOther$thumbnailUrlLastFetched) {
      return false;
    }
    final l$inLibrary = inLibrary;
    final lOther$inLibrary = other.inLibrary;
    if (l$inLibrary != lOther$inLibrary) {
      return false;
    }
    final l$initialized = initialized;
    final lOther$initialized = other.initialized;
    if (l$initialized != lOther$initialized) {
      return false;
    }
    final l$sourceId = sourceId;
    final lOther$sourceId = other.sourceId;
    if (l$sourceId != lOther$sourceId) {
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

extension UtilityExtension$Query$ChapterUpdates$chapters$nodes$manga
    on Query$ChapterUpdates$chapters$nodes$manga {
  CopyWith$Query$ChapterUpdates$chapters$nodes$manga<
          Query$ChapterUpdates$chapters$nodes$manga>
      get copyWith => CopyWith$Query$ChapterUpdates$chapters$nodes$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> {
  factory CopyWith$Query$ChapterUpdates$chapters$nodes$manga(
    Query$ChapterUpdates$chapters$nodes$manga instance,
    TRes Function(Query$ChapterUpdates$chapters$nodes$manga) then,
  ) = _CopyWithImpl$Query$ChapterUpdates$chapters$nodes$manga;

  factory CopyWith$Query$ChapterUpdates$chapters$nodes$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes$manga;

  TRes call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? thumbnailUrlLastFetched,
    bool? inLibrary,
    bool? initialized,
    String? sourceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ChapterUpdates$chapters$nodes$manga<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> {
  _CopyWithImpl$Query$ChapterUpdates$chapters$nodes$manga(
    this._instance,
    this._then,
  );

  final Query$ChapterUpdates$chapters$nodes$manga _instance;

  final TRes Function(Query$ChapterUpdates$chapters$nodes$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? thumbnailUrlLastFetched = _undefined,
    Object? inLibrary = _undefined,
    Object? initialized = _undefined,
    Object? sourceId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterUpdates$chapters$nodes$manga(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        thumbnailUrlLastFetched: thumbnailUrlLastFetched == _undefined
            ? _instance.thumbnailUrlLastFetched
            : (thumbnailUrlLastFetched as String?),
        inLibrary: inLibrary == _undefined || inLibrary == null
            ? _instance.inLibrary
            : (inLibrary as bool),
        initialized: initialized == _undefined || initialized == null
            ? _instance.initialized
            : (initialized as bool),
        sourceId: sourceId == _undefined || sourceId == null
            ? _instance.sourceId
            : (sourceId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes$manga<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$nodes$manga<TRes> {
  _CopyWithStubImpl$Query$ChapterUpdates$chapters$nodes$manga(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? thumbnailUrlLastFetched,
    bool? inLibrary,
    bool? initialized,
    String? sourceId,
    String? $__typename,
  }) =>
      _res;
}

class Query$ChapterUpdates$chapters$pageInfo {
  Query$ChapterUpdates$chapters$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ChapterUpdates$chapters$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$ChapterUpdates$chapters$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ChapterUpdates$chapters$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
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

extension UtilityExtension$Query$ChapterUpdates$chapters$pageInfo
    on Query$ChapterUpdates$chapters$pageInfo {
  CopyWith$Query$ChapterUpdates$chapters$pageInfo<
          Query$ChapterUpdates$chapters$pageInfo>
      get copyWith => CopyWith$Query$ChapterUpdates$chapters$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> {
  factory CopyWith$Query$ChapterUpdates$chapters$pageInfo(
    Query$ChapterUpdates$chapters$pageInfo instance,
    TRes Function(Query$ChapterUpdates$chapters$pageInfo) then,
  ) = _CopyWithImpl$Query$ChapterUpdates$chapters$pageInfo;

  factory CopyWith$Query$ChapterUpdates$chapters$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterUpdates$chapters$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ChapterUpdates$chapters$pageInfo<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> {
  _CopyWithImpl$Query$ChapterUpdates$chapters$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ChapterUpdates$chapters$pageInfo _instance;

  final TRes Function(Query$ChapterUpdates$chapters$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterUpdates$chapters$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ChapterUpdates$chapters$pageInfo<TRes>
    implements CopyWith$Query$ChapterUpdates$chapters$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ChapterUpdates$chapters$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) =>
      _res;
}
