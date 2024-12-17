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
    if (!(other is VariablesQueryMediaListCollection) ||
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
    if (!(other is QueryMediaListCollection) ||
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
    if (!(other is QueryMediaListCollectionMediaListCollection) ||
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
    this.$__typename = 'User',
  });

  factory QueryMediaListCollectionMediaListCollectionuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryMediaListCollectionMediaListCollectionuser(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaListCollectionMediaListCollectionuser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaListCollectionMediaListCollectionuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
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
              : FragmentMediaList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final EnumMediaListStatus? status;

  final List<FragmentMediaList?>? entries;

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
    if (!(other is QueryMediaListCollectionMediaListCollectionlists) ||
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
    List<FragmentMediaList?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<FragmentMediaList?>? Function(
              Iterable<CopyWithFragmentMediaList<FragmentMediaList>?>?)
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
            : (entries as List<FragmentMediaList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<FragmentMediaList?>? Function(
                  Iterable<CopyWithFragmentMediaList<FragmentMediaList>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWithFragmentMediaList(
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
    List<FragmentMediaList?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
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
    if (!(other is VariablesQueryMediaList) ||
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
    if (!(other is QueryMediaList) || runtimeType != other.runtimeType) {
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
    if (!(other is VariablesQueryPaginatedMediaList) ||
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
    if (!(other is QueryPaginatedMediaList) ||
        runtimeType != other.runtimeType) {
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
    if (!(other is QueryPaginatedMediaListPage) ||
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
    if (!(other is QueryPaginatedMediaListPagepageInfo) ||
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
    if (!(other is VariablesMutationSaveMediaListEntry) ||
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
    if (!(other is MutationSaveMediaListEntry) ||
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
