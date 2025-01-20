import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$UpdateMangaInLibrary {
  factory Variables$Mutation$UpdateMangaInLibrary({
    required int id,
    required bool inLibrary,
  }) =>
      Variables$Mutation$UpdateMangaInLibrary._({
        r'id': id,
        r'inLibrary': inLibrary,
      });

  Variables$Mutation$UpdateMangaInLibrary._(this._$data);

  factory Variables$Mutation$UpdateMangaInLibrary.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$inLibrary = data['inLibrary'];
    result$data['inLibrary'] = (l$inLibrary as bool);
    return Variables$Mutation$UpdateMangaInLibrary._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  bool get inLibrary => (_$data['inLibrary'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$inLibrary = inLibrary;
    result$data['inLibrary'] = l$inLibrary;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateMangaInLibrary<
          Variables$Mutation$UpdateMangaInLibrary>
      get copyWith => CopyWith$Variables$Mutation$UpdateMangaInLibrary(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateMangaInLibrary ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inLibrary = inLibrary;
    final lOther$inLibrary = other.inLibrary;
    if (l$inLibrary != lOther$inLibrary) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inLibrary = inLibrary;
    return Object.hashAll([
      l$id,
      l$inLibrary,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateMangaInLibrary<TRes> {
  factory CopyWith$Variables$Mutation$UpdateMangaInLibrary(
    Variables$Mutation$UpdateMangaInLibrary instance,
    TRes Function(Variables$Mutation$UpdateMangaInLibrary) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateMangaInLibrary;

  factory CopyWith$Variables$Mutation$UpdateMangaInLibrary.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateMangaInLibrary;

  TRes call({
    int? id,
    bool? inLibrary,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateMangaInLibrary<TRes>
    implements CopyWith$Variables$Mutation$UpdateMangaInLibrary<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateMangaInLibrary(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateMangaInLibrary _instance;

  final TRes Function(Variables$Mutation$UpdateMangaInLibrary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? inLibrary = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateMangaInLibrary._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (inLibrary != _undefined && inLibrary != null)
          'inLibrary': (inLibrary as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateMangaInLibrary<TRes>
    implements CopyWith$Variables$Mutation$UpdateMangaInLibrary<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateMangaInLibrary(this._res);

  TRes _res;

  call({
    int? id,
    bool? inLibrary,
  }) =>
      _res;
}

class Mutation$UpdateMangaInLibrary {
  Mutation$UpdateMangaInLibrary({
    this.updateManga,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateMangaInLibrary.fromJson(Map<String, dynamic> json) {
    final l$updateManga = json['updateManga'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMangaInLibrary(
      updateManga: l$updateManga == null
          ? null
          : Mutation$UpdateMangaInLibrary$updateManga.fromJson(
              (l$updateManga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateMangaInLibrary$updateManga? updateManga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateManga = updateManga;
    _resultData['updateManga'] = l$updateManga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateManga = updateManga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateManga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateMangaInLibrary ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateManga = updateManga;
    final lOther$updateManga = other.updateManga;
    if (l$updateManga != lOther$updateManga) {
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

extension UtilityExtension$Mutation$UpdateMangaInLibrary
    on Mutation$UpdateMangaInLibrary {
  CopyWith$Mutation$UpdateMangaInLibrary<Mutation$UpdateMangaInLibrary>
      get copyWith => CopyWith$Mutation$UpdateMangaInLibrary(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMangaInLibrary<TRes> {
  factory CopyWith$Mutation$UpdateMangaInLibrary(
    Mutation$UpdateMangaInLibrary instance,
    TRes Function(Mutation$UpdateMangaInLibrary) then,
  ) = _CopyWithImpl$Mutation$UpdateMangaInLibrary;

  factory CopyWith$Mutation$UpdateMangaInLibrary.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMangaInLibrary;

  TRes call({
    Mutation$UpdateMangaInLibrary$updateManga? updateManga,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> get updateManga;
}

class _CopyWithImpl$Mutation$UpdateMangaInLibrary<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary<TRes> {
  _CopyWithImpl$Mutation$UpdateMangaInLibrary(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMangaInLibrary _instance;

  final TRes Function(Mutation$UpdateMangaInLibrary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateManga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMangaInLibrary(
        updateManga: updateManga == _undefined
            ? _instance.updateManga
            : (updateManga as Mutation$UpdateMangaInLibrary$updateManga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> get updateManga {
    final local$updateManga = _instance.updateManga;
    return local$updateManga == null
        ? CopyWith$Mutation$UpdateMangaInLibrary$updateManga.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateMangaInLibrary$updateManga(
            local$updateManga, (e) => call(updateManga: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateMangaInLibrary<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMangaInLibrary(this._res);

  TRes _res;

  call({
    Mutation$UpdateMangaInLibrary$updateManga? updateManga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> get updateManga =>
      CopyWith$Mutation$UpdateMangaInLibrary$updateManga.stub(_res);
}

const documentNodeMutationUpdateMangaInLibrary = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateMangaInLibrary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'inLibrary')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateManga'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'clientMutationId'),
                value: StringValueNode(
                  value: 'update_manga_in_library',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'patch'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'inLibrary'),
                    value: VariableNode(name: NameNode(value: 'inLibrary')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'inLibrary'),
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
Mutation$UpdateMangaInLibrary _parserFn$Mutation$UpdateMangaInLibrary(
        Map<String, dynamic> data) =>
    Mutation$UpdateMangaInLibrary.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateMangaInLibrary = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateMangaInLibrary?,
);

class Options$Mutation$UpdateMangaInLibrary
    extends graphql.MutationOptions<Mutation$UpdateMangaInLibrary> {
  Options$Mutation$UpdateMangaInLibrary({
    String? operationName,
    required Variables$Mutation$UpdateMangaInLibrary variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateMangaInLibrary? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateMangaInLibrary? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateMangaInLibrary>? update,
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
                        : _parserFn$Mutation$UpdateMangaInLibrary(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateMangaInLibrary,
          parserFn: _parserFn$Mutation$UpdateMangaInLibrary,
        );

  final OnMutationCompleted$Mutation$UpdateMangaInLibrary?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateMangaInLibrary
    extends graphql.WatchQueryOptions<Mutation$UpdateMangaInLibrary> {
  WatchOptions$Mutation$UpdateMangaInLibrary({
    String? operationName,
    required Variables$Mutation$UpdateMangaInLibrary variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateMangaInLibrary? typedOptimisticResult,
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
          document: documentNodeMutationUpdateMangaInLibrary,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateMangaInLibrary,
        );
}

extension ClientExtension$Mutation$UpdateMangaInLibrary
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateMangaInLibrary>>
      mutate$UpdateMangaInLibrary(
              Options$Mutation$UpdateMangaInLibrary options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateMangaInLibrary>
      watchMutation$UpdateMangaInLibrary(
              WatchOptions$Mutation$UpdateMangaInLibrary options) =>
          this.watchMutation(options);
}

class Mutation$UpdateMangaInLibrary$updateManga {
  Mutation$UpdateMangaInLibrary$updateManga({
    required this.manga,
    this.$__typename = 'UpdateMangaPayload',
  });

  factory Mutation$UpdateMangaInLibrary$updateManga.fromJson(
      Map<String, dynamic> json) {
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMangaInLibrary$updateManga(
      manga: Mutation$UpdateMangaInLibrary$updateManga$manga.fromJson(
          (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateMangaInLibrary$updateManga$manga manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manga = manga;
    _resultData['manga'] = l$manga.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateMangaInLibrary$updateManga ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateMangaInLibrary$updateManga
    on Mutation$UpdateMangaInLibrary$updateManga {
  CopyWith$Mutation$UpdateMangaInLibrary$updateManga<
          Mutation$UpdateMangaInLibrary$updateManga>
      get copyWith => CopyWith$Mutation$UpdateMangaInLibrary$updateManga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> {
  factory CopyWith$Mutation$UpdateMangaInLibrary$updateManga(
    Mutation$UpdateMangaInLibrary$updateManga instance,
    TRes Function(Mutation$UpdateMangaInLibrary$updateManga) then,
  ) = _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga;

  factory CopyWith$Mutation$UpdateMangaInLibrary$updateManga.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga;

  TRes call({
    Mutation$UpdateMangaInLibrary$updateManga$manga? manga,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> get manga;
}

class _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> {
  _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMangaInLibrary$updateManga _instance;

  final TRes Function(Mutation$UpdateMangaInLibrary$updateManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMangaInLibrary$updateManga(
        manga: manga == _undefined || manga == null
            ? _instance.manga
            : (manga as Mutation$UpdateMangaInLibrary$updateManga$manga),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga(
        local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary$updateManga<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga(this._res);

  TRes _res;

  call({
    Mutation$UpdateMangaInLibrary$updateManga$manga? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> get manga =>
      CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga.stub(_res);
}

class Mutation$UpdateMangaInLibrary$updateManga$manga {
  Mutation$UpdateMangaInLibrary$updateManga$manga({
    required this.id,
    required this.inLibrary,
    required this.title,
    this.$__typename = 'MangaType',
  });

  factory Mutation$UpdateMangaInLibrary$updateManga$manga.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$inLibrary = json['inLibrary'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMangaInLibrary$updateManga$manga(
      id: (l$id as int),
      inLibrary: (l$inLibrary as bool),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool inLibrary;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$inLibrary = inLibrary;
    _resultData['inLibrary'] = l$inLibrary;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inLibrary = inLibrary;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$inLibrary,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateMangaInLibrary$updateManga$manga ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inLibrary = inLibrary;
    final lOther$inLibrary = other.inLibrary;
    if (l$inLibrary != lOther$inLibrary) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Mutation$UpdateMangaInLibrary$updateManga$manga
    on Mutation$UpdateMangaInLibrary$updateManga$manga {
  CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<
          Mutation$UpdateMangaInLibrary$updateManga$manga>
      get copyWith => CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> {
  factory CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga(
    Mutation$UpdateMangaInLibrary$updateManga$manga instance,
    TRes Function(Mutation$UpdateMangaInLibrary$updateManga$manga) then,
  ) = _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga$manga;

  factory CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga$manga;

  TRes call({
    int? id,
    bool? inLibrary,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> {
  _CopyWithImpl$Mutation$UpdateMangaInLibrary$updateManga$manga(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMangaInLibrary$updateManga$manga _instance;

  final TRes Function(Mutation$UpdateMangaInLibrary$updateManga$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? inLibrary = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMangaInLibrary$updateManga$manga(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        inLibrary: inLibrary == _undefined || inLibrary == null
            ? _instance.inLibrary
            : (inLibrary as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes>
    implements CopyWith$Mutation$UpdateMangaInLibrary$updateManga$manga<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMangaInLibrary$updateManga$manga(this._res);

  TRes _res;

  call({
    int? id,
    bool? inLibrary,
    String? title,
    String? $__typename,
  }) =>
      _res;
}
