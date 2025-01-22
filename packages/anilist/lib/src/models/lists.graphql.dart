import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryMediaListCollection {
  factory VariablesQueryMediaListCollection({
    int? userId,
    String? username,
    required EnumMediaType type,
    EnumMediaListStatus? status,
    int? chunk,
    int? perChunk,
    List<EnumMediaListSort?>? sort,
    String? notesLike,
  }) =>
      VariablesQueryMediaListCollection._({
        if (userId != null) r'userId': userId,
        if (username != null) r'username': username,
        r'type': type,
        if (status != null) r'status': status,
        if (chunk != null) r'chunk': chunk,
        if (perChunk != null) r'perChunk': perChunk,
        if (sort != null) r'sort': sort,
        if (notesLike != null) r'notesLike': notesLike,
      });

  VariablesQueryMediaListCollection._(this._$data);

  factory VariablesQueryMediaListCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    final l$type = data['type'];
    result$data['type'] = fromJsonEnumMediaType((l$type as String));
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String));
    }
    if (data.containsKey('chunk')) {
      final l$chunk = data['chunk'];
      result$data['chunk'] = (l$chunk as int?);
    }
    if (data.containsKey('perChunk')) {
      final l$perChunk = data['perChunk'];
      result$data['perChunk'] = (l$perChunk as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJsonEnumMediaListSort((e as String)))
          .toList();
    }
    if (data.containsKey('notesLike')) {
      final l$notesLike = data['notesLike'];
      result$data['notesLike'] = (l$notesLike as String?);
    }
    return VariablesQueryMediaListCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  String? get username => (_$data['username'] as String?);

  EnumMediaType get type => (_$data['type'] as EnumMediaType);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  int? get chunk => (_$data['chunk'] as int?);

  int? get perChunk => (_$data['perChunk'] as int?);

  List<EnumMediaListSort?>? get sort =>
      (_$data['sort'] as List<EnumMediaListSort?>?);

  String? get notesLike => (_$data['notesLike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    final l$type = type;
    result$data['type'] = toJsonEnumMediaType(l$type);
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    }
    if (_$data.containsKey('chunk')) {
      final l$chunk = chunk;
      result$data['chunk'] = l$chunk;
    }
    if (_$data.containsKey('perChunk')) {
      final l$perChunk = perChunk;
      result$data['perChunk'] = l$perChunk;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumMediaListSort(e))
          .toList();
    }
    if (_$data.containsKey('notesLike')) {
      final l$notesLike = notesLike;
      result$data['notesLike'] = l$notesLike;
    }
    return result$data;
  }

  CopyWithVariablesQueryMediaListCollection<VariablesQueryMediaListCollection>
      get copyWith => CopyWithVariablesQueryMediaListCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryMediaListCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$chunk = chunk;
    final lOther$chunk = other.chunk;
    if (_$data.containsKey('chunk') != other._$data.containsKey('chunk')) {
      return false;
    }
    if (l$chunk != lOther$chunk) {
      return false;
    }
    final l$perChunk = perChunk;
    final lOther$perChunk = other.perChunk;
    if (_$data.containsKey('perChunk') !=
        other._$data.containsKey('perChunk')) {
      return false;
    }
    if (l$perChunk != lOther$perChunk) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$notesLike = notesLike;
    final lOther$notesLike = other.notesLike;
    if (_$data.containsKey('notesLike') !=
        other._$data.containsKey('notesLike')) {
      return false;
    }
    if (l$notesLike != lOther$notesLike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$username = username;
    final l$type = type;
    final l$status = status;
    final l$chunk = chunk;
    final l$perChunk = perChunk;
    final l$sort = sort;
    final l$notesLike = notesLike;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('username') ? l$username : const {},
      l$type,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('chunk') ? l$chunk : const {},
      _$data.containsKey('perChunk') ? l$perChunk : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('notesLike') ? l$notesLike : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryMediaListCollection<TRes> {
  factory CopyWithVariablesQueryMediaListCollection(
    VariablesQueryMediaListCollection instance,
    TRes Function(VariablesQueryMediaListCollection) then,
  ) = _CopyWithImplVariablesQueryMediaListCollection;

  factory CopyWithVariablesQueryMediaListCollection.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaListCollection;

  TRes call({
    int? userId,
    String? username,
    EnumMediaType? type,
    EnumMediaListStatus? status,
    int? chunk,
    int? perChunk,
    List<EnumMediaListSort?>? sort,
    String? notesLike,
  });
}

class _CopyWithImplVariablesQueryMediaListCollection<TRes>
    implements CopyWithVariablesQueryMediaListCollection<TRes> {
  _CopyWithImplVariablesQueryMediaListCollection(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaListCollection _instance;

  final TRes Function(VariablesQueryMediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? username = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? chunk = _undefined,
    Object? perChunk = _undefined,
    Object? sort = _undefined,
    Object? notesLike = _undefined,
  }) =>
      _then(VariablesQueryMediaListCollection._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (username != _undefined) 'username': (username as String?),
        if (type != _undefined && type != null) 'type': (type as EnumMediaType),
        if (status != _undefined) 'status': (status as EnumMediaListStatus?),
        if (chunk != _undefined) 'chunk': (chunk as int?),
        if (perChunk != _undefined) 'perChunk': (perChunk as int?),
        if (sort != _undefined) 'sort': (sort as List<EnumMediaListSort?>?),
        if (notesLike != _undefined) 'notesLike': (notesLike as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaListCollection<TRes>
    implements CopyWithVariablesQueryMediaListCollection<TRes> {
  _CopyWithStubImplVariablesQueryMediaListCollection(this._res);

  TRes _res;

  call({
    int? userId,
    String? username,
    EnumMediaType? type,
    EnumMediaListStatus? status,
    int? chunk,
    int? perChunk,
    List<EnumMediaListSort?>? sort,
    String? notesLike,
  }) =>
      _res;
}

class QueryMediaListCollection {
  QueryMediaListCollection({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory QueryMediaListCollection.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollection(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : QueryMediaListCollectionMediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaListCollectionMediaListCollection? MediaListCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaListCollection = MediaListCollection;
    _resultData['MediaListCollection'] = l$MediaListCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaListCollection = MediaListCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaListCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaListCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaListCollection = MediaListCollection;
    final lOther$MediaListCollection = other.MediaListCollection;
    if (l$MediaListCollection != lOther$MediaListCollection) {
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

extension UtilityExtensionQueryMediaListCollection on QueryMediaListCollection {
  CopyWithQueryMediaListCollection<QueryMediaListCollection> get copyWith =>
      CopyWithQueryMediaListCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaListCollection<TRes> {
  factory CopyWithQueryMediaListCollection(
    QueryMediaListCollection instance,
    TRes Function(QueryMediaListCollection) then,
  ) = _CopyWithImplQueryMediaListCollection;

  factory CopyWithQueryMediaListCollection.stub(TRes res) =
      _CopyWithStubImplQueryMediaListCollection;

  TRes call({
    QueryMediaListCollectionMediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWithQueryMediaListCollectionMediaListCollection<TRes>
      get MediaListCollection;
}

class _CopyWithImplQueryMediaListCollection<TRes>
    implements CopyWithQueryMediaListCollection<TRes> {
  _CopyWithImplQueryMediaListCollection(
    this._instance,
    this._then,
  );

  final QueryMediaListCollection _instance;

  final TRes Function(QueryMediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollection(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection
                as QueryMediaListCollectionMediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaListCollectionMediaListCollection<TRes>
      get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWithQueryMediaListCollectionMediaListCollection.stub(
            _then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImplQueryMediaListCollection<TRes>
    implements CopyWithQueryMediaListCollection<TRes> {
  _CopyWithStubImplQueryMediaListCollection(this._res);

  TRes _res;

  call({
    QueryMediaListCollectionMediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaListCollectionMediaListCollection<TRes>
      get MediaListCollection =>
          CopyWithQueryMediaListCollectionMediaListCollection.stub(_res);
}

const documentNodeQueryMediaListCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaListCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'chunk')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perChunk')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaListSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC'))
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notesLike')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaListCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userName'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'chunk'),
            value: VariableNode(name: NameNode(value: 'chunk')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perChunk'),
            value: VariableNode(name: NameNode(value: 'perChunk')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: VariableNode(name: NameNode(value: 'sort')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notes_like'),
            value: VariableNode(name: NameNode(value: 'notesLike')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'hasNextChunk'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'lists'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCustomList'),
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
                name: NameNode(value: 'entries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaList'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'genres'),
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
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaMin,
]);

class QueryMediaListCollectionMediaListCollection {
  QueryMediaListCollectionMediaListCollection({
    this.hasNextChunk,
    this.user,
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory QueryMediaListCollectionMediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextChunk = json['hasNextChunk'];
    final l$user = json['user'];
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollection(
      hasNextChunk: (l$hasNextChunk as bool?),
      user: l$user == null
          ? null
          : QueryMediaListCollectionMediaListCollectionuser.fromJson(
              (l$user as Map<String, dynamic>)),
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaListCollectionMediaListCollectionlists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextChunk;

  final QueryMediaListCollectionMediaListCollectionuser? user;

  final List<QueryMediaListCollectionMediaListCollectionlists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextChunk = hasNextChunk;
    _resultData['hasNextChunk'] = l$hasNextChunk;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextChunk = hasNextChunk;
    final l$user = user;
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextChunk,
      l$user,
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaListCollectionMediaListCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextChunk = hasNextChunk;
    final lOther$hasNextChunk = other.hasNextChunk;
    if (l$hasNextChunk != lOther$hasNextChunk) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollection
    on QueryMediaListCollectionMediaListCollection {
  CopyWithQueryMediaListCollectionMediaListCollection<
          QueryMediaListCollectionMediaListCollection>
      get copyWith => CopyWithQueryMediaListCollectionMediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollection<TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollection(
    QueryMediaListCollectionMediaListCollection instance,
    TRes Function(QueryMediaListCollectionMediaListCollection) then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollection;

  factory CopyWithQueryMediaListCollectionMediaListCollection.stub(TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollection;

  TRes call({
    bool? hasNextChunk,
    QueryMediaListCollectionMediaListCollectionuser? user,
    List<QueryMediaListCollectionMediaListCollectionlists?>? lists,
    String? $__typename,
  });
  CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> get user;
  TRes lists(
      Iterable<QueryMediaListCollectionMediaListCollectionlists?>? Function(
              Iterable<
                  CopyWithQueryMediaListCollectionMediaListCollectionlists<
                      QueryMediaListCollectionMediaListCollectionlists>?>?)
          _fn);
}

class _CopyWithImplQueryMediaListCollectionMediaListCollection<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollection<TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollection(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollection _instance;

  final TRes Function(QueryMediaListCollectionMediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextChunk = _undefined,
    Object? user = _undefined,
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollection(
        hasNextChunk: hasNextChunk == _undefined
            ? _instance.hasNextChunk
            : (hasNextChunk as bool?),
        user: user == _undefined
            ? _instance.user
            : (user as QueryMediaListCollectionMediaListCollectionuser?),
        lists: lists == _undefined
            ? _instance.lists
            : (lists
                as List<QueryMediaListCollectionMediaListCollectionlists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionuser.stub(
            _then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionuser(
            local$user, (e) => call(user: e));
  }

  TRes lists(
          Iterable<QueryMediaListCollectionMediaListCollectionlists?>? Function(
                  Iterable<
                      CopyWithQueryMediaListCollectionMediaListCollectionlists<
                          QueryMediaListCollectionMediaListCollectionlists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWithQueryMediaListCollectionMediaListCollectionlists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollection<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollection<TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollection(this._res);

  TRes _res;

  call({
    bool? hasNextChunk,
    QueryMediaListCollectionMediaListCollectionuser? user,
    List<QueryMediaListCollectionMediaListCollectionlists?>? lists,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> get user =>
      CopyWithQueryMediaListCollectionMediaListCollectionuser.stub(_res);

  lists(_fn) => _res;
}

class QueryMediaListCollectionMediaListCollectionuser {
  QueryMediaListCollectionMediaListCollectionuser({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory QueryMediaListCollectionMediaListCollectionuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionuser(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaListCollectionMediaListCollectionuser ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionuser
    on QueryMediaListCollectionMediaListCollectionuser {
  CopyWithQueryMediaListCollectionMediaListCollectionuser<
          QueryMediaListCollectionMediaListCollectionuser>
      get copyWith => CopyWithQueryMediaListCollectionMediaListCollectionuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionuser(
    QueryMediaListCollectionMediaListCollectionuser instance,
    TRes Function(QueryMediaListCollectionMediaListCollectionuser) then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionuser;

  factory CopyWithQueryMediaListCollectionMediaListCollectionuser.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionuser;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionuser<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionuser(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionuser _instance;

  final TRes Function(QueryMediaListCollectionMediaListCollectionuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionuser<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollectionuser<TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionuser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaListCollectionMediaListCollectionlists {
  QueryMediaListCollectionMediaListCollectionlists({
    this.name,
    this.isCustomList,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory QueryMediaListCollectionMediaListCollectionlists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isCustomList = json['isCustomList'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlists(
      name: (l$name as String?),
      isCustomList: (l$isCustomList as bool?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaListCollectionMediaListCollectionlistsentries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final EnumMediaListStatus? status;

  final List<QueryMediaListCollectionMediaListCollectionlistsentries?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isCustomList = isCustomList;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isCustomList,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaListCollectionMediaListCollectionlists ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlists
    on QueryMediaListCollectionMediaListCollectionlists {
  CopyWithQueryMediaListCollectionMediaListCollectionlists<
          QueryMediaListCollectionMediaListCollectionlists>
      get copyWith => CopyWithQueryMediaListCollectionMediaListCollectionlists(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlists<TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlists(
    QueryMediaListCollectionMediaListCollectionlists instance,
    TRes Function(QueryMediaListCollectionMediaListCollectionlists) then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlists;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlists.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlists;

  TRes call({
    String? name,
    bool? isCustomList,
    EnumMediaListStatus? status,
    List<QueryMediaListCollectionMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<QueryMediaListCollectionMediaListCollectionlistsentries?>? Function(
              Iterable<
                  CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<
                      QueryMediaListCollectionMediaListCollectionlistsentries>?>?)
          _fn);
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlists<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollectionlists<TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlists(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlists _instance;

  final TRes Function(QueryMediaListCollectionMediaListCollectionlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isCustomList = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlists(
        name: name == _undefined ? _instance.name : (name as String?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<
                QueryMediaListCollectionMediaListCollectionlistsentries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<QueryMediaListCollectionMediaListCollectionlistsentries?>? Function(
                  Iterable<
                      CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<
                          QueryMediaListCollectionMediaListCollectionlistsentries>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWithQueryMediaListCollectionMediaListCollectionlistsentries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlists<TRes>
    implements CopyWithQueryMediaListCollectionMediaListCollectionlists<TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlists(this._res);

  TRes _res;

  call({
    String? name,
    bool? isCustomList,
    EnumMediaListStatus? status,
    List<QueryMediaListCollectionMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class QueryMediaListCollectionMediaListCollectionlistsentries
    implements FragmentMediaList {
  QueryMediaListCollectionMediaListCollectionlistsentries({
    required this.id,
    required this.userId,
    this.media,
    this.status,
    this.progress,
    this.progressVolumes,
    this.score,
    this.repeat,
    this.private,
    this.notes,
    this.hiddenFromStatusLists,
    this.startedAt,
    this.completedAt,
    this.priority,
    this.customLists,
    this.updatedAt,
    this.createdAt,
    this.$__typename = 'MediaList',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentries.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$media = json['media'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$score = json['score'];
    final l$repeat = json['repeat'];
    final l$private = json['private'];
    final l$notes = json['notes'];
    final l$hiddenFromStatusLists = json['hiddenFromStatusLists'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$priority = json['priority'];
    final l$customLists = json['customLists'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentries(
      id: (l$id as int),
      userId: (l$userId as int),
      media: l$media == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriesmedia
              .fromJson((l$media as Map<String, dynamic>)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      score: (l$score as num?)?.toDouble(),
      repeat: (l$repeat as int?),
      private: (l$private as bool?),
      notes: (l$notes as String?),
      hiddenFromStatusLists: (l$hiddenFromStatusLists as bool?),
      startedAt: l$startedAt == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
              .fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
              .fromJson((l$completedAt as Map<String, dynamic>)),
      priority: (l$priority as int?),
      customLists: (l$customLists as Map<String, dynamic>?),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final QueryMediaListCollectionMediaListCollectionlistsentriesmedia? media;

  final EnumMediaListStatus? status;

  final int? progress;

  final int? progressVolumes;

  final double? score;

  final int? repeat;

  final bool? private;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt?
      startedAt;

  final QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt?
      completedAt;

  final int? priority;

  final Map<String, dynamic>? customLists;

  final int? updatedAt;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$repeat = repeat;
    _resultData['repeat'] = l$repeat;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    _resultData['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$media = media;
    final l$status = status;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$score = score;
    final l$repeat = repeat;
    final l$private = private;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$priority = priority;
    final l$customLists = customLists;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$media,
      l$status,
      l$progress,
      l$progressVolumes,
      l$score,
      l$repeat,
      l$private,
      l$notes,
      l$hiddenFromStatusLists,
      l$startedAt,
      l$completedAt,
      l$priority,
      l$customLists,
      l$updatedAt,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaListCollectionMediaListCollectionlistsentries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentries
    on QueryMediaListCollectionMediaListCollectionlistsentries {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<
          QueryMediaListCollectionMediaListCollectionlistsentries>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentries(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentries(
    QueryMediaListCollectionMediaListCollectionlistsentries instance,
    TRes Function(QueryMediaListCollectionMediaListCollectionlistsentries) then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentries;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentries.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentries;

  TRes call({
    int? id,
    int? userId,
    QueryMediaListCollectionMediaListCollectionlistsentriesmedia? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt? startedAt,
    QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt?
        completedAt,
    int? priority,
    Map<String, dynamic>? customLists,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<TRes>
      get media;
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<TRes>
      get startedAt;
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
      TRes> get completedAt;
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentries<TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentries(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentries _instance;

  final TRes Function(QueryMediaListCollectionMediaListCollectionlistsentries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? media = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? score = _undefined,
    Object? repeat = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? priority = _undefined,
    Object? customLists = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlistsentries(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryMediaListCollectionMediaListCollectionlistsentriesmedia?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        score: score == _undefined ? _instance.score : (score as double?),
        repeat: repeat == _undefined ? _instance.repeat : (repeat as int?),
        private: private == _undefined ? _instance.private : (private as bool?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        hiddenFromStatusLists: hiddenFromStatusLists == _undefined
            ? _instance.hiddenFromStatusLists
            : (hiddenFromStatusLists as bool?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt
                as QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt
                as QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt?),
        priority:
            priority == _undefined ? _instance.priority : (priority as int?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as Map<String, dynamic>?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia(
            local$media, (e) => call(media: e));
  }

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<TRes>
      get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
      TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentries<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentries<TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentries(
      this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    QueryMediaListCollectionMediaListCollectionlistsentriesmedia? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt? startedAt,
    QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt?
        completedAt,
    int? priority,
    Map<String, dynamic>? customLists,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<TRes>
      get media =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia
              .stub(_res);

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<TRes>
      get startedAt =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
              .stub(_res);

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
          TRes>
      get completedAt =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
              .stub(_res);
}

class QueryMediaListCollectionMediaListCollectionlistsentriesmedia
    implements FragmentMediaListmedia, FragmentMediaMin {
  QueryMediaListCollectionMediaListCollectionlistsentriesmedia({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.episodes,
    this.chapters,
    this.title,
    this.coverImage,
    this.bannerImage,
    this.$__typename = 'Media',
    required this.isFavourite,
    this.nextAiringEpisode,
    this.genres,
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriesmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    final l$isFavourite = json['isFavourite'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$genres = json['genres'];
    return QueryMediaListCollectionMediaListCollectionlistsentriesmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
      isFavourite: (l$isFavourite as bool),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
              .fromJson((l$nextAiringEpisode as Map<String, dynamic>)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final int? episodes;

  final int? chapters;

  final QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle?
      title;

  final QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage?
      coverImage;

  final String? bannerImage;

  final String $__typename;

  final bool isFavourite;

  final QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode?
      nextAiringEpisode;

  final List<String?>? genres;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJsonEnumMediaFormat(l$format);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaStatus(l$status);
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    final l$isFavourite = isFavourite;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$genres = genres;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$episodes,
      l$chapters,
      l$title,
      l$coverImage,
      l$bannerImage,
      l$$__typename,
      l$isFavourite,
      l$nextAiringEpisode,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriesmedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriesmedia
    on QueryMediaListCollectionMediaListCollectionlistsentriesmedia {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
          QueryMediaListCollectionMediaListCollectionlistsentriesmedia>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia(
    QueryMediaListCollectionMediaListCollectionlistsentriesmedia instance,
    TRes Function(QueryMediaListCollectionMediaListCollectionlistsentriesmedia)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle? title,
    QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage?
        coverImage,
    String? bannerImage,
    String? $__typename,
    bool? isFavourite,
    QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode?
        nextAiringEpisode,
    List<String?>? genres,
  });
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
      TRes> get title;
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
      TRes> get coverImage;
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
      TRes> get nextAiringEpisode;
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriesmedia _instance;

  final TRes Function(
      QueryMediaListCollectionMediaListCollectionlistsentriesmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
    Object? isFavourite = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? genres = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlistsentriesmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode
                as QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
      ));

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
      TRes> get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
            .stub(_then(_instance))
        : CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedia<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedia(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle? title,
    QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage?
        coverImage,
    String? bannerImage,
    String? $__typename,
    bool? isFavourite,
    QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode?
        nextAiringEpisode,
    List<String?>? genres,
  }) =>
      _res;

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
          TRes>
      get title =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
              .stub(_res);

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
              .stub(_res);

  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
          TRes>
      get nextAiringEpisode =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
              .stub(_res);
}

class QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
    implements FragmentMediaListmediatitle, FragmentMediaMintitle {
  QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
      userPreferred: (l$userPreferred as String?),
      romaji: (l$romaji as String?),
      english: (l$english as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? romaji;

  final String? english;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$romaji = romaji;
    final l$english = english;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$romaji,
      l$english,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
    on QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
          QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
    QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle instance,
    TRes Function(
            QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle
      _instance;

  final TRes Function(
      QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
    implements FragmentMediaListmediacoverImage, FragmentMediaMincoverImage {
  QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
      extraLarge: (l$extraLarge as String?),
      large: (l$large as String?),
      medium: (l$medium as String?),
      color: (l$color as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String? large;

  final String? medium;

  final String? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$large = large;
    final l$medium = medium;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$large,
      l$medium,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
    on QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
          QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
    QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
        instance,
    TRes Function(
            QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage
      _instance;

  final TRes Function(
          QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        color: color == _undefined ? _instance.color : (color as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
    implements FragmentMediaListmedianextAiringEpisode {
  QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode({
    required this.id,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    required this.mediaId,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$mediaId = json['mediaId'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
      id: (l$id as int),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      mediaId: (l$mediaId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final int mediaId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$mediaId = mediaId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$mediaId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
    on QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
          QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
    QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
        instance,
    TRes Function(
            QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode;

  TRes call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    int? mediaId,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode
      _instance;

  final TRes Function(
          QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? mediaId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesmedianextAiringEpisode(
      this._res);

  TRes _res;

  call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    int? mediaId,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
    implements FragmentMediaListstartedAt {
  QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
    on QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
          QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
    QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt instance,
    TRes Function(
            QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt
      _instance;

  final TRes Function(
      QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriesstartedAt(
      this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
    implements FragmentMediaListcompletedAt {
  QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtensionQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
    on QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt {
  CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
          QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt>
      get copyWith =>
          CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
    TRes> {
  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
    QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt instance,
    TRes Function(
            QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt)
        then,
  ) = _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt;

  factory CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
            TRes> {
  _CopyWithImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
    this._instance,
    this._then,
  );

  final QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt
      _instance;

  final TRes Function(
      QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
        TRes>
    implements
        CopyWithQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt<
            TRes> {
  _CopyWithStubImplQueryMediaListCollectionMediaListCollectionlistsentriescompletedAt(
      this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryMediaList {
  factory VariablesQueryMediaList({
    int? mediaListId,
    int? userId,
    int? mediaId,
    String? userName,
  }) =>
      VariablesQueryMediaList._({
        if (mediaListId != null) r'mediaListId': mediaListId,
        if (userId != null) r'userId': userId,
        if (mediaId != null) r'mediaId': mediaId,
        if (userName != null) r'userName': userName,
      });

  VariablesQueryMediaList._(this._$data);

  factory VariablesQueryMediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaListId')) {
      final l$mediaListId = data['mediaListId'];
      result$data['mediaListId'] = (l$mediaListId as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    return VariablesQueryMediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaListId => (_$data['mediaListId'] as int?);

  int? get userId => (_$data['userId'] as int?);

  int? get mediaId => (_$data['mediaId'] as int?);

  String? get userName => (_$data['userName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaListId')) {
      final l$mediaListId = mediaListId;
      result$data['mediaListId'] = l$mediaListId;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    return result$data;
  }

  CopyWithVariablesQueryMediaList<VariablesQueryMediaList> get copyWith =>
      CopyWithVariablesQueryMediaList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryMediaList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaListId = mediaListId;
    final lOther$mediaListId = other.mediaListId;
    if (_$data.containsKey('mediaListId') !=
        other._$data.containsKey('mediaListId')) {
      return false;
    }
    if (l$mediaListId != lOther$mediaListId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaListId = mediaListId;
    final l$userId = userId;
    final l$mediaId = mediaId;
    final l$userName = userName;
    return Object.hashAll([
      _$data.containsKey('mediaListId') ? l$mediaListId : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('userName') ? l$userName : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryMediaList<TRes> {
  factory CopyWithVariablesQueryMediaList(
    VariablesQueryMediaList instance,
    TRes Function(VariablesQueryMediaList) then,
  ) = _CopyWithImplVariablesQueryMediaList;

  factory CopyWithVariablesQueryMediaList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaList;

  TRes call({
    int? mediaListId,
    int? userId,
    int? mediaId,
    String? userName,
  });
}

class _CopyWithImplVariablesQueryMediaList<TRes>
    implements CopyWithVariablesQueryMediaList<TRes> {
  _CopyWithImplVariablesQueryMediaList(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaList _instance;

  final TRes Function(VariablesQueryMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaListId = _undefined,
    Object? userId = _undefined,
    Object? mediaId = _undefined,
    Object? userName = _undefined,
  }) =>
      _then(VariablesQueryMediaList._({
        ..._instance._$data,
        if (mediaListId != _undefined) 'mediaListId': (mediaListId as int?),
        if (userId != _undefined) 'userId': (userId as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (userName != _undefined) 'userName': (userName as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaList<TRes>
    implements CopyWithVariablesQueryMediaList<TRes> {
  _CopyWithStubImplVariablesQueryMediaList(this._res);

  TRes _res;

  call({
    int? mediaListId,
    int? userId,
    int? mediaId,
    String? userName,
  }) =>
      _res;
}

class QueryMediaList {
  QueryMediaList({
    this.MediaList,
    this.$__typename = 'Query',
  });

  factory QueryMediaList.fromJson(Map<String, dynamic> json) {
    final l$MediaList = json['MediaList'];
    final l$$__typename = json['__typename'];
    return QueryMediaList(
      MediaList: l$MediaList == null
          ? null
          : FragmentMediaList.fromJson((l$MediaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentMediaList? MediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaList = MediaList;
    _resultData['MediaList'] = l$MediaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaList = MediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryMediaList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaList = MediaList;
    final lOther$MediaList = other.MediaList;
    if (l$MediaList != lOther$MediaList) {
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

extension UtilityExtensionQueryMediaList on QueryMediaList {
  CopyWithQueryMediaList<QueryMediaList> get copyWith => CopyWithQueryMediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaList<TRes> {
  factory CopyWithQueryMediaList(
    QueryMediaList instance,
    TRes Function(QueryMediaList) then,
  ) = _CopyWithImplQueryMediaList;

  factory CopyWithQueryMediaList.stub(TRes res) =
      _CopyWithStubImplQueryMediaList;

  TRes call({
    FragmentMediaList? MediaList,
    String? $__typename,
  });
  CopyWithFragmentMediaList<TRes> get MediaList;
}

class _CopyWithImplQueryMediaList<TRes>
    implements CopyWithQueryMediaList<TRes> {
  _CopyWithImplQueryMediaList(
    this._instance,
    this._then,
  );

  final QueryMediaList _instance;

  final TRes Function(QueryMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaList(
        MediaList: MediaList == _undefined
            ? _instance.MediaList
            : (MediaList as FragmentMediaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaList<TRes> get MediaList {
    final local$MediaList = _instance.MediaList;
    return local$MediaList == null
        ? CopyWithFragmentMediaList.stub(_then(_instance))
        : CopyWithFragmentMediaList(local$MediaList, (e) => call(MediaList: e));
  }
}

class _CopyWithStubImplQueryMediaList<TRes>
    implements CopyWithQueryMediaList<TRes> {
  _CopyWithStubImplQueryMediaList(this._res);

  TRes _res;

  call({
    FragmentMediaList? MediaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaList<TRes> get MediaList =>
      CopyWithFragmentMediaList.stub(_res);
}

const documentNodeQueryMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaListId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaListId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userName'),
            value: VariableNode(name: NameNode(value: 'userName')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaList'),
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
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaMin,
]);

class VariablesQueryPaginatedMediaList {
  factory VariablesQueryPaginatedMediaList({
    int? page,
    int? perPage,
    int? userId,
    String? userName,
    EnumMediaType? type,
    EnumMediaListStatus? status,
    List<EnumMediaListSort?>? sort,
  }) =>
      VariablesQueryPaginatedMediaList._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (userId != null) r'userId': userId,
        if (userName != null) r'userName': userName,
        if (type != null) r'type': type,
        if (status != null) r'status': status,
        if (sort != null) r'sort': sort,
      });

  VariablesQueryPaginatedMediaList._(this._$data);

  factory VariablesQueryPaginatedMediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumMediaType((l$type as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJsonEnumMediaListSort((e as String)))
          .toList();
    }
    return VariablesQueryPaginatedMediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  int? get userId => (_$data['userId'] as int?);

  String? get userName => (_$data['userName'] as String?);

  EnumMediaType? get type => (_$data['type'] as EnumMediaType?);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  List<EnumMediaListSort?>? get sort =>
      (_$data['sort'] as List<EnumMediaListSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumMediaListSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWithVariablesQueryPaginatedMediaList<VariablesQueryPaginatedMediaList>
      get copyWith => CopyWithVariablesQueryPaginatedMediaList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryPaginatedMediaList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$userId = userId;
    final l$userName = userName;
    final l$type = type;
    final l$status = status;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryPaginatedMediaList<TRes> {
  factory CopyWithVariablesQueryPaginatedMediaList(
    VariablesQueryPaginatedMediaList instance,
    TRes Function(VariablesQueryPaginatedMediaList) then,
  ) = _CopyWithImplVariablesQueryPaginatedMediaList;

  factory CopyWithVariablesQueryPaginatedMediaList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryPaginatedMediaList;

  TRes call({
    int? page,
    int? perPage,
    int? userId,
    String? userName,
    EnumMediaType? type,
    EnumMediaListStatus? status,
    List<EnumMediaListSort?>? sort,
  });
}

class _CopyWithImplVariablesQueryPaginatedMediaList<TRes>
    implements CopyWithVariablesQueryPaginatedMediaList<TRes> {
  _CopyWithImplVariablesQueryPaginatedMediaList(
    this._instance,
    this._then,
  );

  final VariablesQueryPaginatedMediaList _instance;

  final TRes Function(VariablesQueryPaginatedMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? userId = _undefined,
    Object? userName = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(VariablesQueryPaginatedMediaList._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (userId != _undefined) 'userId': (userId as int?),
        if (userName != _undefined) 'userName': (userName as String?),
        if (type != _undefined) 'type': (type as EnumMediaType?),
        if (status != _undefined) 'status': (status as EnumMediaListStatus?),
        if (sort != _undefined) 'sort': (sort as List<EnumMediaListSort?>?),
      }));
}

class _CopyWithStubImplVariablesQueryPaginatedMediaList<TRes>
    implements CopyWithVariablesQueryPaginatedMediaList<TRes> {
  _CopyWithStubImplVariablesQueryPaginatedMediaList(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    int? userId,
    String? userName,
    EnumMediaType? type,
    EnumMediaListStatus? status,
    List<EnumMediaListSort?>? sort,
  }) =>
      _res;
}

class QueryPaginatedMediaList {
  QueryPaginatedMediaList({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryPaginatedMediaList.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMediaList(
      Page: l$Page == null
          ? null
          : QueryPaginatedMediaListPage.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedMediaListPage? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryPaginatedMediaList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
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

extension UtilityExtensionQueryPaginatedMediaList on QueryPaginatedMediaList {
  CopyWithQueryPaginatedMediaList<QueryPaginatedMediaList> get copyWith =>
      CopyWithQueryPaginatedMediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPaginatedMediaList<TRes> {
  factory CopyWithQueryPaginatedMediaList(
    QueryPaginatedMediaList instance,
    TRes Function(QueryPaginatedMediaList) then,
  ) = _CopyWithImplQueryPaginatedMediaList;

  factory CopyWithQueryPaginatedMediaList.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMediaList;

  TRes call({
    QueryPaginatedMediaListPage? Page,
    String? $__typename,
  });
  CopyWithQueryPaginatedMediaListPage<TRes> get Page;
}

class _CopyWithImplQueryPaginatedMediaList<TRes>
    implements CopyWithQueryPaginatedMediaList<TRes> {
  _CopyWithImplQueryPaginatedMediaList(
    this._instance,
    this._then,
  );

  final QueryPaginatedMediaList _instance;

  final TRes Function(QueryPaginatedMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMediaList(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryPaginatedMediaListPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedMediaListPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryPaginatedMediaListPage.stub(_then(_instance))
        : CopyWithQueryPaginatedMediaListPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryPaginatedMediaList<TRes>
    implements CopyWithQueryPaginatedMediaList<TRes> {
  _CopyWithStubImplQueryPaginatedMediaList(this._res);

  TRes _res;

  call({
    QueryPaginatedMediaListPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedMediaListPage<TRes> get Page =>
      CopyWithQueryPaginatedMediaListPage.stub(_res);
}

const documentNodeQueryPaginatedMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaginatedMediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaListSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC'))),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'perPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastPage'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mediaList'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'userName'),
                value: VariableNode(name: NameNode(value: 'userName')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status'),
                value: VariableNode(name: NameNode(value: 'status')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaList'),
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
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaMin,
]);

class QueryPaginatedMediaListPage {
  QueryPaginatedMediaListPage({
    this.pageInfo,
    this.mediaList,
    this.$__typename = 'Page',
  });

  factory QueryPaginatedMediaListPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$mediaList = json['mediaList'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMediaListPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryPaginatedMediaListPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      mediaList: (l$mediaList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentMediaList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedMediaListPagepageInfo? pageInfo;

  final List<FragmentMediaList?>? mediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$mediaList = mediaList;
    _resultData['mediaList'] = l$mediaList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$mediaList = mediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$mediaList == null ? null : Object.hashAll(l$mediaList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryPaginatedMediaListPage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$mediaList = mediaList;
    final lOther$mediaList = other.mediaList;
    if (l$mediaList != null && lOther$mediaList != null) {
      if (l$mediaList.length != lOther$mediaList.length) {
        return false;
      }
      for (int i = 0; i < l$mediaList.length; i++) {
        final l$mediaList$entry = l$mediaList[i];
        final lOther$mediaList$entry = lOther$mediaList[i];
        if (l$mediaList$entry != lOther$mediaList$entry) {
          return false;
        }
      }
    } else if (l$mediaList != lOther$mediaList) {
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

extension UtilityExtensionQueryPaginatedMediaListPage
    on QueryPaginatedMediaListPage {
  CopyWithQueryPaginatedMediaListPage<QueryPaginatedMediaListPage>
      get copyWith => CopyWithQueryPaginatedMediaListPage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPaginatedMediaListPage<TRes> {
  factory CopyWithQueryPaginatedMediaListPage(
    QueryPaginatedMediaListPage instance,
    TRes Function(QueryPaginatedMediaListPage) then,
  ) = _CopyWithImplQueryPaginatedMediaListPage;

  factory CopyWithQueryPaginatedMediaListPage.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMediaListPage;

  TRes call({
    QueryPaginatedMediaListPagepageInfo? pageInfo,
    List<FragmentMediaList?>? mediaList,
    String? $__typename,
  });
  CopyWithQueryPaginatedMediaListPagepageInfo<TRes> get pageInfo;
  TRes mediaList(
      Iterable<FragmentMediaList?>? Function(
              Iterable<CopyWithFragmentMediaList<FragmentMediaList>?>?)
          _fn);
}

class _CopyWithImplQueryPaginatedMediaListPage<TRes>
    implements CopyWithQueryPaginatedMediaListPage<TRes> {
  _CopyWithImplQueryPaginatedMediaListPage(
    this._instance,
    this._then,
  );

  final QueryPaginatedMediaListPage _instance;

  final TRes Function(QueryPaginatedMediaListPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? mediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMediaListPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryPaginatedMediaListPagepageInfo?),
        mediaList: mediaList == _undefined
            ? _instance.mediaList
            : (mediaList as List<FragmentMediaList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedMediaListPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryPaginatedMediaListPagepageInfo.stub(_then(_instance))
        : CopyWithQueryPaginatedMediaListPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes mediaList(
          Iterable<FragmentMediaList?>? Function(
                  Iterable<CopyWithFragmentMediaList<FragmentMediaList>?>?)
              _fn) =>
      call(
          mediaList: _fn(_instance.mediaList?.map((e) => e == null
              ? null
              : CopyWithFragmentMediaList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryPaginatedMediaListPage<TRes>
    implements CopyWithQueryPaginatedMediaListPage<TRes> {
  _CopyWithStubImplQueryPaginatedMediaListPage(this._res);

  TRes _res;

  call({
    QueryPaginatedMediaListPagepageInfo? pageInfo,
    List<FragmentMediaList?>? mediaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedMediaListPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryPaginatedMediaListPagepageInfo.stub(_res);

  mediaList(_fn) => _res;
}

class QueryPaginatedMediaListPagepageInfo {
  QueryPaginatedMediaListPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryPaginatedMediaListPagepageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMediaListPagepageInfo(
      total: (l$total as int?),
      perPage: (l$perPage as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? perPage;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$perPage = perPage;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$perPage,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryPaginatedMediaListPagepageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtensionQueryPaginatedMediaListPagepageInfo
    on QueryPaginatedMediaListPagepageInfo {
  CopyWithQueryPaginatedMediaListPagepageInfo<
          QueryPaginatedMediaListPagepageInfo>
      get copyWith => CopyWithQueryPaginatedMediaListPagepageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPaginatedMediaListPagepageInfo<TRes> {
  factory CopyWithQueryPaginatedMediaListPagepageInfo(
    QueryPaginatedMediaListPagepageInfo instance,
    TRes Function(QueryPaginatedMediaListPagepageInfo) then,
  ) = _CopyWithImplQueryPaginatedMediaListPagepageInfo;

  factory CopyWithQueryPaginatedMediaListPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMediaListPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryPaginatedMediaListPagepageInfo<TRes>
    implements CopyWithQueryPaginatedMediaListPagepageInfo<TRes> {
  _CopyWithImplQueryPaginatedMediaListPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryPaginatedMediaListPagepageInfo _instance;

  final TRes Function(QueryPaginatedMediaListPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMediaListPagepageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryPaginatedMediaListPagepageInfo<TRes>
    implements CopyWithQueryPaginatedMediaListPagepageInfo<TRes> {
  _CopyWithStubImplQueryPaginatedMediaListPagepageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class VariablesMutationSaveMediaListEntry {
  factory VariablesMutationSaveMediaListEntry({
    int? mediaListId,
    int? progress,
    int? mediaId,
    EnumMediaListStatus? status,
    double? score,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    InputFuzzyDateInput? startedAt,
    InputFuzzyDateInput? completedAt,
  }) =>
      VariablesMutationSaveMediaListEntry._({
        if (mediaListId != null) r'mediaListId': mediaListId,
        if (progress != null) r'progress': progress,
        if (mediaId != null) r'mediaId': mediaId,
        if (status != null) r'status': status,
        if (score != null) r'score': score,
        if (progressVolumes != null) r'progressVolumes': progressVolumes,
        if (repeat != null) r'repeat': repeat,
        if (private != null) r'private': private,
        if (notes != null) r'notes': notes,
        if (startedAt != null) r'startedAt': startedAt,
        if (completedAt != null) r'completedAt': completedAt,
      });

  VariablesMutationSaveMediaListEntry._(this._$data);

  factory VariablesMutationSaveMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaListId')) {
      final l$mediaListId = data['mediaListId'];
      result$data['mediaListId'] = (l$mediaListId as int?);
    }
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String));
    }
    if (data.containsKey('score')) {
      final l$score = data['score'];
      result$data['score'] = (l$score as num?)?.toDouble();
    }
    if (data.containsKey('progressVolumes')) {
      final l$progressVolumes = data['progressVolumes'];
      result$data['progressVolumes'] = (l$progressVolumes as int?);
    }
    if (data.containsKey('repeat')) {
      final l$repeat = data['repeat'];
      result$data['repeat'] = (l$repeat as int?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = l$startedAt == null
          ? null
          : InputFuzzyDateInput.fromJson((l$startedAt as Map<String, dynamic>));
    }
    if (data.containsKey('completedAt')) {
      final l$completedAt = data['completedAt'];
      result$data['completedAt'] = l$completedAt == null
          ? null
          : InputFuzzyDateInput.fromJson(
              (l$completedAt as Map<String, dynamic>));
    }
    return VariablesMutationSaveMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaListId => (_$data['mediaListId'] as int?);

  int? get progress => (_$data['progress'] as int?);

  int? get mediaId => (_$data['mediaId'] as int?);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  double? get score => (_$data['score'] as double?);

  int? get progressVolumes => (_$data['progressVolumes'] as int?);

  int? get repeat => (_$data['repeat'] as int?);

  bool? get private => (_$data['private'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  InputFuzzyDateInput? get startedAt =>
      (_$data['startedAt'] as InputFuzzyDateInput?);

  InputFuzzyDateInput? get completedAt =>
      (_$data['completedAt'] as InputFuzzyDateInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaListId')) {
      final l$mediaListId = mediaListId;
      result$data['mediaListId'] = l$mediaListId;
    }
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    }
    if (_$data.containsKey('score')) {
      final l$score = score;
      result$data['score'] = l$score;
    }
    if (_$data.containsKey('progressVolumes')) {
      final l$progressVolumes = progressVolumes;
      result$data['progressVolumes'] = l$progressVolumes;
    }
    if (_$data.containsKey('repeat')) {
      final l$repeat = repeat;
      result$data['repeat'] = l$repeat;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt?.toJson();
    }
    if (_$data.containsKey('completedAt')) {
      final l$completedAt = completedAt;
      result$data['completedAt'] = l$completedAt?.toJson();
    }
    return result$data;
  }

  CopyWithVariablesMutationSaveMediaListEntry<
          VariablesMutationSaveMediaListEntry>
      get copyWith => CopyWithVariablesMutationSaveMediaListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesMutationSaveMediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaListId = mediaListId;
    final lOther$mediaListId = other.mediaListId;
    if (_$data.containsKey('mediaListId') !=
        other._$data.containsKey('mediaListId')) {
      return false;
    }
    if (l$mediaListId != lOther$mediaListId) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (_$data.containsKey('score') != other._$data.containsKey('score')) {
      return false;
    }
    if (l$score != lOther$score) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (_$data.containsKey('progressVolumes') !=
        other._$data.containsKey('progressVolumes')) {
      return false;
    }
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (_$data.containsKey('repeat') != other._$data.containsKey('repeat')) {
      return false;
    }
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (_$data.containsKey('completedAt') !=
        other._$data.containsKey('completedAt')) {
      return false;
    }
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaListId = mediaListId;
    final l$progress = progress;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$score = score;
    final l$progressVolumes = progressVolumes;
    final l$repeat = repeat;
    final l$private = private;
    final l$notes = notes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    return Object.hashAll([
      _$data.containsKey('mediaListId') ? l$mediaListId : const {},
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('score') ? l$score : const {},
      _$data.containsKey('progressVolumes') ? l$progressVolumes : const {},
      _$data.containsKey('repeat') ? l$repeat : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('completedAt') ? l$completedAt : const {},
    ]);
  }
}

abstract class CopyWithVariablesMutationSaveMediaListEntry<TRes> {
  factory CopyWithVariablesMutationSaveMediaListEntry(
    VariablesMutationSaveMediaListEntry instance,
    TRes Function(VariablesMutationSaveMediaListEntry) then,
  ) = _CopyWithImplVariablesMutationSaveMediaListEntry;

  factory CopyWithVariablesMutationSaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImplVariablesMutationSaveMediaListEntry;

  TRes call({
    int? mediaListId,
    int? progress,
    int? mediaId,
    EnumMediaListStatus? status,
    double? score,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    InputFuzzyDateInput? startedAt,
    InputFuzzyDateInput? completedAt,
  });
}

class _CopyWithImplVariablesMutationSaveMediaListEntry<TRes>
    implements CopyWithVariablesMutationSaveMediaListEntry<TRes> {
  _CopyWithImplVariablesMutationSaveMediaListEntry(
    this._instance,
    this._then,
  );

  final VariablesMutationSaveMediaListEntry _instance;

  final TRes Function(VariablesMutationSaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaListId = _undefined,
    Object? progress = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? score = _undefined,
    Object? progressVolumes = _undefined,
    Object? repeat = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
  }) =>
      _then(VariablesMutationSaveMediaListEntry._({
        ..._instance._$data,
        if (mediaListId != _undefined) 'mediaListId': (mediaListId as int?),
        if (progress != _undefined) 'progress': (progress as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (status != _undefined) 'status': (status as EnumMediaListStatus?),
        if (score != _undefined) 'score': (score as double?),
        if (progressVolumes != _undefined)
          'progressVolumes': (progressVolumes as int?),
        if (repeat != _undefined) 'repeat': (repeat as int?),
        if (private != _undefined) 'private': (private as bool?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (startedAt != _undefined)
          'startedAt': (startedAt as InputFuzzyDateInput?),
        if (completedAt != _undefined)
          'completedAt': (completedAt as InputFuzzyDateInput?),
      }));
}

class _CopyWithStubImplVariablesMutationSaveMediaListEntry<TRes>
    implements CopyWithVariablesMutationSaveMediaListEntry<TRes> {
  _CopyWithStubImplVariablesMutationSaveMediaListEntry(this._res);

  TRes _res;

  call({
    int? mediaListId,
    int? progress,
    int? mediaId,
    EnumMediaListStatus? status,
    double? score,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    InputFuzzyDateInput? startedAt,
    InputFuzzyDateInput? completedAt,
  }) =>
      _res;
}

class MutationSaveMediaListEntry {
  MutationSaveMediaListEntry({
    this.SaveMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory MutationSaveMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$SaveMediaListEntry = json['SaveMediaListEntry'];
    final l$$__typename = json['__typename'];
    return MutationSaveMediaListEntry(
      SaveMediaListEntry: l$SaveMediaListEntry == null
          ? null
          : FragmentMediaList.fromJson(
              (l$SaveMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentMediaList? SaveMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveMediaListEntry = SaveMediaListEntry;
    _resultData['SaveMediaListEntry'] = l$SaveMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! MutationSaveMediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final lOther$SaveMediaListEntry = other.SaveMediaListEntry;
    if (l$SaveMediaListEntry != lOther$SaveMediaListEntry) {
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

extension UtilityExtensionMutationSaveMediaListEntry
    on MutationSaveMediaListEntry {
  CopyWithMutationSaveMediaListEntry<MutationSaveMediaListEntry> get copyWith =>
      CopyWithMutationSaveMediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWithMutationSaveMediaListEntry<TRes> {
  factory CopyWithMutationSaveMediaListEntry(
    MutationSaveMediaListEntry instance,
    TRes Function(MutationSaveMediaListEntry) then,
  ) = _CopyWithImplMutationSaveMediaListEntry;

  factory CopyWithMutationSaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImplMutationSaveMediaListEntry;

  TRes call({
    FragmentMediaList? SaveMediaListEntry,
    String? $__typename,
  });
  CopyWithFragmentMediaList<TRes> get SaveMediaListEntry;
}

class _CopyWithImplMutationSaveMediaListEntry<TRes>
    implements CopyWithMutationSaveMediaListEntry<TRes> {
  _CopyWithImplMutationSaveMediaListEntry(
    this._instance,
    this._then,
  );

  final MutationSaveMediaListEntry _instance;

  final TRes Function(MutationSaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationSaveMediaListEntry(
        SaveMediaListEntry: SaveMediaListEntry == _undefined
            ? _instance.SaveMediaListEntry
            : (SaveMediaListEntry as FragmentMediaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaList<TRes> get SaveMediaListEntry {
    final local$SaveMediaListEntry = _instance.SaveMediaListEntry;
    return local$SaveMediaListEntry == null
        ? CopyWithFragmentMediaList.stub(_then(_instance))
        : CopyWithFragmentMediaList(
            local$SaveMediaListEntry, (e) => call(SaveMediaListEntry: e));
  }
}

class _CopyWithStubImplMutationSaveMediaListEntry<TRes>
    implements CopyWithMutationSaveMediaListEntry<TRes> {
  _CopyWithStubImplMutationSaveMediaListEntry(this._res);

  TRes _res;

  call({
    FragmentMediaList? SaveMediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaList<TRes> get SaveMediaListEntry =>
      CopyWithFragmentMediaList.stub(_res);
}

const documentNodeMutationSaveMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveMediaListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaListId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'score')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progressVolumes')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repeat')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'private')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notes')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'completedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaListId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progress'),
            value: VariableNode(name: NameNode(value: 'progress')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'score'),
            value: VariableNode(name: NameNode(value: 'score')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progressVolumes'),
            value: VariableNode(name: NameNode(value: 'progressVolumes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'repeat'),
            value: VariableNode(name: NameNode(value: 'repeat')),
          ),
          ArgumentNode(
            name: NameNode(value: 'private'),
            value: VariableNode(name: NameNode(value: 'private')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notes'),
            value: VariableNode(name: NameNode(value: 'notes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startedAt'),
            value: VariableNode(name: NameNode(value: 'startedAt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'completedAt'),
            value: VariableNode(name: NameNode(value: 'completedAt')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaList'),
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
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaMin,
]);
