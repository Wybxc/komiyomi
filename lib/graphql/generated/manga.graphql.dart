import 'dart:async';

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

import 'schema.graphql.dart';

class Fragment$Manga {
  Fragment$Manga({
    required this.id,
    required this.title,
    this.thumbnailUrl,
    this.$__typename = 'MangaType',
  });

  factory Fragment$Manga.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$Manga(
      id: (l$id as int),
      title: (l$title as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? thumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnailUrl = thumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$thumbnailUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Manga || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Manga on Fragment$Manga {
  CopyWith$Fragment$Manga<Fragment$Manga> get copyWith =>
      CopyWith$Fragment$Manga(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Manga<TRes> {
  factory CopyWith$Fragment$Manga(
    Fragment$Manga instance,
    TRes Function(Fragment$Manga) then,
  ) = _CopyWithImpl$Fragment$Manga;

  factory CopyWith$Fragment$Manga.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Manga;

  TRes call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Manga<TRes>
    implements CopyWith$Fragment$Manga<TRes> {
  _CopyWithImpl$Fragment$Manga(
    this._instance,
    this._then,
  );

  final Fragment$Manga _instance;

  final TRes Function(Fragment$Manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Manga(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Manga<TRes>
    implements CopyWith$Fragment$Manga<TRes> {
  _CopyWithStubImpl$Fragment$Manga(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionManga = FragmentDefinitionNode(
  name: NameNode(value: 'Manga'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MangaType'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentManga = DocumentNode(definitions: [
  fragmentDefinitionManga,
]);

extension ClientExtension$Fragment$Manga on graphql.GraphQLClient {
  void writeFragment$Manga({
    required Fragment$Manga data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Manga',
            document: documentNodeFragmentManga,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Manga? readFragment$Manga({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Manga',
          document: documentNodeFragmentManga,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Manga.fromJson(result);
  }
}

class Fragment$MangaDetails implements Fragment$Manga {
  Fragment$MangaDetails({
    required this.id,
    required this.title,
    this.thumbnailUrl,
    this.$__typename = 'MangaType',
    required this.initialized,
    this.author,
    this.artist,
    required this.status,
    required this.inLibrary,
    this.description,
    this.realUrl,
    required this.genre,
    this.source,
  });

  factory Fragment$MangaDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    final l$initialized = json['initialized'];
    final l$author = json['author'];
    final l$artist = json['artist'];
    final l$status = json['status'];
    final l$inLibrary = json['inLibrary'];
    final l$description = json['description'];
    final l$realUrl = json['realUrl'];
    final l$genre = json['genre'];
    final l$source = json['source'];
    return Fragment$MangaDetails(
      id: (l$id as int),
      title: (l$title as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      $__typename: (l$$__typename as String),
      initialized: (l$initialized as bool),
      author: (l$author as String?),
      artist: (l$artist as String?),
      status: fromJson$Enum$MangaStatus((l$status as String)),
      inLibrary: (l$inLibrary as bool),
      description: (l$description as String?),
      realUrl: (l$realUrl as String?),
      genre: (l$genre as List<dynamic>).map((e) => (e as String)).toList(),
      source: l$source == null
          ? null
          : Fragment$MangaDetails$source.fromJson(
              (l$source as Map<String, dynamic>)),
    );
  }

  final int id;

  final String title;

  final String? thumbnailUrl;

  final String $__typename;

  final bool initialized;

  final String? author;

  final String? artist;

  final Enum$MangaStatus status;

  final bool inLibrary;

  final String? description;

  final String? realUrl;

  final List<String> genre;

  final Fragment$MangaDetails$source? source;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$initialized = initialized;
    _resultData['initialized'] = l$initialized;
    final l$author = author;
    _resultData['author'] = l$author;
    final l$artist = artist;
    _resultData['artist'] = l$artist;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MangaStatus(l$status);
    final l$inLibrary = inLibrary;
    _resultData['inLibrary'] = l$inLibrary;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$realUrl = realUrl;
    _resultData['realUrl'] = l$realUrl;
    final l$genre = genre;
    _resultData['genre'] = l$genre.map((e) => e).toList();
    final l$source = source;
    _resultData['source'] = l$source?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnailUrl = thumbnailUrl;
    final l$$__typename = $__typename;
    final l$initialized = initialized;
    final l$author = author;
    final l$artist = artist;
    final l$status = status;
    final l$inLibrary = inLibrary;
    final l$description = description;
    final l$realUrl = realUrl;
    final l$genre = genre;
    final l$source = source;
    return Object.hashAll([
      l$id,
      l$title,
      l$thumbnailUrl,
      l$$__typename,
      l$initialized,
      l$author,
      l$artist,
      l$status,
      l$inLibrary,
      l$description,
      l$realUrl,
      Object.hashAll(l$genre.map((v) => v)),
      l$source,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MangaDetails || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$initialized = initialized;
    final lOther$initialized = other.initialized;
    if (l$initialized != lOther$initialized) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$artist = artist;
    final lOther$artist = other.artist;
    if (l$artist != lOther$artist) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$inLibrary = inLibrary;
    final lOther$inLibrary = other.inLibrary;
    if (l$inLibrary != lOther$inLibrary) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$realUrl = realUrl;
    final lOther$realUrl = other.realUrl;
    if (l$realUrl != lOther$realUrl) {
      return false;
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (l$genre.length != lOther$genre.length) {
      return false;
    }
    for (int i = 0; i < l$genre.length; i++) {
      final l$genre$entry = l$genre[i];
      final lOther$genre$entry = lOther$genre[i];
      if (l$genre$entry != lOther$genre$entry) {
        return false;
      }
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MangaDetails on Fragment$MangaDetails {
  CopyWith$Fragment$MangaDetails<Fragment$MangaDetails> get copyWith =>
      CopyWith$Fragment$MangaDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MangaDetails<TRes> {
  factory CopyWith$Fragment$MangaDetails(
    Fragment$MangaDetails instance,
    TRes Function(Fragment$MangaDetails) then,
  ) = _CopyWithImpl$Fragment$MangaDetails;

  factory CopyWith$Fragment$MangaDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MangaDetails;

  TRes call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? $__typename,
    bool? initialized,
    String? author,
    String? artist,
    Enum$MangaStatus? status,
    bool? inLibrary,
    String? description,
    String? realUrl,
    List<String>? genre,
    Fragment$MangaDetails$source? source,
  });
  CopyWith$Fragment$MangaDetails$source<TRes> get source;
}

class _CopyWithImpl$Fragment$MangaDetails<TRes>
    implements CopyWith$Fragment$MangaDetails<TRes> {
  _CopyWithImpl$Fragment$MangaDetails(
    this._instance,
    this._then,
  );

  final Fragment$MangaDetails _instance;

  final TRes Function(Fragment$MangaDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
    Object? initialized = _undefined,
    Object? author = _undefined,
    Object? artist = _undefined,
    Object? status = _undefined,
    Object? inLibrary = _undefined,
    Object? description = _undefined,
    Object? realUrl = _undefined,
    Object? genre = _undefined,
    Object? source = _undefined,
  }) =>
      _then(Fragment$MangaDetails(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        initialized: initialized == _undefined || initialized == null
            ? _instance.initialized
            : (initialized as bool),
        author: author == _undefined ? _instance.author : (author as String?),
        artist: artist == _undefined ? _instance.artist : (artist as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MangaStatus),
        inLibrary: inLibrary == _undefined || inLibrary == null
            ? _instance.inLibrary
            : (inLibrary as bool),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        realUrl:
            realUrl == _undefined ? _instance.realUrl : (realUrl as String?),
        genre: genre == _undefined || genre == null
            ? _instance.genre
            : (genre as List<String>),
        source: source == _undefined
            ? _instance.source
            : (source as Fragment$MangaDetails$source?),
      ));

  CopyWith$Fragment$MangaDetails$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Fragment$MangaDetails$source.stub(_then(_instance))
        : CopyWith$Fragment$MangaDetails$source(
            local$source, (e) => call(source: e));
  }
}

class _CopyWithStubImpl$Fragment$MangaDetails<TRes>
    implements CopyWith$Fragment$MangaDetails<TRes> {
  _CopyWithStubImpl$Fragment$MangaDetails(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? $__typename,
    bool? initialized,
    String? author,
    String? artist,
    Enum$MangaStatus? status,
    bool? inLibrary,
    String? description,
    String? realUrl,
    List<String>? genre,
    Fragment$MangaDetails$source? source,
  }) =>
      _res;

  CopyWith$Fragment$MangaDetails$source<TRes> get source =>
      CopyWith$Fragment$MangaDetails$source.stub(_res);
}

const fragmentDefinitionMangaDetails = FragmentDefinitionNode(
  name: NameNode(value: 'MangaDetails'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MangaType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Manga'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'initialized'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'author'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'artist'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
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
      name: NameNode(value: 'description'),
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
      name: NameNode(value: 'genre'),
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
const documentNodeFragmentMangaDetails = DocumentNode(definitions: [
  fragmentDefinitionMangaDetails,
  fragmentDefinitionManga,
]);

extension ClientExtension$Fragment$MangaDetails on graphql.GraphQLClient {
  void writeFragment$MangaDetails({
    required Fragment$MangaDetails data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MangaDetails',
            document: documentNodeFragmentMangaDetails,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MangaDetails? readFragment$MangaDetails({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MangaDetails',
          document: documentNodeFragmentMangaDetails,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MangaDetails.fromJson(result);
  }
}

class Fragment$MangaDetails$source {
  Fragment$MangaDetails$source({
    required this.id,
    required this.displayName,
    required this.lang,
    this.$__typename = 'SourceType',
  });

  factory Fragment$MangaDetails$source.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$displayName = json['displayName'];
    final l$lang = json['lang'];
    final l$$__typename = json['__typename'];
    return Fragment$MangaDetails$source(
      id: (l$id as String),
      displayName: (l$displayName as String),
      lang: (l$lang as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String displayName;

  final String lang;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$lang = lang;
    _resultData['lang'] = l$lang;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$displayName = displayName;
    final l$lang = lang;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$displayName,
      l$lang,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MangaDetails$source ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MangaDetails$source
    on Fragment$MangaDetails$source {
  CopyWith$Fragment$MangaDetails$source<Fragment$MangaDetails$source>
      get copyWith => CopyWith$Fragment$MangaDetails$source(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MangaDetails$source<TRes> {
  factory CopyWith$Fragment$MangaDetails$source(
    Fragment$MangaDetails$source instance,
    TRes Function(Fragment$MangaDetails$source) then,
  ) = _CopyWithImpl$Fragment$MangaDetails$source;

  factory CopyWith$Fragment$MangaDetails$source.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MangaDetails$source;

  TRes call({
    String? id,
    String? displayName,
    String? lang,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MangaDetails$source<TRes>
    implements CopyWith$Fragment$MangaDetails$source<TRes> {
  _CopyWithImpl$Fragment$MangaDetails$source(
    this._instance,
    this._then,
  );

  final Fragment$MangaDetails$source _instance;

  final TRes Function(Fragment$MangaDetails$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? displayName = _undefined,
    Object? lang = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MangaDetails$source(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        lang: lang == _undefined || lang == null
            ? _instance.lang
            : (lang as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MangaDetails$source<TRes>
    implements CopyWith$Fragment$MangaDetails$source<TRes> {
  _CopyWithStubImpl$Fragment$MangaDetails$source(this._res);

  TRes _res;

  call({
    String? id,
    String? displayName,
    String? lang,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllCategories {
  Query$AllCategories({
    required this.categories,
    this.$__typename = 'Query',
  });

  factory Query$AllCategories.fromJson(Map<String, dynamic> json) {
    final l$categories = json['categories'];
    final l$$__typename = json['__typename'];
    return Query$AllCategories(
      categories: Query$AllCategories$categories.fromJson(
          (l$categories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllCategories$categories categories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categories = categories;
    _resultData['categories'] = l$categories.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$categories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllCategories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) {
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

extension UtilityExtension$Query$AllCategories on Query$AllCategories {
  CopyWith$Query$AllCategories<Query$AllCategories> get copyWith =>
      CopyWith$Query$AllCategories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllCategories<TRes> {
  factory CopyWith$Query$AllCategories(
    Query$AllCategories instance,
    TRes Function(Query$AllCategories) then,
  ) = _CopyWithImpl$Query$AllCategories;

  factory CopyWith$Query$AllCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$AllCategories;

  TRes call({
    Query$AllCategories$categories? categories,
    String? $__typename,
  });
  CopyWith$Query$AllCategories$categories<TRes> get categories;
}

class _CopyWithImpl$Query$AllCategories<TRes>
    implements CopyWith$Query$AllCategories<TRes> {
  _CopyWithImpl$Query$AllCategories(
    this._instance,
    this._then,
  );

  final Query$AllCategories _instance;

  final TRes Function(Query$AllCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllCategories(
        categories: categories == _undefined || categories == null
            ? _instance.categories
            : (categories as Query$AllCategories$categories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllCategories$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return CopyWith$Query$AllCategories$categories(
        local$categories, (e) => call(categories: e));
  }
}

class _CopyWithStubImpl$Query$AllCategories<TRes>
    implements CopyWith$Query$AllCategories<TRes> {
  _CopyWithStubImpl$Query$AllCategories(this._res);

  TRes _res;

  call({
    Query$AllCategories$categories? categories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllCategories$categories<TRes> get categories =>
      CopyWith$Query$AllCategories$categories.stub(_res);
}

const documentNodeQueryAllCategories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllCategories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'categories'),
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
              FieldNode(
                name: NameNode(value: 'mangas'),
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
                        name: NameNode(value: 'Manga'),
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
  fragmentDefinitionManga,
]);
Query$AllCategories _parserFn$Query$AllCategories(Map<String, dynamic> data) =>
    Query$AllCategories.fromJson(data);
typedef OnQueryComplete$Query$AllCategories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AllCategories?,
);

class Options$Query$AllCategories
    extends graphql.QueryOptions<Query$AllCategories> {
  Options$Query$AllCategories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllCategories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AllCategories? onComplete,
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
                    data == null ? null : _parserFn$Query$AllCategories(data),
                  ),
          onError: onError,
          document: documentNodeQueryAllCategories,
          parserFn: _parserFn$Query$AllCategories,
        );

  final OnQueryComplete$Query$AllCategories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AllCategories
    extends graphql.WatchQueryOptions<Query$AllCategories> {
  WatchOptions$Query$AllCategories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllCategories? typedOptimisticResult,
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
          document: documentNodeQueryAllCategories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllCategories,
        );
}

class FetchMoreOptions$Query$AllCategories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllCategories(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAllCategories,
        );
}

extension ClientExtension$Query$AllCategories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllCategories>> query$AllCategories(
          [Options$Query$AllCategories? options]) async =>
      await this.query(options ?? Options$Query$AllCategories());
  graphql.ObservableQuery<Query$AllCategories> watchQuery$AllCategories(
          [WatchOptions$Query$AllCategories? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AllCategories());
  void writeQuery$AllCategories({
    required Query$AllCategories data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAllCategories)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllCategories? readQuery$AllCategories({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAllCategories)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllCategories.fromJson(result);
  }
}

class Query$AllCategories$categories {
  Query$AllCategories$categories({
    required this.nodes,
    this.$__typename = 'CategoryNodeList',
  });

  factory Query$AllCategories$categories.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AllCategories$categories(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$AllCategories$categories$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AllCategories$categories$nodes> nodes;

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
    if (other is! Query$AllCategories$categories ||
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

extension UtilityExtension$Query$AllCategories$categories
    on Query$AllCategories$categories {
  CopyWith$Query$AllCategories$categories<Query$AllCategories$categories>
      get copyWith => CopyWith$Query$AllCategories$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllCategories$categories<TRes> {
  factory CopyWith$Query$AllCategories$categories(
    Query$AllCategories$categories instance,
    TRes Function(Query$AllCategories$categories) then,
  ) = _CopyWithImpl$Query$AllCategories$categories;

  factory CopyWith$Query$AllCategories$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$AllCategories$categories;

  TRes call({
    List<Query$AllCategories$categories$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$AllCategories$categories$nodes> Function(
              Iterable<
                  CopyWith$Query$AllCategories$categories$nodes<
                      Query$AllCategories$categories$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$AllCategories$categories<TRes>
    implements CopyWith$Query$AllCategories$categories<TRes> {
  _CopyWithImpl$Query$AllCategories$categories(
    this._instance,
    this._then,
  );

  final Query$AllCategories$categories _instance;

  final TRes Function(Query$AllCategories$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllCategories$categories(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Query$AllCategories$categories$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$AllCategories$categories$nodes> Function(
                  Iterable<
                      CopyWith$Query$AllCategories$categories$nodes<
                          Query$AllCategories$categories$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              .map((e) => CopyWith$Query$AllCategories$categories$nodes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AllCategories$categories<TRes>
    implements CopyWith$Query$AllCategories$categories<TRes> {
  _CopyWithStubImpl$Query$AllCategories$categories(this._res);

  TRes _res;

  call({
    List<Query$AllCategories$categories$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$AllCategories$categories$nodes {
  Query$AllCategories$categories$nodes({
    required this.mangas,
    this.$__typename = 'CategoryType',
  });

  factory Query$AllCategories$categories$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$mangas = json['mangas'];
    final l$$__typename = json['__typename'];
    return Query$AllCategories$categories$nodes(
      mangas: Query$AllCategories$categories$nodes$mangas.fromJson(
          (l$mangas as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllCategories$categories$nodes$mangas mangas;

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
    if (other is! Query$AllCategories$categories$nodes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AllCategories$categories$nodes
    on Query$AllCategories$categories$nodes {
  CopyWith$Query$AllCategories$categories$nodes<
          Query$AllCategories$categories$nodes>
      get copyWith => CopyWith$Query$AllCategories$categories$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllCategories$categories$nodes<TRes> {
  factory CopyWith$Query$AllCategories$categories$nodes(
    Query$AllCategories$categories$nodes instance,
    TRes Function(Query$AllCategories$categories$nodes) then,
  ) = _CopyWithImpl$Query$AllCategories$categories$nodes;

  factory CopyWith$Query$AllCategories$categories$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$AllCategories$categories$nodes;

  TRes call({
    Query$AllCategories$categories$nodes$mangas? mangas,
    String? $__typename,
  });
  CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> get mangas;
}

class _CopyWithImpl$Query$AllCategories$categories$nodes<TRes>
    implements CopyWith$Query$AllCategories$categories$nodes<TRes> {
  _CopyWithImpl$Query$AllCategories$categories$nodes(
    this._instance,
    this._then,
  );

  final Query$AllCategories$categories$nodes _instance;

  final TRes Function(Query$AllCategories$categories$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mangas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllCategories$categories$nodes(
        mangas: mangas == _undefined || mangas == null
            ? _instance.mangas
            : (mangas as Query$AllCategories$categories$nodes$mangas),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> get mangas {
    final local$mangas = _instance.mangas;
    return CopyWith$Query$AllCategories$categories$nodes$mangas(
        local$mangas, (e) => call(mangas: e));
  }
}

class _CopyWithStubImpl$Query$AllCategories$categories$nodes<TRes>
    implements CopyWith$Query$AllCategories$categories$nodes<TRes> {
  _CopyWithStubImpl$Query$AllCategories$categories$nodes(this._res);

  TRes _res;

  call({
    Query$AllCategories$categories$nodes$mangas? mangas,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> get mangas =>
      CopyWith$Query$AllCategories$categories$nodes$mangas.stub(_res);
}

class Query$AllCategories$categories$nodes$mangas {
  Query$AllCategories$categories$nodes$mangas({
    required this.nodes,
    this.$__typename = 'MangaNodeList',
  });

  factory Query$AllCategories$categories$nodes$mangas.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AllCategories$categories$nodes$mangas(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Fragment$Manga.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Manga> nodes;

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
    if (other is! Query$AllCategories$categories$nodes$mangas ||
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

extension UtilityExtension$Query$AllCategories$categories$nodes$mangas
    on Query$AllCategories$categories$nodes$mangas {
  CopyWith$Query$AllCategories$categories$nodes$mangas<
          Query$AllCategories$categories$nodes$mangas>
      get copyWith => CopyWith$Query$AllCategories$categories$nodes$mangas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> {
  factory CopyWith$Query$AllCategories$categories$nodes$mangas(
    Query$AllCategories$categories$nodes$mangas instance,
    TRes Function(Query$AllCategories$categories$nodes$mangas) then,
  ) = _CopyWithImpl$Query$AllCategories$categories$nodes$mangas;

  factory CopyWith$Query$AllCategories$categories$nodes$mangas.stub(TRes res) =
      _CopyWithStubImpl$Query$AllCategories$categories$nodes$mangas;

  TRes call({
    List<Fragment$Manga>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$Manga> Function(
              Iterable<CopyWith$Fragment$Manga<Fragment$Manga>>)
          _fn);
}

class _CopyWithImpl$Query$AllCategories$categories$nodes$mangas<TRes>
    implements CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> {
  _CopyWithImpl$Query$AllCategories$categories$nodes$mangas(
    this._instance,
    this._then,
  );

  final Query$AllCategories$categories$nodes$mangas _instance;

  final TRes Function(Query$AllCategories$categories$nodes$mangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllCategories$categories$nodes$mangas(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Fragment$Manga>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$Manga> Function(
                  Iterable<CopyWith$Fragment$Manga<Fragment$Manga>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) => CopyWith$Fragment$Manga(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$AllCategories$categories$nodes$mangas<TRes>
    implements CopyWith$Query$AllCategories$categories$nodes$mangas<TRes> {
  _CopyWithStubImpl$Query$AllCategories$categories$nodes$mangas(this._res);

  TRes _res;

  call({
    List<Fragment$Manga>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Variables$Query$MangaInfo {
  factory Variables$Query$MangaInfo({required int id}) =>
      Variables$Query$MangaInfo._({
        r'id': id,
      });

  Variables$Query$MangaInfo._(this._$data);

  factory Variables$Query$MangaInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$MangaInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$MangaInfo<Variables$Query$MangaInfo> get copyWith =>
      CopyWith$Variables$Query$MangaInfo(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MangaInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$MangaInfo<TRes> {
  factory CopyWith$Variables$Query$MangaInfo(
    Variables$Query$MangaInfo instance,
    TRes Function(Variables$Query$MangaInfo) then,
  ) = _CopyWithImpl$Variables$Query$MangaInfo;

  factory CopyWith$Variables$Query$MangaInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MangaInfo;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$MangaInfo<TRes>
    implements CopyWith$Variables$Query$MangaInfo<TRes> {
  _CopyWithImpl$Variables$Query$MangaInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$MangaInfo _instance;

  final TRes Function(Variables$Query$MangaInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$MangaInfo._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$MangaInfo<TRes>
    implements CopyWith$Variables$Query$MangaInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$MangaInfo(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$MangaInfo {
  Query$MangaInfo({
    required this.manga,
    this.$__typename = 'Query',
  });

  factory Query$MangaInfo.fromJson(Map<String, dynamic> json) {
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$MangaInfo(
      manga: Fragment$MangaDetails.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MangaDetails manga;

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
    if (other is! Query$MangaInfo || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MangaInfo on Query$MangaInfo {
  CopyWith$Query$MangaInfo<Query$MangaInfo> get copyWith =>
      CopyWith$Query$MangaInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MangaInfo<TRes> {
  factory CopyWith$Query$MangaInfo(
    Query$MangaInfo instance,
    TRes Function(Query$MangaInfo) then,
  ) = _CopyWithImpl$Query$MangaInfo;

  factory CopyWith$Query$MangaInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$MangaInfo;

  TRes call({
    Fragment$MangaDetails? manga,
    String? $__typename,
  });
  CopyWith$Fragment$MangaDetails<TRes> get manga;
}

class _CopyWithImpl$Query$MangaInfo<TRes>
    implements CopyWith$Query$MangaInfo<TRes> {
  _CopyWithImpl$Query$MangaInfo(
    this._instance,
    this._then,
  );

  final Query$MangaInfo _instance;

  final TRes Function(Query$MangaInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MangaInfo(
        manga: manga == _undefined || manga == null
            ? _instance.manga
            : (manga as Fragment$MangaDetails),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MangaDetails<TRes> get manga {
    final local$manga = _instance.manga;
    return CopyWith$Fragment$MangaDetails(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$MangaInfo<TRes>
    implements CopyWith$Query$MangaInfo<TRes> {
  _CopyWithStubImpl$Query$MangaInfo(this._res);

  TRes _res;

  call({
    Fragment$MangaDetails? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MangaDetails<TRes> get manga =>
      CopyWith$Fragment$MangaDetails.stub(_res);
}

const documentNodeQueryMangaInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MangaInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'manga'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MangaDetails'),
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
  fragmentDefinitionMangaDetails,
  fragmentDefinitionManga,
]);
Query$MangaInfo _parserFn$Query$MangaInfo(Map<String, dynamic> data) =>
    Query$MangaInfo.fromJson(data);
typedef OnQueryComplete$Query$MangaInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MangaInfo?,
);

class Options$Query$MangaInfo extends graphql.QueryOptions<Query$MangaInfo> {
  Options$Query$MangaInfo({
    String? operationName,
    required Variables$Query$MangaInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MangaInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MangaInfo? onComplete,
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
                    data == null ? null : _parserFn$Query$MangaInfo(data),
                  ),
          onError: onError,
          document: documentNodeQueryMangaInfo,
          parserFn: _parserFn$Query$MangaInfo,
        );

  final OnQueryComplete$Query$MangaInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MangaInfo
    extends graphql.WatchQueryOptions<Query$MangaInfo> {
  WatchOptions$Query$MangaInfo({
    String? operationName,
    required Variables$Query$MangaInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MangaInfo? typedOptimisticResult,
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
          document: documentNodeQueryMangaInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MangaInfo,
        );
}

class FetchMoreOptions$Query$MangaInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MangaInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$MangaInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryMangaInfo,
        );
}

extension ClientExtension$Query$MangaInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MangaInfo>> query$MangaInfo(
          Options$Query$MangaInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$MangaInfo> watchQuery$MangaInfo(
          WatchOptions$Query$MangaInfo options) =>
      this.watchQuery(options);
  void writeQuery$MangaInfo({
    required Query$MangaInfo data,
    required Variables$Query$MangaInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMangaInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MangaInfo? readQuery$MangaInfo({
    required Variables$Query$MangaInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMangaInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MangaInfo.fromJson(result);
  }
}

class Variables$Mutation$FetchMangaInfo {
  factory Variables$Mutation$FetchMangaInfo({required int id}) =>
      Variables$Mutation$FetchMangaInfo._({
        r'id': id,
      });

  Variables$Mutation$FetchMangaInfo._(this._$data);

  factory Variables$Mutation$FetchMangaInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Mutation$FetchMangaInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$FetchMangaInfo<Variables$Mutation$FetchMangaInfo>
      get copyWith => CopyWith$Variables$Mutation$FetchMangaInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FetchMangaInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$FetchMangaInfo<TRes> {
  factory CopyWith$Variables$Mutation$FetchMangaInfo(
    Variables$Mutation$FetchMangaInfo instance,
    TRes Function(Variables$Mutation$FetchMangaInfo) then,
  ) = _CopyWithImpl$Variables$Mutation$FetchMangaInfo;

  factory CopyWith$Variables$Mutation$FetchMangaInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FetchMangaInfo;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$FetchMangaInfo<TRes>
    implements CopyWith$Variables$Mutation$FetchMangaInfo<TRes> {
  _CopyWithImpl$Variables$Mutation$FetchMangaInfo(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FetchMangaInfo _instance;

  final TRes Function(Variables$Mutation$FetchMangaInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$FetchMangaInfo._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FetchMangaInfo<TRes>
    implements CopyWith$Variables$Mutation$FetchMangaInfo<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FetchMangaInfo(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$FetchMangaInfo {
  Mutation$FetchMangaInfo({
    this.fetchManga,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FetchMangaInfo.fromJson(Map<String, dynamic> json) {
    final l$fetchManga = json['fetchManga'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchMangaInfo(
      fetchManga: l$fetchManga == null
          ? null
          : Mutation$FetchMangaInfo$fetchManga.fromJson(
              (l$fetchManga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FetchMangaInfo$fetchManga? fetchManga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchManga = fetchManga;
    _resultData['fetchManga'] = l$fetchManga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchManga = fetchManga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchManga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchMangaInfo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchManga = fetchManga;
    final lOther$fetchManga = other.fetchManga;
    if (l$fetchManga != lOther$fetchManga) {
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

extension UtilityExtension$Mutation$FetchMangaInfo on Mutation$FetchMangaInfo {
  CopyWith$Mutation$FetchMangaInfo<Mutation$FetchMangaInfo> get copyWith =>
      CopyWith$Mutation$FetchMangaInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FetchMangaInfo<TRes> {
  factory CopyWith$Mutation$FetchMangaInfo(
    Mutation$FetchMangaInfo instance,
    TRes Function(Mutation$FetchMangaInfo) then,
  ) = _CopyWithImpl$Mutation$FetchMangaInfo;

  factory CopyWith$Mutation$FetchMangaInfo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchMangaInfo;

  TRes call({
    Mutation$FetchMangaInfo$fetchManga? fetchManga,
    String? $__typename,
  });
  CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> get fetchManga;
}

class _CopyWithImpl$Mutation$FetchMangaInfo<TRes>
    implements CopyWith$Mutation$FetchMangaInfo<TRes> {
  _CopyWithImpl$Mutation$FetchMangaInfo(
    this._instance,
    this._then,
  );

  final Mutation$FetchMangaInfo _instance;

  final TRes Function(Mutation$FetchMangaInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchManga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchMangaInfo(
        fetchManga: fetchManga == _undefined
            ? _instance.fetchManga
            : (fetchManga as Mutation$FetchMangaInfo$fetchManga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> get fetchManga {
    final local$fetchManga = _instance.fetchManga;
    return local$fetchManga == null
        ? CopyWith$Mutation$FetchMangaInfo$fetchManga.stub(_then(_instance))
        : CopyWith$Mutation$FetchMangaInfo$fetchManga(
            local$fetchManga, (e) => call(fetchManga: e));
  }
}

class _CopyWithStubImpl$Mutation$FetchMangaInfo<TRes>
    implements CopyWith$Mutation$FetchMangaInfo<TRes> {
  _CopyWithStubImpl$Mutation$FetchMangaInfo(this._res);

  TRes _res;

  call({
    Mutation$FetchMangaInfo$fetchManga? fetchManga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> get fetchManga =>
      CopyWith$Mutation$FetchMangaInfo$fetchManga.stub(_res);
}

const documentNodeMutationFetchMangaInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FetchMangaInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'fetchManga'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
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
              FragmentSpreadNode(
                name: NameNode(value: 'MangaDetails'),
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
  fragmentDefinitionMangaDetails,
  fragmentDefinitionManga,
]);
Mutation$FetchMangaInfo _parserFn$Mutation$FetchMangaInfo(
        Map<String, dynamic> data) =>
    Mutation$FetchMangaInfo.fromJson(data);
typedef OnMutationCompleted$Mutation$FetchMangaInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$FetchMangaInfo?,
);

class Options$Mutation$FetchMangaInfo
    extends graphql.MutationOptions<Mutation$FetchMangaInfo> {
  Options$Mutation$FetchMangaInfo({
    String? operationName,
    required Variables$Mutation$FetchMangaInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchMangaInfo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FetchMangaInfo? onCompleted,
    graphql.OnMutationUpdate<Mutation$FetchMangaInfo>? update,
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
                        : _parserFn$Mutation$FetchMangaInfo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFetchMangaInfo,
          parserFn: _parserFn$Mutation$FetchMangaInfo,
        );

  final OnMutationCompleted$Mutation$FetchMangaInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FetchMangaInfo
    extends graphql.WatchQueryOptions<Mutation$FetchMangaInfo> {
  WatchOptions$Mutation$FetchMangaInfo({
    String? operationName,
    required Variables$Mutation$FetchMangaInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchMangaInfo? typedOptimisticResult,
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
          document: documentNodeMutationFetchMangaInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FetchMangaInfo,
        );
}

extension ClientExtension$Mutation$FetchMangaInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FetchMangaInfo>> mutate$FetchMangaInfo(
          Options$Mutation$FetchMangaInfo options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$FetchMangaInfo> watchMutation$FetchMangaInfo(
          WatchOptions$Mutation$FetchMangaInfo options) =>
      this.watchMutation(options);
}

class Mutation$FetchMangaInfo$fetchManga {
  Mutation$FetchMangaInfo$fetchManga({
    required this.manga,
    this.$__typename = 'FetchMangaPayload',
  });

  factory Mutation$FetchMangaInfo$fetchManga.fromJson(
      Map<String, dynamic> json) {
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchMangaInfo$fetchManga(
      manga: Fragment$MangaDetails.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MangaDetails manga;

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
    if (other is! Mutation$FetchMangaInfo$fetchManga ||
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

extension UtilityExtension$Mutation$FetchMangaInfo$fetchManga
    on Mutation$FetchMangaInfo$fetchManga {
  CopyWith$Mutation$FetchMangaInfo$fetchManga<
          Mutation$FetchMangaInfo$fetchManga>
      get copyWith => CopyWith$Mutation$FetchMangaInfo$fetchManga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> {
  factory CopyWith$Mutation$FetchMangaInfo$fetchManga(
    Mutation$FetchMangaInfo$fetchManga instance,
    TRes Function(Mutation$FetchMangaInfo$fetchManga) then,
  ) = _CopyWithImpl$Mutation$FetchMangaInfo$fetchManga;

  factory CopyWith$Mutation$FetchMangaInfo$fetchManga.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchMangaInfo$fetchManga;

  TRes call({
    Fragment$MangaDetails? manga,
    String? $__typename,
  });
  CopyWith$Fragment$MangaDetails<TRes> get manga;
}

class _CopyWithImpl$Mutation$FetchMangaInfo$fetchManga<TRes>
    implements CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> {
  _CopyWithImpl$Mutation$FetchMangaInfo$fetchManga(
    this._instance,
    this._then,
  );

  final Mutation$FetchMangaInfo$fetchManga _instance;

  final TRes Function(Mutation$FetchMangaInfo$fetchManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchMangaInfo$fetchManga(
        manga: manga == _undefined || manga == null
            ? _instance.manga
            : (manga as Fragment$MangaDetails),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MangaDetails<TRes> get manga {
    final local$manga = _instance.manga;
    return CopyWith$Fragment$MangaDetails(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Mutation$FetchMangaInfo$fetchManga<TRes>
    implements CopyWith$Mutation$FetchMangaInfo$fetchManga<TRes> {
  _CopyWithStubImpl$Mutation$FetchMangaInfo$fetchManga(this._res);

  TRes _res;

  call({
    Fragment$MangaDetails? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MangaDetails<TRes> get manga =>
      CopyWith$Fragment$MangaDetails.stub(_res);
}

class Variables$Mutation$FetchSourceMangas {
  factory Variables$Mutation$FetchSourceMangas(
          {required Input$FetchSourceMangaInput input}) =>
      Variables$Mutation$FetchSourceMangas._({
        r'input': input,
      });

  Variables$Mutation$FetchSourceMangas._(this._$data);

  factory Variables$Mutation$FetchSourceMangas.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$FetchSourceMangaInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$FetchSourceMangas._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FetchSourceMangaInput get input =>
      (_$data['input'] as Input$FetchSourceMangaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$FetchSourceMangas<
          Variables$Mutation$FetchSourceMangas>
      get copyWith => CopyWith$Variables$Mutation$FetchSourceMangas(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FetchSourceMangas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$FetchSourceMangas<TRes> {
  factory CopyWith$Variables$Mutation$FetchSourceMangas(
    Variables$Mutation$FetchSourceMangas instance,
    TRes Function(Variables$Mutation$FetchSourceMangas) then,
  ) = _CopyWithImpl$Variables$Mutation$FetchSourceMangas;

  factory CopyWith$Variables$Mutation$FetchSourceMangas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FetchSourceMangas;

  TRes call({Input$FetchSourceMangaInput? input});
}

class _CopyWithImpl$Variables$Mutation$FetchSourceMangas<TRes>
    implements CopyWith$Variables$Mutation$FetchSourceMangas<TRes> {
  _CopyWithImpl$Variables$Mutation$FetchSourceMangas(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FetchSourceMangas _instance;

  final TRes Function(Variables$Mutation$FetchSourceMangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$FetchSourceMangas._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$FetchSourceMangaInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FetchSourceMangas<TRes>
    implements CopyWith$Variables$Mutation$FetchSourceMangas<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FetchSourceMangas(this._res);

  TRes _res;

  call({Input$FetchSourceMangaInput? input}) => _res;
}

class Mutation$FetchSourceMangas {
  Mutation$FetchSourceMangas({
    this.fetchSourceManga,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FetchSourceMangas.fromJson(Map<String, dynamic> json) {
    final l$fetchSourceManga = json['fetchSourceManga'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchSourceMangas(
      fetchSourceManga: l$fetchSourceManga == null
          ? null
          : Mutation$FetchSourceMangas$fetchSourceManga.fromJson(
              (l$fetchSourceManga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FetchSourceMangas$fetchSourceManga? fetchSourceManga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchSourceManga = fetchSourceManga;
    _resultData['fetchSourceManga'] = l$fetchSourceManga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchSourceManga = fetchSourceManga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchSourceManga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchSourceMangas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchSourceManga = fetchSourceManga;
    final lOther$fetchSourceManga = other.fetchSourceManga;
    if (l$fetchSourceManga != lOther$fetchSourceManga) {
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

extension UtilityExtension$Mutation$FetchSourceMangas
    on Mutation$FetchSourceMangas {
  CopyWith$Mutation$FetchSourceMangas<Mutation$FetchSourceMangas>
      get copyWith => CopyWith$Mutation$FetchSourceMangas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchSourceMangas<TRes> {
  factory CopyWith$Mutation$FetchSourceMangas(
    Mutation$FetchSourceMangas instance,
    TRes Function(Mutation$FetchSourceMangas) then,
  ) = _CopyWithImpl$Mutation$FetchSourceMangas;

  factory CopyWith$Mutation$FetchSourceMangas.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchSourceMangas;

  TRes call({
    Mutation$FetchSourceMangas$fetchSourceManga? fetchSourceManga,
    String? $__typename,
  });
  CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes>
      get fetchSourceManga;
}

class _CopyWithImpl$Mutation$FetchSourceMangas<TRes>
    implements CopyWith$Mutation$FetchSourceMangas<TRes> {
  _CopyWithImpl$Mutation$FetchSourceMangas(
    this._instance,
    this._then,
  );

  final Mutation$FetchSourceMangas _instance;

  final TRes Function(Mutation$FetchSourceMangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchSourceManga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchSourceMangas(
        fetchSourceManga: fetchSourceManga == _undefined
            ? _instance.fetchSourceManga
            : (fetchSourceManga
                as Mutation$FetchSourceMangas$fetchSourceManga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes>
      get fetchSourceManga {
    final local$fetchSourceManga = _instance.fetchSourceManga;
    return local$fetchSourceManga == null
        ? CopyWith$Mutation$FetchSourceMangas$fetchSourceManga.stub(
            _then(_instance))
        : CopyWith$Mutation$FetchSourceMangas$fetchSourceManga(
            local$fetchSourceManga, (e) => call(fetchSourceManga: e));
  }
}

class _CopyWithStubImpl$Mutation$FetchSourceMangas<TRes>
    implements CopyWith$Mutation$FetchSourceMangas<TRes> {
  _CopyWithStubImpl$Mutation$FetchSourceMangas(this._res);

  TRes _res;

  call({
    Mutation$FetchSourceMangas$fetchSourceManga? fetchSourceManga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes>
      get fetchSourceManga =>
          CopyWith$Mutation$FetchSourceMangas$fetchSourceManga.stub(_res);
}

const documentNodeMutationFetchSourceMangas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FetchSourceMangas'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'FetchSourceMangaInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchSourceManga'),
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
            name: NameNode(value: 'hasNextPage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mangas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Manga'),
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
  fragmentDefinitionManga,
]);
Mutation$FetchSourceMangas _parserFn$Mutation$FetchSourceMangas(
        Map<String, dynamic> data) =>
    Mutation$FetchSourceMangas.fromJson(data);
typedef OnMutationCompleted$Mutation$FetchSourceMangas = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$FetchSourceMangas?,
);

class Options$Mutation$FetchSourceMangas
    extends graphql.MutationOptions<Mutation$FetchSourceMangas> {
  Options$Mutation$FetchSourceMangas({
    String? operationName,
    required Variables$Mutation$FetchSourceMangas variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchSourceMangas? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FetchSourceMangas? onCompleted,
    graphql.OnMutationUpdate<Mutation$FetchSourceMangas>? update,
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
                        : _parserFn$Mutation$FetchSourceMangas(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFetchSourceMangas,
          parserFn: _parserFn$Mutation$FetchSourceMangas,
        );

  final OnMutationCompleted$Mutation$FetchSourceMangas? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FetchSourceMangas
    extends graphql.WatchQueryOptions<Mutation$FetchSourceMangas> {
  WatchOptions$Mutation$FetchSourceMangas({
    String? operationName,
    required Variables$Mutation$FetchSourceMangas variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FetchSourceMangas? typedOptimisticResult,
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
          document: documentNodeMutationFetchSourceMangas,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FetchSourceMangas,
        );
}

extension ClientExtension$Mutation$FetchSourceMangas on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FetchSourceMangas>>
      mutate$FetchSourceMangas(
              Options$Mutation$FetchSourceMangas options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$FetchSourceMangas>
      watchMutation$FetchSourceMangas(
              WatchOptions$Mutation$FetchSourceMangas options) =>
          this.watchMutation(options);
}

class Mutation$FetchSourceMangas$fetchSourceManga {
  Mutation$FetchSourceMangas$fetchSourceManga({
    required this.hasNextPage,
    required this.mangas,
    this.$__typename = 'FetchSourceMangaPayload',
  });

  factory Mutation$FetchSourceMangas$fetchSourceManga.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$mangas = json['mangas'];
    final l$$__typename = json['__typename'];
    return Mutation$FetchSourceMangas$fetchSourceManga(
      hasNextPage: (l$hasNextPage as bool),
      mangas: (l$mangas as List<dynamic>)
          .map((e) => Fragment$Manga.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final List<Fragment$Manga> mangas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$mangas = mangas;
    _resultData['mangas'] = l$mangas.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$mangas = mangas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      Object.hashAll(l$mangas.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FetchSourceMangas$fetchSourceManga ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$mangas = mangas;
    final lOther$mangas = other.mangas;
    if (l$mangas.length != lOther$mangas.length) {
      return false;
    }
    for (int i = 0; i < l$mangas.length; i++) {
      final l$mangas$entry = l$mangas[i];
      final lOther$mangas$entry = lOther$mangas[i];
      if (l$mangas$entry != lOther$mangas$entry) {
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

extension UtilityExtension$Mutation$FetchSourceMangas$fetchSourceManga
    on Mutation$FetchSourceMangas$fetchSourceManga {
  CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<
          Mutation$FetchSourceMangas$fetchSourceManga>
      get copyWith => CopyWith$Mutation$FetchSourceMangas$fetchSourceManga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes> {
  factory CopyWith$Mutation$FetchSourceMangas$fetchSourceManga(
    Mutation$FetchSourceMangas$fetchSourceManga instance,
    TRes Function(Mutation$FetchSourceMangas$fetchSourceManga) then,
  ) = _CopyWithImpl$Mutation$FetchSourceMangas$fetchSourceManga;

  factory CopyWith$Mutation$FetchSourceMangas$fetchSourceManga.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FetchSourceMangas$fetchSourceManga;

  TRes call({
    bool? hasNextPage,
    List<Fragment$Manga>? mangas,
    String? $__typename,
  });
  TRes mangas(
      Iterable<Fragment$Manga> Function(
              Iterable<CopyWith$Fragment$Manga<Fragment$Manga>>)
          _fn);
}

class _CopyWithImpl$Mutation$FetchSourceMangas$fetchSourceManga<TRes>
    implements CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes> {
  _CopyWithImpl$Mutation$FetchSourceMangas$fetchSourceManga(
    this._instance,
    this._then,
  );

  final Mutation$FetchSourceMangas$fetchSourceManga _instance;

  final TRes Function(Mutation$FetchSourceMangas$fetchSourceManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? mangas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FetchSourceMangas$fetchSourceManga(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        mangas: mangas == _undefined || mangas == null
            ? _instance.mangas
            : (mangas as List<Fragment$Manga>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mangas(
          Iterable<Fragment$Manga> Function(
                  Iterable<CopyWith$Fragment$Manga<Fragment$Manga>>)
              _fn) =>
      call(
          mangas: _fn(_instance.mangas.map((e) => CopyWith$Fragment$Manga(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$FetchSourceMangas$fetchSourceManga<TRes>
    implements CopyWith$Mutation$FetchSourceMangas$fetchSourceManga<TRes> {
  _CopyWithStubImpl$Mutation$FetchSourceMangas$fetchSourceManga(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    List<Fragment$Manga>? mangas,
    String? $__typename,
  }) =>
      _res;

  mangas(_fn) => _res;
}
