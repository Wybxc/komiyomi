import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$Chapter {
  Fragment$Chapter({
    required this.id,
    required this.name,
    required this.mangaId,
    required this.chapterNumber,
    this.scanlator,
    required this.uploadDate,
    this.$__typename = 'ChapterType',
  });

  factory Fragment$Chapter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$mangaId = json['mangaId'];
    final l$chapterNumber = json['chapterNumber'];
    final l$scanlator = json['scanlator'];
    final l$uploadDate = json['uploadDate'];
    final l$$__typename = json['__typename'];
    return Fragment$Chapter(
      id: (l$id as int),
      name: (l$name as String),
      mangaId: (l$mangaId as int),
      chapterNumber: (l$chapterNumber as num).toDouble(),
      scanlator: (l$scanlator as String?),
      uploadDate: (l$uploadDate as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int mangaId;

  final double chapterNumber;

  final String? scanlator;

  final String uploadDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$mangaId = mangaId;
    _resultData['mangaId'] = l$mangaId;
    final l$chapterNumber = chapterNumber;
    _resultData['chapterNumber'] = l$chapterNumber;
    final l$scanlator = scanlator;
    _resultData['scanlator'] = l$scanlator;
    final l$uploadDate = uploadDate;
    _resultData['uploadDate'] = l$uploadDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$mangaId = mangaId;
    final l$chapterNumber = chapterNumber;
    final l$scanlator = scanlator;
    final l$uploadDate = uploadDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$mangaId,
      l$chapterNumber,
      l$scanlator,
      l$uploadDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Chapter || runtimeType != other.runtimeType) {
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
    final l$chapterNumber = chapterNumber;
    final lOther$chapterNumber = other.chapterNumber;
    if (l$chapterNumber != lOther$chapterNumber) {
      return false;
    }
    final l$scanlator = scanlator;
    final lOther$scanlator = other.scanlator;
    if (l$scanlator != lOther$scanlator) {
      return false;
    }
    final l$uploadDate = uploadDate;
    final lOther$uploadDate = other.uploadDate;
    if (l$uploadDate != lOther$uploadDate) {
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

extension UtilityExtension$Fragment$Chapter on Fragment$Chapter {
  CopyWith$Fragment$Chapter<Fragment$Chapter> get copyWith =>
      CopyWith$Fragment$Chapter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Chapter<TRes> {
  factory CopyWith$Fragment$Chapter(
    Fragment$Chapter instance,
    TRes Function(Fragment$Chapter) then,
  ) = _CopyWithImpl$Fragment$Chapter;

  factory CopyWith$Fragment$Chapter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Chapter;

  TRes call({
    int? id,
    String? name,
    int? mangaId,
    double? chapterNumber,
    String? scanlator,
    String? uploadDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Chapter<TRes>
    implements CopyWith$Fragment$Chapter<TRes> {
  _CopyWithImpl$Fragment$Chapter(
    this._instance,
    this._then,
  );

  final Fragment$Chapter _instance;

  final TRes Function(Fragment$Chapter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? mangaId = _undefined,
    Object? chapterNumber = _undefined,
    Object? scanlator = _undefined,
    Object? uploadDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Chapter(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        mangaId: mangaId == _undefined || mangaId == null
            ? _instance.mangaId
            : (mangaId as int),
        chapterNumber: chapterNumber == _undefined || chapterNumber == null
            ? _instance.chapterNumber
            : (chapterNumber as double),
        scanlator: scanlator == _undefined
            ? _instance.scanlator
            : (scanlator as String?),
        uploadDate: uploadDate == _undefined || uploadDate == null
            ? _instance.uploadDate
            : (uploadDate as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Chapter<TRes>
    implements CopyWith$Fragment$Chapter<TRes> {
  _CopyWithStubImpl$Fragment$Chapter(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? mangaId,
    double? chapterNumber,
    String? scanlator,
    String? uploadDate,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionChapter = FragmentDefinitionNode(
  name: NameNode(value: 'Chapter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ChapterType'),
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
      name: NameNode(value: 'mangaId'),
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
      name: NameNode(value: 'scanlator'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentChapter = DocumentNode(definitions: [
  fragmentDefinitionChapter,
]);

extension ClientExtension$Fragment$Chapter on graphql.GraphQLClient {
  void writeFragment$Chapter({
    required Fragment$Chapter data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Chapter',
            document: documentNodeFragmentChapter,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Chapter? readFragment$Chapter({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Chapter',
          document: documentNodeFragmentChapter,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Chapter.fromJson(result);
  }
}

class Variables$Mutation$FetchChapterList {
  factory Variables$Mutation$FetchChapterList({required int mangaId}) =>
      Variables$Mutation$FetchChapterList._({
        r'mangaId': mangaId,
      });

  Variables$Mutation$FetchChapterList._(this._$data);

  factory Variables$Mutation$FetchChapterList.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mangaId = data['mangaId'];
    result$data['mangaId'] = (l$mangaId as int);
    return Variables$Mutation$FetchChapterList._(result$data);
  }

  Map<String, dynamic> _$data;

  int get mangaId => (_$data['mangaId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mangaId = mangaId;
    result$data['mangaId'] = l$mangaId;
    return result$data;
  }

  CopyWith$Variables$Mutation$FetchChapterList<
          Variables$Mutation$FetchChapterList>
      get copyWith => CopyWith$Variables$Mutation$FetchChapterList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FetchChapterList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mangaId = mangaId;
    return Object.hashAll([l$mangaId]);
  }
}

abstract class CopyWith$Variables$Mutation$FetchChapterList<TRes> {
  factory CopyWith$Variables$Mutation$FetchChapterList(
    Variables$Mutation$FetchChapterList instance,
    TRes Function(Variables$Mutation$FetchChapterList) then,
  ) = _CopyWithImpl$Variables$Mutation$FetchChapterList;

  factory CopyWith$Variables$Mutation$FetchChapterList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FetchChapterList;

  TRes call({int? mangaId});
}

class _CopyWithImpl$Variables$Mutation$FetchChapterList<TRes>
    implements CopyWith$Variables$Mutation$FetchChapterList<TRes> {
  _CopyWithImpl$Variables$Mutation$FetchChapterList(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FetchChapterList _instance;

  final TRes Function(Variables$Mutation$FetchChapterList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mangaId = _undefined}) =>
      _then(Variables$Mutation$FetchChapterList._({
        ..._instance._$data,
        if (mangaId != _undefined && mangaId != null)
          'mangaId': (mangaId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FetchChapterList<TRes>
    implements CopyWith$Variables$Mutation$FetchChapterList<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FetchChapterList(this._res);

  TRes _res;

  call({int? mangaId}) => _res;
}

class Mutation$FetchChapterList {
  Mutation$FetchChapterList({
    this.fetchChapters,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FetchChapterList.fromJson(Map<String, dynamic> json) {
    final l$fetchChapters = json['fetchChapters'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchChapterList(
      fetchChapters: l$fetchChapters == null
          ? null
          : Mutation$FetchChapterList$fetchChapters.fromJson(
              (l$fetchChapters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FetchChapterList$fetchChapters? fetchChapters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchChapters = fetchChapters;
    _resultData['fetchChapters'] = l$fetchChapters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchChapters = fetchChapters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchChapters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchChapterList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchChapters = fetchChapters;
    final lOther$fetchChapters = other.fetchChapters;
    if (l$fetchChapters != lOther$fetchChapters) {
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

extension UtilityExtension$Mutation$FetchChapterList
    on Mutation$FetchChapterList {
  CopyWith$Mutation$FetchChapterList<Mutation$FetchChapterList> get copyWith =>
      CopyWith$Mutation$FetchChapterList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FetchChapterList<TRes> {
  factory CopyWith$Mutation$FetchChapterList(
    Mutation$FetchChapterList instance,
    TRes Function(Mutation$FetchChapterList) then,
  ) = _CopyWithImpl$Mutation$FetchChapterList;

  factory CopyWith$Mutation$FetchChapterList.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchChapterList;

  TRes call({
    Mutation$FetchChapterList$fetchChapters? fetchChapters,
    String? $__typename,
  });
  CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> get fetchChapters;
}

class _CopyWithImpl$Mutation$FetchChapterList<TRes>
    implements CopyWith$Mutation$FetchChapterList<TRes> {
  _CopyWithImpl$Mutation$FetchChapterList(
    this._instance,
    this._then,
  );

  final Mutation$FetchChapterList _instance;

  final TRes Function(Mutation$FetchChapterList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchChapters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchChapterList(
        fetchChapters: fetchChapters == _undefined
            ? _instance.fetchChapters
            : (fetchChapters as Mutation$FetchChapterList$fetchChapters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> get fetchChapters {
    final local$fetchChapters = _instance.fetchChapters;
    return local$fetchChapters == null
        ? CopyWith$Mutation$FetchChapterList$fetchChapters.stub(
            _then(_instance))
        : CopyWith$Mutation$FetchChapterList$fetchChapters(
            local$fetchChapters, (e) => call(fetchChapters: e));
  }
}

class _CopyWithStubImpl$Mutation$FetchChapterList<TRes>
    implements CopyWith$Mutation$FetchChapterList<TRes> {
  _CopyWithStubImpl$Mutation$FetchChapterList(this._res);

  TRes _res;

  call({
    Mutation$FetchChapterList$fetchChapters? fetchChapters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> get fetchChapters =>
      CopyWith$Mutation$FetchChapterList$fetchChapters.stub(_res);
}

const documentNodeMutationFetchChapterList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FetchChapterList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchChapters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'mangaId'),
                value: VariableNode(name: NameNode(value: 'mangaId')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
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
Mutation$FetchChapterList _parserFn$Mutation$FetchChapterList(
        Map<String, dynamic> data) =>
    Mutation$FetchChapterList.fromJson(data);
typedef OnMutationCompleted$Mutation$FetchChapterList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$FetchChapterList?,
);

class Options$Mutation$FetchChapterList
    extends graphql.MutationOptions<Mutation$FetchChapterList> {
  Options$Mutation$FetchChapterList({
    String? operationName,
    required Variables$Mutation$FetchChapterList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchChapterList? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FetchChapterList? onCompleted,
    graphql.OnMutationUpdate<Mutation$FetchChapterList>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Mutation$FetchChapterList(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFetchChapterList,
          parserFn: _parserFn$Mutation$FetchChapterList,
        );

  final OnMutationCompleted$Mutation$FetchChapterList? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FetchChapterList
    extends graphql.WatchQueryOptions<Mutation$FetchChapterList> {
  WatchOptions$Mutation$FetchChapterList({
    String? operationName,
    required Variables$Mutation$FetchChapterList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchChapterList? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationFetchChapterList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FetchChapterList,
        );
}

extension ClientExtension$Mutation$FetchChapterList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FetchChapterList>>
      mutate$FetchChapterList(
              Options$Mutation$FetchChapterList options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$FetchChapterList>
      watchMutation$FetchChapterList(
              WatchOptions$Mutation$FetchChapterList options) =>
          this.watchMutation(options);
}

class Mutation$FetchChapterList$fetchChapters {
  Mutation$FetchChapterList$fetchChapters(
      {this.$__typename = 'FetchChaptersPayload'});

  factory Mutation$FetchChapterList$fetchChapters.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$FetchChapterList$fetchChapters(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchChapterList$fetchChapters ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$FetchChapterList$fetchChapters
    on Mutation$FetchChapterList$fetchChapters {
  CopyWith$Mutation$FetchChapterList$fetchChapters<
          Mutation$FetchChapterList$fetchChapters>
      get copyWith => CopyWith$Mutation$FetchChapterList$fetchChapters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> {
  factory CopyWith$Mutation$FetchChapterList$fetchChapters(
    Mutation$FetchChapterList$fetchChapters instance,
    TRes Function(Mutation$FetchChapterList$fetchChapters) then,
  ) = _CopyWithImpl$Mutation$FetchChapterList$fetchChapters;

  factory CopyWith$Mutation$FetchChapterList$fetchChapters.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchChapterList$fetchChapters;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$FetchChapterList$fetchChapters<TRes>
    implements CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> {
  _CopyWithImpl$Mutation$FetchChapterList$fetchChapters(
    this._instance,
    this._then,
  );

  final Mutation$FetchChapterList$fetchChapters _instance;

  final TRes Function(Mutation$FetchChapterList$fetchChapters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$FetchChapterList$fetchChapters(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$FetchChapterList$fetchChapters<TRes>
    implements CopyWith$Mutation$FetchChapterList$fetchChapters<TRes> {
  _CopyWithStubImpl$Mutation$FetchChapterList$fetchChapters(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Variables$Query$ChapterList {
  factory Variables$Query$ChapterList({
    required int mangaId,
    Enum$ChapterOrderBy? orderBy,
    Enum$SortOrder? orderByType,
  }) =>
      Variables$Query$ChapterList._({
        r'mangaId': mangaId,
        if (orderBy != null) r'orderBy': orderBy,
        if (orderByType != null) r'orderByType': orderByType,
      });

  Variables$Query$ChapterList._(this._$data);

  factory Variables$Query$ChapterList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mangaId = data['mangaId'];
    result$data['mangaId'] = (l$mangaId as int);
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = l$orderBy == null
          ? null
          : fromJson$Enum$ChapterOrderBy((l$orderBy as String));
    }
    if (data.containsKey('orderByType')) {
      final l$orderByType = data['orderByType'];
      result$data['orderByType'] = l$orderByType == null
          ? null
          : fromJson$Enum$SortOrder((l$orderByType as String));
    }
    return Variables$Query$ChapterList._(result$data);
  }

  Map<String, dynamic> _$data;

  int get mangaId => (_$data['mangaId'] as int);

  Enum$ChapterOrderBy? get orderBy =>
      (_$data['orderBy'] as Enum$ChapterOrderBy?);

  Enum$SortOrder? get orderByType => (_$data['orderByType'] as Enum$SortOrder?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mangaId = mangaId;
    result$data['mangaId'] = l$mangaId;
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] =
          l$orderBy == null ? null : toJson$Enum$ChapterOrderBy(l$orderBy);
    }
    if (_$data.containsKey('orderByType')) {
      final l$orderByType = orderByType;
      result$data['orderByType'] =
          l$orderByType == null ? null : toJson$Enum$SortOrder(l$orderByType);
    }
    return result$data;
  }

  CopyWith$Variables$Query$ChapterList<Variables$Query$ChapterList>
      get copyWith => CopyWith$Variables$Query$ChapterList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ChapterList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$orderByType = orderByType;
    final lOther$orderByType = other.orderByType;
    if (_$data.containsKey('orderByType') !=
        other._$data.containsKey('orderByType')) {
      return false;
    }
    if (l$orderByType != lOther$orderByType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mangaId = mangaId;
    final l$orderBy = orderBy;
    final l$orderByType = orderByType;
    return Object.hashAll([
      l$mangaId,
      _$data.containsKey('orderBy') ? l$orderBy : const {},
      _$data.containsKey('orderByType') ? l$orderByType : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ChapterList<TRes> {
  factory CopyWith$Variables$Query$ChapterList(
    Variables$Query$ChapterList instance,
    TRes Function(Variables$Query$ChapterList) then,
  ) = _CopyWithImpl$Variables$Query$ChapterList;

  factory CopyWith$Variables$Query$ChapterList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ChapterList;

  TRes call({
    int? mangaId,
    Enum$ChapterOrderBy? orderBy,
    Enum$SortOrder? orderByType,
  });
}

class _CopyWithImpl$Variables$Query$ChapterList<TRes>
    implements CopyWith$Variables$Query$ChapterList<TRes> {
  _CopyWithImpl$Variables$Query$ChapterList(
    this._instance,
    this._then,
  );

  final Variables$Query$ChapterList _instance;

  final TRes Function(Variables$Query$ChapterList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mangaId = _undefined,
    Object? orderBy = _undefined,
    Object? orderByType = _undefined,
  }) =>
      _then(Variables$Query$ChapterList._({
        ..._instance._$data,
        if (mangaId != _undefined && mangaId != null)
          'mangaId': (mangaId as int),
        if (orderBy != _undefined) 'orderBy': (orderBy as Enum$ChapterOrderBy?),
        if (orderByType != _undefined)
          'orderByType': (orderByType as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ChapterList<TRes>
    implements CopyWith$Variables$Query$ChapterList<TRes> {
  _CopyWithStubImpl$Variables$Query$ChapterList(this._res);

  TRes _res;

  call({
    int? mangaId,
    Enum$ChapterOrderBy? orderBy,
    Enum$SortOrder? orderByType,
  }) =>
      _res;
}

class Query$ChapterList {
  Query$ChapterList({
    required this.chapters,
    this.$__typename = 'Query',
  });

  factory Query$ChapterList.fromJson(Map<String, dynamic> json) {
    final l$chapters = json['chapters'];
    final l$$__typename = json['__typename'];
    return Query$ChapterList(
      chapters: Query$ChapterList$chapters.fromJson(
          (l$chapters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ChapterList$chapters chapters;

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
    if (other is! Query$ChapterList || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ChapterList on Query$ChapterList {
  CopyWith$Query$ChapterList<Query$ChapterList> get copyWith =>
      CopyWith$Query$ChapterList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ChapterList<TRes> {
  factory CopyWith$Query$ChapterList(
    Query$ChapterList instance,
    TRes Function(Query$ChapterList) then,
  ) = _CopyWithImpl$Query$ChapterList;

  factory CopyWith$Query$ChapterList.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterList;

  TRes call({
    Query$ChapterList$chapters? chapters,
    String? $__typename,
  });
  CopyWith$Query$ChapterList$chapters<TRes> get chapters;
}

class _CopyWithImpl$Query$ChapterList<TRes>
    implements CopyWith$Query$ChapterList<TRes> {
  _CopyWithImpl$Query$ChapterList(
    this._instance,
    this._then,
  );

  final Query$ChapterList _instance;

  final TRes Function(Query$ChapterList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chapters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterList(
        chapters: chapters == _undefined || chapters == null
            ? _instance.chapters
            : (chapters as Query$ChapterList$chapters),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ChapterList$chapters<TRes> get chapters {
    final local$chapters = _instance.chapters;
    return CopyWith$Query$ChapterList$chapters(
        local$chapters, (e) => call(chapters: e));
  }
}

class _CopyWithStubImpl$Query$ChapterList<TRes>
    implements CopyWith$Query$ChapterList<TRes> {
  _CopyWithStubImpl$Query$ChapterList(this._res);

  TRes _res;

  call({
    Query$ChapterList$chapters? chapters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ChapterList$chapters<TRes> get chapters =>
      CopyWith$Query$ChapterList$chapters.stub(_res);
}

const documentNodeQueryChapterList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ChapterList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChapterOrderBy'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderByType')),
        type: NamedTypeNode(
          name: NameNode(value: 'SortOrder'),
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
            name: NameNode(value: 'condition'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'mangaId'),
                value: VariableNode(name: NameNode(value: 'mangaId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderByType'),
            value: VariableNode(name: NameNode(value: 'orderByType')),
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
              FragmentSpreadNode(
                name: NameNode(value: 'Chapter'),
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
  fragmentDefinitionChapter,
]);
Query$ChapterList _parserFn$Query$ChapterList(Map<String, dynamic> data) =>
    Query$ChapterList.fromJson(data);
typedef OnQueryComplete$Query$ChapterList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ChapterList?,
);

class Options$Query$ChapterList
    extends graphql.QueryOptions<Query$ChapterList> {
  Options$Query$ChapterList({
    String? operationName,
    required Variables$Query$ChapterList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ChapterList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ChapterList? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$ChapterList(data),
                  ),
          onError: onError,
          document: documentNodeQueryChapterList,
          parserFn: _parserFn$Query$ChapterList,
        );

  final OnQueryComplete$Query$ChapterList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ChapterList
    extends graphql.WatchQueryOptions<Query$ChapterList> {
  WatchOptions$Query$ChapterList({
    String? operationName,
    required Variables$Query$ChapterList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ChapterList? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryChapterList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ChapterList,
        );
}

class FetchMoreOptions$Query$ChapterList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ChapterList({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ChapterList variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryChapterList,
        );
}

extension ClientExtension$Query$ChapterList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ChapterList>> query$ChapterList(
          Options$Query$ChapterList options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ChapterList> watchQuery$ChapterList(
          WatchOptions$Query$ChapterList options) =>
      this.watchQuery(options);
  void writeQuery$ChapterList({
    required Query$ChapterList data,
    required Variables$Query$ChapterList variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryChapterList),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ChapterList? readQuery$ChapterList({
    required Variables$Query$ChapterList variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryChapterList),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ChapterList.fromJson(result);
  }
}

class Query$ChapterList$chapters {
  Query$ChapterList$chapters({
    required this.nodes,
    this.$__typename = 'ChapterNodeList',
  });

  factory Query$ChapterList$chapters.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ChapterList$chapters(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Fragment$Chapter.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Chapter> nodes;

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
    if (other is! Query$ChapterList$chapters ||
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

extension UtilityExtension$Query$ChapterList$chapters
    on Query$ChapterList$chapters {
  CopyWith$Query$ChapterList$chapters<Query$ChapterList$chapters>
      get copyWith => CopyWith$Query$ChapterList$chapters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ChapterList$chapters<TRes> {
  factory CopyWith$Query$ChapterList$chapters(
    Query$ChapterList$chapters instance,
    TRes Function(Query$ChapterList$chapters) then,
  ) = _CopyWithImpl$Query$ChapterList$chapters;

  factory CopyWith$Query$ChapterList$chapters.stub(TRes res) =
      _CopyWithStubImpl$Query$ChapterList$chapters;

  TRes call({
    List<Fragment$Chapter>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$Chapter> Function(
              Iterable<CopyWith$Fragment$Chapter<Fragment$Chapter>>)
          _fn);
}

class _CopyWithImpl$Query$ChapterList$chapters<TRes>
    implements CopyWith$Query$ChapterList$chapters<TRes> {
  _CopyWithImpl$Query$ChapterList$chapters(
    this._instance,
    this._then,
  );

  final Query$ChapterList$chapters _instance;

  final TRes Function(Query$ChapterList$chapters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ChapterList$chapters(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Fragment$Chapter>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$Chapter> Function(
                  Iterable<CopyWith$Fragment$Chapter<Fragment$Chapter>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) => CopyWith$Fragment$Chapter(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ChapterList$chapters<TRes>
    implements CopyWith$Query$ChapterList$chapters<TRes> {
  _CopyWithStubImpl$Query$ChapterList$chapters(this._res);

  TRes _res;

  call({
    List<Fragment$Chapter>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}
