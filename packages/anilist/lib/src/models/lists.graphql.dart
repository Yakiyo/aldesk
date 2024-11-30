import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryMediaListCollection {
  factory VariablesQueryMediaListCollection({
    required int userId,
    required EnumMediaType type,
    EnumMediaListStatus? status,
    int? chunk,
    int? perChunk,
    List<EnumMediaListSort?>? sort,
    String? notesLike,
  }) =>
      VariablesQueryMediaListCollection._({
        r'userId': userId,
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
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
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

  int get userId => (_$data['userId'] as int);

  EnumMediaType get type => (_$data['type'] as EnumMediaType);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  int? get chunk => (_$data['chunk'] as int?);

  int? get perChunk => (_$data['perChunk'] as int?);

  List<EnumMediaListSort?>? get sort =>
      (_$data['sort'] as List<EnumMediaListSort?>?);

  String? get notesLike => (_$data['notesLike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
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
    if (l$userId != lOther$userId) {
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
    final l$type = type;
    final l$status = status;
    final l$chunk = chunk;
    final l$perChunk = perChunk;
    final l$sort = sort;
    final l$notesLike = notesLike;
    return Object.hashAll([
      l$userId,
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
    Object? type = _undefined,
    Object? status = _undefined,
    Object? chunk = _undefined,
    Object? perChunk = _undefined,
    Object? sort = _undefined,
    Object? notesLike = _undefined,
  }) =>
      _then(VariablesQueryMediaListCollection._({
        ..._instance._$data,
        if (userId != _undefined && userId != null) 'userId': (userId as int),
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
          isNonNull: true,
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
                    name: NameNode(value: 'MediaListF'),
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
  fragmentDefinitionMediaListF,
  fragmentDefinitionMediaMinF,
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
              : FragmentMediaListF.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final EnumMediaListStatus? status;

  final List<FragmentMediaListF?>? entries;

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
    List<FragmentMediaListF?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<FragmentMediaListF?>? Function(
              Iterable<CopyWithFragmentMediaListF<FragmentMediaListF>?>?)
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
            : (entries as List<FragmentMediaListF?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<FragmentMediaListF?>? Function(
                  Iterable<CopyWithFragmentMediaListF<FragmentMediaListF>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWithFragmentMediaListF(
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
    List<FragmentMediaListF?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class VariablesQueryMediaList {
  factory VariablesQueryMediaList({required int mediaListId}) =>
      VariablesQueryMediaList._({
        r'mediaListId': mediaListId,
      });

  VariablesQueryMediaList._(this._$data);

  factory VariablesQueryMediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaListId = data['mediaListId'];
    result$data['mediaListId'] = (l$mediaListId as int);
    return VariablesQueryMediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int get mediaListId => (_$data['mediaListId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaListId = mediaListId;
    result$data['mediaListId'] = l$mediaListId;
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
    if (l$mediaListId != lOther$mediaListId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaListId = mediaListId;
    return Object.hashAll([l$mediaListId]);
  }
}

abstract class CopyWithVariablesQueryMediaList<TRes> {
  factory CopyWithVariablesQueryMediaList(
    VariablesQueryMediaList instance,
    TRes Function(VariablesQueryMediaList) then,
  ) = _CopyWithImplVariablesQueryMediaList;

  factory CopyWithVariablesQueryMediaList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaList;

  TRes call({int? mediaListId});
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

  TRes call({Object? mediaListId = _undefined}) =>
      _then(VariablesQueryMediaList._({
        ..._instance._$data,
        if (mediaListId != _undefined && mediaListId != null)
          'mediaListId': (mediaListId as int),
      }));
}

class _CopyWithStubImplVariablesQueryMediaList<TRes>
    implements CopyWithVariablesQueryMediaList<TRes> {
  _CopyWithStubImplVariablesQueryMediaList(this._res);

  TRes _res;

  call({int? mediaListId}) => _res;
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
          : FragmentMediaListF.fromJson((l$MediaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentMediaListF? MediaList;

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
    FragmentMediaListF? MediaList,
    String? $__typename,
  });
  CopyWithFragmentMediaListF<TRes> get MediaList;
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
            : (MediaList as FragmentMediaListF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaListF<TRes> get MediaList {
    final local$MediaList = _instance.MediaList;
    return local$MediaList == null
        ? CopyWithFragmentMediaListF.stub(_then(_instance))
        : CopyWithFragmentMediaListF(
            local$MediaList, (e) => call(MediaList: e));
  }
}

class _CopyWithStubImplQueryMediaList<TRes>
    implements CopyWithQueryMediaList<TRes> {
  _CopyWithStubImplQueryMediaList(this._res);

  TRes _res;

  call({
    FragmentMediaListF? MediaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaListF<TRes> get MediaList =>
      CopyWithFragmentMediaListF.stub(_res);
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
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
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
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaListF'),
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
  fragmentDefinitionMediaListF,
  fragmentDefinitionMediaMinF,
]);
