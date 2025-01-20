import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$SourceBrowse {
  factory Variables$Query$SourceBrowse({required String id}) =>
      Variables$Query$SourceBrowse._({
        r'id': id,
      });

  Variables$Query$SourceBrowse._(this._$data);

  factory Variables$Query$SourceBrowse.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$SourceBrowse._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$SourceBrowse<Variables$Query$SourceBrowse>
      get copyWith => CopyWith$Variables$Query$SourceBrowse(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SourceBrowse ||
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

abstract class CopyWith$Variables$Query$SourceBrowse<TRes> {
  factory CopyWith$Variables$Query$SourceBrowse(
    Variables$Query$SourceBrowse instance,
    TRes Function(Variables$Query$SourceBrowse) then,
  ) = _CopyWithImpl$Variables$Query$SourceBrowse;

  factory CopyWith$Variables$Query$SourceBrowse.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SourceBrowse;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$SourceBrowse<TRes>
    implements CopyWith$Variables$Query$SourceBrowse<TRes> {
  _CopyWithImpl$Variables$Query$SourceBrowse(
    this._instance,
    this._then,
  );

  final Variables$Query$SourceBrowse _instance;

  final TRes Function(Variables$Query$SourceBrowse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$SourceBrowse._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SourceBrowse<TRes>
    implements CopyWith$Variables$Query$SourceBrowse<TRes> {
  _CopyWithStubImpl$Variables$Query$SourceBrowse(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$SourceBrowse {
  Query$SourceBrowse({
    required this.source,
    this.$__typename = 'Query',
  });

  factory Query$SourceBrowse.fromJson(Map<String, dynamic> json) {
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse(
      source: Query$SourceBrowse$source.fromJson(
          (l$source as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SourceBrowse$source source;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$source = source;
    _resultData['source'] = l$source.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$source = source;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$source,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SourceBrowse on Query$SourceBrowse {
  CopyWith$Query$SourceBrowse<Query$SourceBrowse> get copyWith =>
      CopyWith$Query$SourceBrowse(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SourceBrowse<TRes> {
  factory CopyWith$Query$SourceBrowse(
    Query$SourceBrowse instance,
    TRes Function(Query$SourceBrowse) then,
  ) = _CopyWithImpl$Query$SourceBrowse;

  factory CopyWith$Query$SourceBrowse.stub(TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse;

  TRes call({
    Query$SourceBrowse$source? source,
    String? $__typename,
  });
  CopyWith$Query$SourceBrowse$source<TRes> get source;
}

class _CopyWithImpl$Query$SourceBrowse<TRes>
    implements CopyWith$Query$SourceBrowse<TRes> {
  _CopyWithImpl$Query$SourceBrowse(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse _instance;

  final TRes Function(Query$SourceBrowse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? source = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse(
        source: source == _undefined || source == null
            ? _instance.source
            : (source as Query$SourceBrowse$source),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SourceBrowse$source<TRes> get source {
    final local$source = _instance.source;
    return CopyWith$Query$SourceBrowse$source(
        local$source, (e) => call(source: e));
  }
}

class _CopyWithStubImpl$Query$SourceBrowse<TRes>
    implements CopyWith$Query$SourceBrowse<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse(this._res);

  TRes _res;

  call({
    Query$SourceBrowse$source? source,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SourceBrowse$source<TRes> get source =>
      CopyWith$Query$SourceBrowse$source.stub(_res);
}

const documentNodeQuerySourceBrowse = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SourceBrowse'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'LongString'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'source'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
            name: NameNode(value: 'isConfigurable'),
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
            name: NameNode(value: 'meta'),
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
                name: NameNode(value: 'key'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'value'),
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
            name: NameNode(value: 'filters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'CheckBoxFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'default'),
                    alias: NameNode(value: 'CheckBoxFilterDefault'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'HeaderFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'SelectFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'default'),
                    alias: NameNode(value: 'SelectFilterDefault'),
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
                    name: NameNode(value: 'values'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TriStateFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'default'),
                    alias: NameNode(value: 'TriStateFilterDefault'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TextFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'default'),
                    alias: NameNode(value: 'TextFilterDefault'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'SortFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'default'),
                    alias: NameNode(value: 'SortFilterDefault'),
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'ascending'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'index'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'values'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'SeparatorFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'GroupFilter'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: NameNode(value: 'type'),
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
                    name: NameNode(value: 'filters'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'CheckBoxFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'default'),
                            alias: NameNode(value: 'CheckBoxFilterDefault'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'HeaderFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'SelectFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'default'),
                            alias: NameNode(value: 'SelectFilterDefault'),
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
                            name: NameNode(value: 'values'),
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
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'TriStateFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'default'),
                            alias: NameNode(value: 'TriStateFilterDefault'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'TextFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'default'),
                            alias: NameNode(value: 'TextFilterDefault'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'SortFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'default'),
                            alias: NameNode(value: 'SortFilterDefault'),
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'ascending'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'index'),
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
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'values'),
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
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                          name: NameNode(value: 'SeparatorFilter'),
                          isNonNull: false,
                        )),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: NameNode(value: 'type'),
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
Query$SourceBrowse _parserFn$Query$SourceBrowse(Map<String, dynamic> data) =>
    Query$SourceBrowse.fromJson(data);
typedef OnQueryComplete$Query$SourceBrowse = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SourceBrowse?,
);

class Options$Query$SourceBrowse
    extends graphql.QueryOptions<Query$SourceBrowse> {
  Options$Query$SourceBrowse({
    String? operationName,
    required Variables$Query$SourceBrowse variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SourceBrowse? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SourceBrowse? onComplete,
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
                    data == null ? null : _parserFn$Query$SourceBrowse(data),
                  ),
          onError: onError,
          document: documentNodeQuerySourceBrowse,
          parserFn: _parserFn$Query$SourceBrowse,
        );

  final OnQueryComplete$Query$SourceBrowse? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SourceBrowse
    extends graphql.WatchQueryOptions<Query$SourceBrowse> {
  WatchOptions$Query$SourceBrowse({
    String? operationName,
    required Variables$Query$SourceBrowse variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SourceBrowse? typedOptimisticResult,
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
          document: documentNodeQuerySourceBrowse,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SourceBrowse,
        );
}

class FetchMoreOptions$Query$SourceBrowse extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SourceBrowse({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SourceBrowse variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySourceBrowse,
        );
}

extension ClientExtension$Query$SourceBrowse on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SourceBrowse>> query$SourceBrowse(
          Options$Query$SourceBrowse options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SourceBrowse> watchQuery$SourceBrowse(
          WatchOptions$Query$SourceBrowse options) =>
      this.watchQuery(options);
  void writeQuery$SourceBrowse({
    required Query$SourceBrowse data,
    required Variables$Query$SourceBrowse variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySourceBrowse),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SourceBrowse? readQuery$SourceBrowse({
    required Variables$Query$SourceBrowse variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySourceBrowse),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SourceBrowse.fromJson(result);
  }
}

class Query$SourceBrowse$source {
  Query$SourceBrowse$source({
    required this.id,
    required this.name,
    required this.displayName,
    required this.isConfigurable,
    required this.supportsLatest,
    required this.meta,
    required this.filters,
    this.$__typename = 'SourceType',
  });

  factory Query$SourceBrowse$source.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$displayName = json['displayName'];
    final l$isConfigurable = json['isConfigurable'];
    final l$supportsLatest = json['supportsLatest'];
    final l$meta = json['meta'];
    final l$filters = json['filters'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source(
      id: (l$id as String),
      name: (l$name as String),
      displayName: (l$displayName as String),
      isConfigurable: (l$isConfigurable as bool),
      supportsLatest: (l$supportsLatest as bool),
      meta: (l$meta as List<dynamic>)
          .map((e) => Query$SourceBrowse$source$meta.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      filters: (l$filters as List<dynamic>)
          .map((e) => Query$SourceBrowse$source$filters.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String displayName;

  final bool isConfigurable;

  final bool supportsLatest;

  final List<Query$SourceBrowse$source$meta> meta;

  final List<Query$SourceBrowse$source$filters> filters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$isConfigurable = isConfigurable;
    _resultData['isConfigurable'] = l$isConfigurable;
    final l$supportsLatest = supportsLatest;
    _resultData['supportsLatest'] = l$supportsLatest;
    final l$meta = meta;
    _resultData['meta'] = l$meta.map((e) => e.toJson()).toList();
    final l$filters = filters;
    _resultData['filters'] = l$filters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$displayName = displayName;
    final l$isConfigurable = isConfigurable;
    final l$supportsLatest = supportsLatest;
    final l$meta = meta;
    final l$filters = filters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$displayName,
      l$isConfigurable,
      l$supportsLatest,
      Object.hashAll(l$meta.map((v) => v)),
      Object.hashAll(l$filters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source ||
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
    final l$isConfigurable = isConfigurable;
    final lOther$isConfigurable = other.isConfigurable;
    if (l$isConfigurable != lOther$isConfigurable) {
      return false;
    }
    final l$supportsLatest = supportsLatest;
    final lOther$supportsLatest = other.supportsLatest;
    if (l$supportsLatest != lOther$supportsLatest) {
      return false;
    }
    final l$meta = meta;
    final lOther$meta = other.meta;
    if (l$meta.length != lOther$meta.length) {
      return false;
    }
    for (int i = 0; i < l$meta.length; i++) {
      final l$meta$entry = l$meta[i];
      final lOther$meta$entry = lOther$meta[i];
      if (l$meta$entry != lOther$meta$entry) {
        return false;
      }
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (l$filters.length != lOther$filters.length) {
      return false;
    }
    for (int i = 0; i < l$filters.length; i++) {
      final l$filters$entry = l$filters[i];
      final lOther$filters$entry = lOther$filters[i];
      if (l$filters$entry != lOther$filters$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source
    on Query$SourceBrowse$source {
  CopyWith$Query$SourceBrowse$source<Query$SourceBrowse$source> get copyWith =>
      CopyWith$Query$SourceBrowse$source(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SourceBrowse$source<TRes> {
  factory CopyWith$Query$SourceBrowse$source(
    Query$SourceBrowse$source instance,
    TRes Function(Query$SourceBrowse$source) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source;

  factory CopyWith$Query$SourceBrowse$source.stub(TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source;

  TRes call({
    String? id,
    String? name,
    String? displayName,
    bool? isConfigurable,
    bool? supportsLatest,
    List<Query$SourceBrowse$source$meta>? meta,
    List<Query$SourceBrowse$source$filters>? filters,
    String? $__typename,
  });
  TRes meta(
      Iterable<Query$SourceBrowse$source$meta> Function(
              Iterable<
                  CopyWith$Query$SourceBrowse$source$meta<
                      Query$SourceBrowse$source$meta>>)
          _fn);
  TRes filters(
      Iterable<Query$SourceBrowse$source$filters> Function(
              Iterable<
                  CopyWith$Query$SourceBrowse$source$filters<
                      Query$SourceBrowse$source$filters>>)
          _fn);
}

class _CopyWithImpl$Query$SourceBrowse$source<TRes>
    implements CopyWith$Query$SourceBrowse$source<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source _instance;

  final TRes Function(Query$SourceBrowse$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? displayName = _undefined,
    Object? isConfigurable = _undefined,
    Object? supportsLatest = _undefined,
    Object? meta = _undefined,
    Object? filters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        isConfigurable: isConfigurable == _undefined || isConfigurable == null
            ? _instance.isConfigurable
            : (isConfigurable as bool),
        supportsLatest: supportsLatest == _undefined || supportsLatest == null
            ? _instance.supportsLatest
            : (supportsLatest as bool),
        meta: meta == _undefined || meta == null
            ? _instance.meta
            : (meta as List<Query$SourceBrowse$source$meta>),
        filters: filters == _undefined || filters == null
            ? _instance.filters
            : (filters as List<Query$SourceBrowse$source$filters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes meta(
          Iterable<Query$SourceBrowse$source$meta> Function(
                  Iterable<
                      CopyWith$Query$SourceBrowse$source$meta<
                          Query$SourceBrowse$source$meta>>)
              _fn) =>
      call(
          meta: _fn(
              _instance.meta.map((e) => CopyWith$Query$SourceBrowse$source$meta(
                    e,
                    (i) => i,
                  ))).toList());

  TRes filters(
          Iterable<Query$SourceBrowse$source$filters> Function(
                  Iterable<
                      CopyWith$Query$SourceBrowse$source$filters<
                          Query$SourceBrowse$source$filters>>)
              _fn) =>
      call(
          filters: _fn(_instance.filters
              .map((e) => CopyWith$Query$SourceBrowse$source$filters(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SourceBrowse$source<TRes>
    implements CopyWith$Query$SourceBrowse$source<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? displayName,
    bool? isConfigurable,
    bool? supportsLatest,
    List<Query$SourceBrowse$source$meta>? meta,
    List<Query$SourceBrowse$source$filters>? filters,
    String? $__typename,
  }) =>
      _res;

  meta(_fn) => _res;

  filters(_fn) => _res;
}

class Query$SourceBrowse$source$meta {
  Query$SourceBrowse$source$meta({
    required this.sourceId,
    required this.key,
    required this.value,
    this.$__typename = 'SourceMetaType',
  });

  factory Query$SourceBrowse$source$meta.fromJson(Map<String, dynamic> json) {
    final l$sourceId = json['sourceId'];
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$meta(
      sourceId: (l$sourceId as String),
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String sourceId;

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sourceId = sourceId;
    _resultData['sourceId'] = l$sourceId;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sourceId = sourceId;
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sourceId,
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$meta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sourceId = sourceId;
    final lOther$sourceId = other.sourceId;
    if (l$sourceId != lOther$sourceId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$SourceBrowse$source$meta
    on Query$SourceBrowse$source$meta {
  CopyWith$Query$SourceBrowse$source$meta<Query$SourceBrowse$source$meta>
      get copyWith => CopyWith$Query$SourceBrowse$source$meta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$meta<TRes> {
  factory CopyWith$Query$SourceBrowse$source$meta(
    Query$SourceBrowse$source$meta instance,
    TRes Function(Query$SourceBrowse$source$meta) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$meta;

  factory CopyWith$Query$SourceBrowse$source$meta.stub(TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$meta;

  TRes call({
    String? sourceId,
    String? key,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$meta<TRes>
    implements CopyWith$Query$SourceBrowse$source$meta<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$meta(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$meta _instance;

  final TRes Function(Query$SourceBrowse$source$meta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sourceId = _undefined,
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$meta(
        sourceId: sourceId == _undefined || sourceId == null
            ? _instance.sourceId
            : (sourceId as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$meta<TRes>
    implements CopyWith$Query$SourceBrowse$source$meta<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$meta(this._res);

  TRes _res;

  call({
    String? sourceId,
    String? key,
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters({required this.$__typename});

  factory Query$SourceBrowse$source$filters.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CheckBoxFilter":
        return Query$SourceBrowse$source$filters$$CheckBoxFilter.fromJson(json);

      case "HeaderFilter":
        return Query$SourceBrowse$source$filters$$HeaderFilter.fromJson(json);

      case "SelectFilter":
        return Query$SourceBrowse$source$filters$$SelectFilter.fromJson(json);

      case "TriStateFilter":
        return Query$SourceBrowse$source$filters$$TriStateFilter.fromJson(json);

      case "TextFilter":
        return Query$SourceBrowse$source$filters$$TextFilter.fromJson(json);

      case "SortFilter":
        return Query$SourceBrowse$source$filters$$SortFilter.fromJson(json);

      case "SeparatorFilter":
        return Query$SourceBrowse$source$filters$$SeparatorFilter.fromJson(
            json);

      case "GroupFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$SourceBrowse$source$filters(
            $__typename: (l$$__typename as String));
    }
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
    if (other is! Query$SourceBrowse$source$filters ||
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

extension UtilityExtension$Query$SourceBrowse$source$filters
    on Query$SourceBrowse$source$filters {
  CopyWith$Query$SourceBrowse$source$filters<Query$SourceBrowse$source$filters>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$SourceBrowse$source$filters$$CheckBoxFilter)
        checkBoxFilter,
    required _T Function(Query$SourceBrowse$source$filters$$HeaderFilter)
        headerFilter,
    required _T Function(Query$SourceBrowse$source$filters$$SelectFilter)
        selectFilter,
    required _T Function(Query$SourceBrowse$source$filters$$TriStateFilter)
        triStateFilter,
    required _T Function(Query$SourceBrowse$source$filters$$TextFilter)
        textFilter,
    required _T Function(Query$SourceBrowse$source$filters$$SortFilter)
        sortFilter,
    required _T Function(Query$SourceBrowse$source$filters$$SeparatorFilter)
        separatorFilter,
    required _T Function(Query$SourceBrowse$source$filters$$GroupFilter)
        groupFilter,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CheckBoxFilter":
        return checkBoxFilter(
            this as Query$SourceBrowse$source$filters$$CheckBoxFilter);

      case "HeaderFilter":
        return headerFilter(
            this as Query$SourceBrowse$source$filters$$HeaderFilter);

      case "SelectFilter":
        return selectFilter(
            this as Query$SourceBrowse$source$filters$$SelectFilter);

      case "TriStateFilter":
        return triStateFilter(
            this as Query$SourceBrowse$source$filters$$TriStateFilter);

      case "TextFilter":
        return textFilter(
            this as Query$SourceBrowse$source$filters$$TextFilter);

      case "SortFilter":
        return sortFilter(
            this as Query$SourceBrowse$source$filters$$SortFilter);

      case "SeparatorFilter":
        return separatorFilter(
            this as Query$SourceBrowse$source$filters$$SeparatorFilter);

      case "GroupFilter":
        return groupFilter(
            this as Query$SourceBrowse$source$filters$$GroupFilter);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$SourceBrowse$source$filters$$CheckBoxFilter)?
        checkBoxFilter,
    _T Function(Query$SourceBrowse$source$filters$$HeaderFilter)? headerFilter,
    _T Function(Query$SourceBrowse$source$filters$$SelectFilter)? selectFilter,
    _T Function(Query$SourceBrowse$source$filters$$TriStateFilter)?
        triStateFilter,
    _T Function(Query$SourceBrowse$source$filters$$TextFilter)? textFilter,
    _T Function(Query$SourceBrowse$source$filters$$SortFilter)? sortFilter,
    _T Function(Query$SourceBrowse$source$filters$$SeparatorFilter)?
        separatorFilter,
    _T Function(Query$SourceBrowse$source$filters$$GroupFilter)? groupFilter,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CheckBoxFilter":
        if (checkBoxFilter != null) {
          return checkBoxFilter(
              this as Query$SourceBrowse$source$filters$$CheckBoxFilter);
        } else {
          return orElse();
        }

      case "HeaderFilter":
        if (headerFilter != null) {
          return headerFilter(
              this as Query$SourceBrowse$source$filters$$HeaderFilter);
        } else {
          return orElse();
        }

      case "SelectFilter":
        if (selectFilter != null) {
          return selectFilter(
              this as Query$SourceBrowse$source$filters$$SelectFilter);
        } else {
          return orElse();
        }

      case "TriStateFilter":
        if (triStateFilter != null) {
          return triStateFilter(
              this as Query$SourceBrowse$source$filters$$TriStateFilter);
        } else {
          return orElse();
        }

      case "TextFilter":
        if (textFilter != null) {
          return textFilter(
              this as Query$SourceBrowse$source$filters$$TextFilter);
        } else {
          return orElse();
        }

      case "SortFilter":
        if (sortFilter != null) {
          return sortFilter(
              this as Query$SourceBrowse$source$filters$$SortFilter);
        } else {
          return orElse();
        }

      case "SeparatorFilter":
        if (separatorFilter != null) {
          return separatorFilter(
              this as Query$SourceBrowse$source$filters$$SeparatorFilter);
        } else {
          return orElse();
        }

      case "GroupFilter":
        if (groupFilter != null) {
          return groupFilter(
              this as Query$SourceBrowse$source$filters$$GroupFilter);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SourceBrowse$source$filters<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters(
    Query$SourceBrowse$source$filters instance,
    TRes Function(Query$SourceBrowse$source$filters) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters;

  factory CopyWith$Query$SourceBrowse$source$filters.stub(TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SourceBrowse$source$filters<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters _instance;

  final TRes Function(Query$SourceBrowse$source$filters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SourceBrowse$source$filters(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SourceBrowse$source$filters$$CheckBoxFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$CheckBoxFilter({
    this.type = 'CheckBoxFilter',
    required this.CheckBoxFilterDefault,
    required this.name,
    this.$__typename = 'CheckBoxFilter',
  });

  factory Query$SourceBrowse$source$filters$$CheckBoxFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$CheckBoxFilterDefault = json['CheckBoxFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$CheckBoxFilter(
      type: (l$type as String),
      CheckBoxFilterDefault: (l$CheckBoxFilterDefault as bool),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final bool CheckBoxFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    _resultData['CheckBoxFilterDefault'] = l$CheckBoxFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$CheckBoxFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$CheckBoxFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    final lOther$CheckBoxFilterDefault = other.CheckBoxFilterDefault;
    if (l$CheckBoxFilterDefault != lOther$CheckBoxFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$CheckBoxFilter
    on Query$SourceBrowse$source$filters$$CheckBoxFilter {
  CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter<
          Query$SourceBrowse$source$filters$$CheckBoxFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter(
    Query$SourceBrowse$source$filters$$CheckBoxFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$CheckBoxFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter;

  TRes call({
    String? type,
    bool? CheckBoxFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$CheckBoxFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$CheckBoxFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? CheckBoxFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$CheckBoxFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        CheckBoxFilterDefault:
            CheckBoxFilterDefault == _undefined || CheckBoxFilterDefault == null
                ? _instance.CheckBoxFilterDefault
                : (CheckBoxFilterDefault as bool),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$CheckBoxFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$CheckBoxFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    bool? CheckBoxFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$HeaderFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$HeaderFilter({
    this.type = 'HeaderFilter',
    required this.name,
    this.$__typename = 'HeaderFilter',
  });

  factory Query$SourceBrowse$source$filters$$HeaderFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$HeaderFilter(
      type: (l$type as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$HeaderFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$HeaderFilter
    on Query$SourceBrowse$source$filters$$HeaderFilter {
  CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter<
          Query$SourceBrowse$source$filters$$HeaderFilter>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter(
    Query$SourceBrowse$source$filters$$HeaderFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$HeaderFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$HeaderFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$HeaderFilter;

  TRes call({
    String? type,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$HeaderFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$HeaderFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$HeaderFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$HeaderFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$HeaderFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$HeaderFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$HeaderFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$HeaderFilter(this._res);

  TRes _res;

  call({
    String? type,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$SelectFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$SelectFilter({
    this.type = 'SelectFilter',
    required this.SelectFilterDefault,
    required this.name,
    required this.values,
    this.$__typename = 'SelectFilter',
  });

  factory Query$SourceBrowse$source$filters$$SelectFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$SelectFilterDefault = json['SelectFilterDefault'];
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$SelectFilter(
      type: (l$type as String),
      SelectFilterDefault: (l$SelectFilterDefault as int),
      name: (l$name as String),
      values: (l$values as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final int SelectFilterDefault;

  final String name;

  final List<String> values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$SelectFilterDefault = SelectFilterDefault;
    _resultData['SelectFilterDefault'] = l$SelectFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$SelectFilterDefault = SelectFilterDefault;
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$SelectFilterDefault,
      l$name,
      Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$SelectFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$SelectFilterDefault = SelectFilterDefault;
    final lOther$SelectFilterDefault = other.SelectFilterDefault;
    if (l$SelectFilterDefault != lOther$SelectFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$SelectFilter
    on Query$SourceBrowse$source$filters$$SelectFilter {
  CopyWith$Query$SourceBrowse$source$filters$$SelectFilter<
          Query$SourceBrowse$source$filters$$SelectFilter>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters$$SelectFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$SelectFilter<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$SelectFilter(
    Query$SourceBrowse$source$filters$$SelectFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$SelectFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$SelectFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$SelectFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SelectFilter;

  TRes call({
    String? type,
    int? SelectFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$SelectFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$SelectFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$SelectFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$SelectFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$SelectFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? SelectFilterDefault = _undefined,
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$SelectFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        SelectFilterDefault:
            SelectFilterDefault == _undefined || SelectFilterDefault == null
                ? _instance.SelectFilterDefault
                : (SelectFilterDefault as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        values: values == _undefined || values == null
            ? _instance.values
            : (values as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SelectFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$SelectFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SelectFilter(this._res);

  TRes _res;

  call({
    String? type,
    int? SelectFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$TriStateFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$TriStateFilter({
    this.type = 'TriStateFilter',
    required this.TriStateFilterDefault,
    required this.name,
    this.$__typename = 'TriStateFilter',
  });

  factory Query$SourceBrowse$source$filters$$TriStateFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$TriStateFilterDefault = json['TriStateFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$TriStateFilter(
      type: (l$type as String),
      TriStateFilterDefault:
          fromJson$Enum$TriState((l$TriStateFilterDefault as String)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final Enum$TriState TriStateFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$TriStateFilterDefault = TriStateFilterDefault;
    _resultData['TriStateFilterDefault'] =
        toJson$Enum$TriState(l$TriStateFilterDefault);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$TriStateFilterDefault = TriStateFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$TriStateFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$TriStateFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$TriStateFilterDefault = TriStateFilterDefault;
    final lOther$TriStateFilterDefault = other.TriStateFilterDefault;
    if (l$TriStateFilterDefault != lOther$TriStateFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$TriStateFilter
    on Query$SourceBrowse$source$filters$$TriStateFilter {
  CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter<
          Query$SourceBrowse$source$filters$$TriStateFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter(
    Query$SourceBrowse$source$filters$$TriStateFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$TriStateFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$TriStateFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TriStateFilter;

  TRes call({
    String? type,
    Enum$TriState? TriStateFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$TriStateFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$TriStateFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$TriStateFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$TriStateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? TriStateFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$TriStateFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        TriStateFilterDefault:
            TriStateFilterDefault == _undefined || TriStateFilterDefault == null
                ? _instance.TriStateFilterDefault
                : (TriStateFilterDefault as Enum$TriState),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TriStateFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$TriStateFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TriStateFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    Enum$TriState? TriStateFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$TextFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$TextFilter({
    this.type = 'TextFilter',
    required this.TextFilterDefault,
    required this.name,
    this.$__typename = 'TextFilter',
  });

  factory Query$SourceBrowse$source$filters$$TextFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$TextFilterDefault = json['TextFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$TextFilter(
      type: (l$type as String),
      TextFilterDefault: (l$TextFilterDefault as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String TextFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$TextFilterDefault = TextFilterDefault;
    _resultData['TextFilterDefault'] = l$TextFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$TextFilterDefault = TextFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$TextFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$TextFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$TextFilterDefault = TextFilterDefault;
    final lOther$TextFilterDefault = other.TextFilterDefault;
    if (l$TextFilterDefault != lOther$TextFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$TextFilter
    on Query$SourceBrowse$source$filters$$TextFilter {
  CopyWith$Query$SourceBrowse$source$filters$$TextFilter<
          Query$SourceBrowse$source$filters$$TextFilter>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters$$TextFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$TextFilter<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$TextFilter(
    Query$SourceBrowse$source$filters$$TextFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$TextFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$TextFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$TextFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TextFilter;

  TRes call({
    String? type,
    String? TextFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$TextFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$TextFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$TextFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$TextFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$TextFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? TextFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$TextFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        TextFilterDefault:
            TextFilterDefault == _undefined || TextFilterDefault == null
                ? _instance.TextFilterDefault
                : (TextFilterDefault as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TextFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$TextFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$TextFilter(this._res);

  TRes _res;

  call({
    String? type,
    String? TextFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$SortFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$SortFilter({
    this.type = 'SortFilter',
    this.SortFilterDefault,
    required this.name,
    required this.values,
    this.$__typename = 'SortFilter',
  });

  factory Query$SourceBrowse$source$filters$$SortFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$SortFilterDefault = json['SortFilterDefault'];
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$SortFilter(
      type: (l$type as String),
      SortFilterDefault: l$SortFilterDefault == null
          ? null
          : Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault
              .fromJson((l$SortFilterDefault as Map<String, dynamic>)),
      name: (l$name as String),
      values: (l$values as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault?
      SortFilterDefault;

  final String name;

  final List<String> values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$SortFilterDefault = SortFilterDefault;
    _resultData['SortFilterDefault'] = l$SortFilterDefault?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$SortFilterDefault = SortFilterDefault;
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$SortFilterDefault,
      l$name,
      Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$SortFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$SortFilterDefault = SortFilterDefault;
    final lOther$SortFilterDefault = other.SortFilterDefault;
    if (l$SortFilterDefault != lOther$SortFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$SortFilter
    on Query$SourceBrowse$source$filters$$SortFilter {
  CopyWith$Query$SourceBrowse$source$filters$$SortFilter<
          Query$SourceBrowse$source$filters$$SortFilter>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters$$SortFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$SortFilter<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$SortFilter(
    Query$SourceBrowse$source$filters$$SortFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$SortFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$SortFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter;

  TRes call({
    String? type,
    Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault?
        SortFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  });
  CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<TRes>
      get SortFilterDefault;
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$SortFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$SortFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$SortFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? SortFilterDefault = _undefined,
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$SortFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        SortFilterDefault: SortFilterDefault == _undefined
            ? _instance.SortFilterDefault
            : (SortFilterDefault
                as Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        values: values == _undefined || values == null
            ? _instance.values
            : (values as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<TRes>
      get SortFilterDefault {
    final local$SortFilterDefault = _instance.SortFilterDefault;
    return local$SortFilterDefault == null
        ? CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault
            .stub(_then(_instance))
        : CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
            local$SortFilterDefault, (e) => call(SortFilterDefault: e));
  }
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$SortFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter(this._res);

  TRes _res;

  call({
    String? type,
    Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault?
        SortFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<TRes>
      get SortFilterDefault =>
          CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault
              .stub(_res);
}

class Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault {
  Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault({
    required this.ascending,
    required this.index,
    this.$__typename = 'SortSelection',
  });

  factory Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault.fromJson(
      Map<String, dynamic> json) {
    final l$ascending = json['ascending'];
    final l$index = json['index'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
      ascending: (l$ascending as bool),
      index: (l$index as int),
      $__typename: (l$$__typename as String),
    );
  }

  final bool ascending;

  final int index;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ascending = ascending;
    _resultData['ascending'] = l$ascending;
    final l$index = index;
    _resultData['index'] = l$index;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ascending = ascending;
    final l$index = index;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ascending,
      l$index,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ascending = ascending;
    final lOther$ascending = other.ascending;
    if (l$ascending != lOther$ascending) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault
    on Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault {
  CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
          Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
    Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault;

  factory CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault;

  TRes call({
    bool? ascending,
    int? index,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault
      _instance;

  final TRes Function(
      Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ascending = _undefined,
    Object? index = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
        ascending: ascending == _undefined || ascending == null
            ? _instance.ascending
            : (ascending as bool),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SortFilter$SortFilterDefault(
      this._res);

  TRes _res;

  call({
    bool? ascending,
    int? index,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$SeparatorFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$SeparatorFilter({
    this.type = 'SeparatorFilter',
    required this.name,
    this.$__typename = 'SeparatorFilter',
  });

  factory Query$SourceBrowse$source$filters$$SeparatorFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$SeparatorFilter(
      type: (l$type as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$SeparatorFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$SeparatorFilter
    on Query$SourceBrowse$source$filters$$SeparatorFilter {
  CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter<
          Query$SourceBrowse$source$filters$$SeparatorFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter(
    Query$SourceBrowse$source$filters$$SeparatorFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$SeparatorFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$SeparatorFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SeparatorFilter;

  TRes call({
    String? type,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$SeparatorFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$SeparatorFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$SeparatorFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$SeparatorFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$SeparatorFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SeparatorFilter<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$SeparatorFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$SeparatorFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter
    implements Query$SourceBrowse$source$filters {
  Query$SourceBrowse$source$filters$$GroupFilter({
    this.type = 'GroupFilter',
    required this.name,
    required this.filters,
    this.$__typename = 'GroupFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$filters = json['filters'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter(
      type: (l$type as String),
      name: (l$name as String),
      filters: (l$filters as List<dynamic>)
          .map((e) =>
              Query$SourceBrowse$source$filters$$GroupFilter$filters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final List<Query$SourceBrowse$source$filters$$GroupFilter$filters> filters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$filters = filters;
    _resultData['filters'] = l$filters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$filters = filters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$name,
      Object.hashAll(l$filters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SourceBrowse$source$filters$$GroupFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (l$filters.length != lOther$filters.length) {
      return false;
    }
    for (int i = 0; i < l$filters.length; i++) {
      final l$filters$entry = l$filters[i];
      final lOther$filters$entry = lOther$filters[i];
      if (l$filters$entry != lOther$filters$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter
    on Query$SourceBrowse$source$filters$$GroupFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter<
          Query$SourceBrowse$source$filters$$GroupFilter>
      get copyWith => CopyWith$Query$SourceBrowse$source$filters$$GroupFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter<TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter(
    Query$SourceBrowse$source$filters$$GroupFilter instance,
    TRes Function(Query$SourceBrowse$source$filters$$GroupFilter) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter;

  TRes call({
    String? type,
    String? name,
    List<Query$SourceBrowse$source$filters$$GroupFilter$filters>? filters,
    String? $__typename,
  });
  TRes filters(
      Iterable<Query$SourceBrowse$source$filters$$GroupFilter$filters> Function(
              Iterable<
                  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<
                      Query$SourceBrowse$source$filters$$GroupFilter$filters>>)
          _fn);
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$GroupFilter<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$GroupFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? filters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$GroupFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        filters: filters == _undefined || filters == null
            ? _instance.filters
            : (filters as List<
                Query$SourceBrowse$source$filters$$GroupFilter$filters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes filters(
          Iterable<Query$SourceBrowse$source$filters$$GroupFilter$filters> Function(
                  Iterable<
                      CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<
                          Query$SourceBrowse$source$filters$$GroupFilter$filters>>)
              _fn) =>
      call(
          filters: _fn(_instance.filters.map((e) =>
              CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter<TRes>
    implements CopyWith$Query$SourceBrowse$source$filters$$GroupFilter<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter(this._res);

  TRes _res;

  call({
    String? type,
    String? name,
    List<Query$SourceBrowse$source$filters$$GroupFilter$filters>? filters,
    String? $__typename,
  }) =>
      _res;

  filters(_fn) => _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters(
      {required this.$__typename});

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CheckBoxFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter
            .fromJson(json);

      case "HeaderFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter
            .fromJson(json);

      case "SelectFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter
            .fromJson(json);

      case "TriStateFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter
            .fromJson(json);

      case "TextFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter
            .fromJson(json);

      case "SortFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter
            .fromJson(json);

      case "SeparatorFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter
            .fromJson(json);

      case "GroupFilter":
        return Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$SourceBrowse$source$filters$$GroupFilter$filters(
            $__typename: (l$$__typename as String));
    }
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
    if (other is! Query$SourceBrowse$source$filters$$GroupFilter$filters ||
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters
    on Query$SourceBrowse$source$filters$$GroupFilter$filters {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<
          Query$SourceBrowse$source$filters$$GroupFilter$filters>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter)
        checkBoxFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter)
        headerFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter)
        selectFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter)
        triStateFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter)
        textFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter)
        sortFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter)
        separatorFilter,
    required _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter)
        groupFilter,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CheckBoxFilter":
        return checkBoxFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter);

      case "HeaderFilter":
        return headerFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter);

      case "SelectFilter":
        return selectFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter);

      case "TriStateFilter":
        return triStateFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter);

      case "TextFilter":
        return textFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter);

      case "SortFilter":
        return sortFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter);

      case "SeparatorFilter":
        return separatorFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter);

      case "GroupFilter":
        return groupFilter(this
            as Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter)?
        checkBoxFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter)?
        headerFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter)?
        selectFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter)?
        triStateFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter)?
        textFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter)?
        sortFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter)?
        separatorFilter,
    _T Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter)?
        groupFilter,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CheckBoxFilter":
        if (checkBoxFilter != null) {
          return checkBoxFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter);
        } else {
          return orElse();
        }

      case "HeaderFilter":
        if (headerFilter != null) {
          return headerFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter);
        } else {
          return orElse();
        }

      case "SelectFilter":
        if (selectFilter != null) {
          return selectFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter);
        } else {
          return orElse();
        }

      case "TriStateFilter":
        if (triStateFilter != null) {
          return triStateFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter);
        } else {
          return orElse();
        }

      case "TextFilter":
        if (textFilter != null) {
          return textFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter);
        } else {
          return orElse();
        }

      case "SortFilter":
        if (sortFilter != null) {
          return sortFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter);
        } else {
          return orElse();
        }

      case "SeparatorFilter":
        if (separatorFilter != null) {
          return separatorFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter);
        } else {
          return orElse();
        }

      case "GroupFilter":
        if (groupFilter != null) {
          return groupFilter(this
              as Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters(
    Query$SourceBrowse$source$filters$$GroupFilter$filters instance,
    TRes Function(Query$SourceBrowse$source$filters$$GroupFilter$filters) then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters<TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters _instance;

  final TRes Function(Query$SourceBrowse$source$filters$$GroupFilter$filters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SourceBrowse$source$filters$$GroupFilter$filters(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters<TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter({
    this.type = 'CheckBoxFilter',
    required this.CheckBoxFilterDefault,
    required this.name,
    this.$__typename = 'CheckBoxFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$CheckBoxFilterDefault = json['CheckBoxFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
      type: (l$type as String),
      CheckBoxFilterDefault: (l$CheckBoxFilterDefault as bool),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final bool CheckBoxFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    _resultData['CheckBoxFilterDefault'] = l$CheckBoxFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$CheckBoxFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$CheckBoxFilterDefault = CheckBoxFilterDefault;
    final lOther$CheckBoxFilterDefault = other.CheckBoxFilterDefault;
    if (l$CheckBoxFilterDefault != lOther$CheckBoxFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter;

  TRes call({
    String? type,
    bool? CheckBoxFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? CheckBoxFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        CheckBoxFilterDefault:
            CheckBoxFilterDefault == _undefined || CheckBoxFilterDefault == null
                ? _instance.CheckBoxFilterDefault
                : (CheckBoxFilterDefault as bool),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$CheckBoxFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    bool? CheckBoxFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter({
    this.type = 'HeaderFilter',
    required this.name,
    this.$__typename = 'HeaderFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
      type: (l$type as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter;

  TRes call({
    String? type,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$HeaderFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter({
    this.type = 'SelectFilter',
    required this.SelectFilterDefault,
    required this.name,
    required this.values,
    this.$__typename = 'SelectFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$SelectFilterDefault = json['SelectFilterDefault'];
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
      type: (l$type as String),
      SelectFilterDefault: (l$SelectFilterDefault as int),
      name: (l$name as String),
      values: (l$values as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final int SelectFilterDefault;

  final String name;

  final List<String> values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$SelectFilterDefault = SelectFilterDefault;
    _resultData['SelectFilterDefault'] = l$SelectFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$SelectFilterDefault = SelectFilterDefault;
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$SelectFilterDefault,
      l$name,
      Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$SelectFilterDefault = SelectFilterDefault;
    final lOther$SelectFilterDefault = other.SelectFilterDefault;
    if (l$SelectFilterDefault != lOther$SelectFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter;

  TRes call({
    String? type,
    int? SelectFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? SelectFilterDefault = _undefined,
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        SelectFilterDefault:
            SelectFilterDefault == _undefined || SelectFilterDefault == null
                ? _instance.SelectFilterDefault
                : (SelectFilterDefault as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        values: values == _undefined || values == null
            ? _instance.values
            : (values as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SelectFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    int? SelectFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter({
    this.type = 'TriStateFilter',
    required this.TriStateFilterDefault,
    required this.name,
    this.$__typename = 'TriStateFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$TriStateFilterDefault = json['TriStateFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
      type: (l$type as String),
      TriStateFilterDefault:
          fromJson$Enum$TriState((l$TriStateFilterDefault as String)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final Enum$TriState TriStateFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$TriStateFilterDefault = TriStateFilterDefault;
    _resultData['TriStateFilterDefault'] =
        toJson$Enum$TriState(l$TriStateFilterDefault);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$TriStateFilterDefault = TriStateFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$TriStateFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$TriStateFilterDefault = TriStateFilterDefault;
    final lOther$TriStateFilterDefault = other.TriStateFilterDefault;
    if (l$TriStateFilterDefault != lOther$TriStateFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter;

  TRes call({
    String? type,
    Enum$TriState? TriStateFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? TriStateFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        TriStateFilterDefault:
            TriStateFilterDefault == _undefined || TriStateFilterDefault == null
                ? _instance.TriStateFilterDefault
                : (TriStateFilterDefault as Enum$TriState),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TriStateFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    Enum$TriState? TriStateFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter({
    this.type = 'TextFilter',
    required this.TextFilterDefault,
    required this.name,
    this.$__typename = 'TextFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$TextFilterDefault = json['TextFilterDefault'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
      type: (l$type as String),
      TextFilterDefault: (l$TextFilterDefault as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String TextFilterDefault;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$TextFilterDefault = TextFilterDefault;
    _resultData['TextFilterDefault'] = l$TextFilterDefault;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$TextFilterDefault = TextFilterDefault;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$TextFilterDefault,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$TextFilterDefault = TextFilterDefault;
    final lOther$TextFilterDefault = other.TextFilterDefault;
    if (l$TextFilterDefault != lOther$TextFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter;

  TRes call({
    String? type,
    String? TextFilterDefault,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter
      _instance;

  final TRes Function(
      Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? TextFilterDefault = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        TextFilterDefault:
            TextFilterDefault == _undefined || TextFilterDefault == null
                ? _instance.TextFilterDefault
                : (TextFilterDefault as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$TextFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    String? TextFilterDefault,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter({
    this.type = 'SortFilter',
    this.SortFilterDefault,
    required this.name,
    required this.values,
    this.$__typename = 'SortFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$SortFilterDefault = json['SortFilterDefault'];
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
      type: (l$type as String),
      SortFilterDefault: l$SortFilterDefault == null
          ? null
          : Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
              .fromJson((l$SortFilterDefault as Map<String, dynamic>)),
      name: (l$name as String),
      values: (l$values as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault?
      SortFilterDefault;

  final String name;

  final List<String> values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$SortFilterDefault = SortFilterDefault;
    _resultData['SortFilterDefault'] = l$SortFilterDefault?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$SortFilterDefault = SortFilterDefault;
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$SortFilterDefault,
      l$name,
      Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$SortFilterDefault = SortFilterDefault;
    final lOther$SortFilterDefault = other.SortFilterDefault;
    if (l$SortFilterDefault != lOther$SortFilterDefault) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter;

  TRes call({
    String? type,
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault?
        SortFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  });
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
      TRes> get SortFilterDefault;
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter
      _instance;

  final TRes Function(
      Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? SortFilterDefault = _undefined,
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        SortFilterDefault: SortFilterDefault == _undefined
            ? _instance.SortFilterDefault
            : (SortFilterDefault
                as Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        values: values == _undefined || values == null
            ? _instance.values
            : (values as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
      TRes> get SortFilterDefault {
    final local$SortFilterDefault = _instance.SortFilterDefault;
    return local$SortFilterDefault == null
        ? CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
            .stub(_then(_instance))
        : CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
            local$SortFilterDefault, (e) => call(SortFilterDefault: e));
  }
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault?
        SortFilterDefault,
    String? name,
    List<String>? values,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
          TRes>
      get SortFilterDefault =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
              .stub(_res);
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault({
    required this.ascending,
    required this.index,
    this.$__typename = 'SortSelection',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault.fromJson(
      Map<String, dynamic> json) {
    final l$ascending = json['ascending'];
    final l$index = json['index'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
      ascending: (l$ascending as bool),
      index: (l$index as int),
      $__typename: (l$$__typename as String),
    );
  }

  final bool ascending;

  final int index;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ascending = ascending;
    _resultData['ascending'] = l$ascending;
    final l$index = index;
    _resultData['index'] = l$index;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ascending = ascending;
    final l$index = index;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ascending,
      l$index,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ascending = ascending;
    final lOther$ascending = other.ascending;
    if (l$ascending != lOther$ascending) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault;

  TRes call({
    bool? ascending,
    int? index,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ascending = _undefined,
    Object? index = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
        ascending: ascending == _undefined || ascending == null
            ? _instance.ascending
            : (ascending as bool),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SortFilter$SortFilterDefault(
      this._res);

  TRes _res;

  call({
    bool? ascending,
    int? index,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter({
    this.type = 'SeparatorFilter',
    required this.name,
    this.$__typename = 'SeparatorFilter',
  });

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
      type: (l$type as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter;

  TRes call({
    String? type,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$SeparatorFilter(
      this._res);

  TRes _res;

  call({
    String? type,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter
    implements Query$SourceBrowse$source$filters$$GroupFilter$filters {
  Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
      {this.$__typename = 'GroupFilter'});

  factory Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
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
    if (other
            is! Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter ||
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

extension UtilityExtension$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter
    on Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter {
  CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter>
      get copyWith =>
          CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
    TRes> {
  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
    Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter
        instance,
    TRes Function(
            Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter)
        then,
  ) = _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter;

  factory CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
            TRes> {
  _CopyWithImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
    this._instance,
    this._then,
  );

  final Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter
      _instance;

  final TRes Function(
          Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
        TRes>
    implements
        CopyWith$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter<
            TRes> {
  _CopyWithStubImpl$Query$SourceBrowse$source$filters$$GroupFilter$filters$$GroupFilter(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
