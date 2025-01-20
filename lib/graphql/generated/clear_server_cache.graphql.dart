import 'dart:async';

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Mutation$ClearServerCache {
  Mutation$ClearServerCache({
    required this.clearCachedImages,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ClearServerCache.fromJson(Map<String, dynamic> json) {
    final l$clearCachedImages = json['clearCachedImages'];
    final l$$__typename = json['__typename'];
    return Mutation$ClearServerCache(
      clearCachedImages: Mutation$ClearServerCache$clearCachedImages.fromJson(
          (l$clearCachedImages as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ClearServerCache$clearCachedImages clearCachedImages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clearCachedImages = clearCachedImages;
    _resultData['clearCachedImages'] = l$clearCachedImages.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clearCachedImages = clearCachedImages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clearCachedImages,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ClearServerCache ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clearCachedImages = clearCachedImages;
    final lOther$clearCachedImages = other.clearCachedImages;
    if (l$clearCachedImages != lOther$clearCachedImages) {
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

extension UtilityExtension$Mutation$ClearServerCache
    on Mutation$ClearServerCache {
  CopyWith$Mutation$ClearServerCache<Mutation$ClearServerCache> get copyWith =>
      CopyWith$Mutation$ClearServerCache(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ClearServerCache<TRes> {
  factory CopyWith$Mutation$ClearServerCache(
    Mutation$ClearServerCache instance,
    TRes Function(Mutation$ClearServerCache) then,
  ) = _CopyWithImpl$Mutation$ClearServerCache;

  factory CopyWith$Mutation$ClearServerCache.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ClearServerCache;

  TRes call({
    Mutation$ClearServerCache$clearCachedImages? clearCachedImages,
    String? $__typename,
  });
  CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes>
      get clearCachedImages;
}

class _CopyWithImpl$Mutation$ClearServerCache<TRes>
    implements CopyWith$Mutation$ClearServerCache<TRes> {
  _CopyWithImpl$Mutation$ClearServerCache(
    this._instance,
    this._then,
  );

  final Mutation$ClearServerCache _instance;

  final TRes Function(Mutation$ClearServerCache) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clearCachedImages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ClearServerCache(
        clearCachedImages:
            clearCachedImages == _undefined || clearCachedImages == null
                ? _instance.clearCachedImages
                : (clearCachedImages
                    as Mutation$ClearServerCache$clearCachedImages),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes>
      get clearCachedImages {
    final local$clearCachedImages = _instance.clearCachedImages;
    return CopyWith$Mutation$ClearServerCache$clearCachedImages(
        local$clearCachedImages, (e) => call(clearCachedImages: e));
  }
}

class _CopyWithStubImpl$Mutation$ClearServerCache<TRes>
    implements CopyWith$Mutation$ClearServerCache<TRes> {
  _CopyWithStubImpl$Mutation$ClearServerCache(this._res);

  TRes _res;

  call({
    Mutation$ClearServerCache$clearCachedImages? clearCachedImages,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes>
      get clearCachedImages =>
          CopyWith$Mutation$ClearServerCache$clearCachedImages.stub(_res);
}

const documentNodeMutationClearServerCache = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ClearServerCache'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'clearCachedImages'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'cachedPages'),
                value: BooleanValueNode(value: true),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'cachedThumbnails'),
                value: BooleanValueNode(value: true),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'cachedPages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cachedThumbnails'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'downloadedThumbnails'),
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
Mutation$ClearServerCache _parserFn$Mutation$ClearServerCache(
        Map<String, dynamic> data) =>
    Mutation$ClearServerCache.fromJson(data);
typedef OnMutationCompleted$Mutation$ClearServerCache = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ClearServerCache?,
);

class Options$Mutation$ClearServerCache
    extends graphql.MutationOptions<Mutation$ClearServerCache> {
  Options$Mutation$ClearServerCache({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ClearServerCache? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ClearServerCache? onCompleted,
    graphql.OnMutationUpdate<Mutation$ClearServerCache>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$Mutation$ClearServerCache(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationClearServerCache,
          parserFn: _parserFn$Mutation$ClearServerCache,
        );

  final OnMutationCompleted$Mutation$ClearServerCache? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ClearServerCache
    extends graphql.WatchQueryOptions<Mutation$ClearServerCache> {
  WatchOptions$Mutation$ClearServerCache({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ClearServerCache? typedOptimisticResult,
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
          document: documentNodeMutationClearServerCache,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ClearServerCache,
        );
}

extension ClientExtension$Mutation$ClearServerCache on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ClearServerCache>>
      mutate$ClearServerCache(
              [Options$Mutation$ClearServerCache? options]) async =>
          await this.mutate(options ?? Options$Mutation$ClearServerCache());
  graphql.ObservableQuery<
      Mutation$ClearServerCache> watchMutation$ClearServerCache(
          [WatchOptions$Mutation$ClearServerCache? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ClearServerCache());
}

class Mutation$ClearServerCache$clearCachedImages {
  Mutation$ClearServerCache$clearCachedImages({
    this.cachedPages,
    this.cachedThumbnails,
    this.downloadedThumbnails,
    this.$__typename = 'ClearCachedImagesPayload',
  });

  factory Mutation$ClearServerCache$clearCachedImages.fromJson(
      Map<String, dynamic> json) {
    final l$cachedPages = json['cachedPages'];
    final l$cachedThumbnails = json['cachedThumbnails'];
    final l$downloadedThumbnails = json['downloadedThumbnails'];
    final l$$__typename = json['__typename'];
    return Mutation$ClearServerCache$clearCachedImages(
      cachedPages: (l$cachedPages as bool?),
      cachedThumbnails: (l$cachedThumbnails as bool?),
      downloadedThumbnails: (l$downloadedThumbnails as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? cachedPages;

  final bool? cachedThumbnails;

  final bool? downloadedThumbnails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cachedPages = cachedPages;
    _resultData['cachedPages'] = l$cachedPages;
    final l$cachedThumbnails = cachedThumbnails;
    _resultData['cachedThumbnails'] = l$cachedThumbnails;
    final l$downloadedThumbnails = downloadedThumbnails;
    _resultData['downloadedThumbnails'] = l$downloadedThumbnails;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cachedPages = cachedPages;
    final l$cachedThumbnails = cachedThumbnails;
    final l$downloadedThumbnails = downloadedThumbnails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cachedPages,
      l$cachedThumbnails,
      l$downloadedThumbnails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ClearServerCache$clearCachedImages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cachedPages = cachedPages;
    final lOther$cachedPages = other.cachedPages;
    if (l$cachedPages != lOther$cachedPages) {
      return false;
    }
    final l$cachedThumbnails = cachedThumbnails;
    final lOther$cachedThumbnails = other.cachedThumbnails;
    if (l$cachedThumbnails != lOther$cachedThumbnails) {
      return false;
    }
    final l$downloadedThumbnails = downloadedThumbnails;
    final lOther$downloadedThumbnails = other.downloadedThumbnails;
    if (l$downloadedThumbnails != lOther$downloadedThumbnails) {
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

extension UtilityExtension$Mutation$ClearServerCache$clearCachedImages
    on Mutation$ClearServerCache$clearCachedImages {
  CopyWith$Mutation$ClearServerCache$clearCachedImages<
          Mutation$ClearServerCache$clearCachedImages>
      get copyWith => CopyWith$Mutation$ClearServerCache$clearCachedImages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes> {
  factory CopyWith$Mutation$ClearServerCache$clearCachedImages(
    Mutation$ClearServerCache$clearCachedImages instance,
    TRes Function(Mutation$ClearServerCache$clearCachedImages) then,
  ) = _CopyWithImpl$Mutation$ClearServerCache$clearCachedImages;

  factory CopyWith$Mutation$ClearServerCache$clearCachedImages.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ClearServerCache$clearCachedImages;

  TRes call({
    bool? cachedPages,
    bool? cachedThumbnails,
    bool? downloadedThumbnails,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ClearServerCache$clearCachedImages<TRes>
    implements CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes> {
  _CopyWithImpl$Mutation$ClearServerCache$clearCachedImages(
    this._instance,
    this._then,
  );

  final Mutation$ClearServerCache$clearCachedImages _instance;

  final TRes Function(Mutation$ClearServerCache$clearCachedImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cachedPages = _undefined,
    Object? cachedThumbnails = _undefined,
    Object? downloadedThumbnails = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ClearServerCache$clearCachedImages(
        cachedPages: cachedPages == _undefined
            ? _instance.cachedPages
            : (cachedPages as bool?),
        cachedThumbnails: cachedThumbnails == _undefined
            ? _instance.cachedThumbnails
            : (cachedThumbnails as bool?),
        downloadedThumbnails: downloadedThumbnails == _undefined
            ? _instance.downloadedThumbnails
            : (downloadedThumbnails as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ClearServerCache$clearCachedImages<TRes>
    implements CopyWith$Mutation$ClearServerCache$clearCachedImages<TRes> {
  _CopyWithStubImpl$Mutation$ClearServerCache$clearCachedImages(this._res);

  TRes _res;

  call({
    bool? cachedPages,
    bool? cachedThumbnails,
    bool? downloadedThumbnails,
    String? $__typename,
  }) =>
      _res;
}
