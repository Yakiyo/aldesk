import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryUserList {
  factory VariablesQueryUserList({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  }) =>
      VariablesQueryUserList._({
        if (userId != null) r'userId': userId,
        if (status != null) r'status': status,
        if (mediaType != null) r'mediaType': mediaType,
      });

  VariablesQueryUserList._(this._$data);

  factory VariablesQueryUserList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String));
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJsonEnumMediaType((l$mediaType as String));
    }
    return VariablesQueryUserList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  EnumMediaType? get mediaType => (_$data['mediaType'] as EnumMediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJsonEnumMediaType(l$mediaType);
    }
    return result$data;
  }

  CopyWithVariablesQueryUserList<VariablesQueryUserList> get copyWith =>
      CopyWithVariablesQueryUserList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryUserList) ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$status = status;
    final l$mediaType = mediaType;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUserList<TRes> {
  factory CopyWithVariablesQueryUserList(
    VariablesQueryUserList instance,
    TRes Function(VariablesQueryUserList) then,
  ) = _CopyWithImplVariablesQueryUserList;

  factory CopyWithVariablesQueryUserList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUserList;

  TRes call({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  });
}

class _CopyWithImplVariablesQueryUserList<TRes>
    implements CopyWithVariablesQueryUserList<TRes> {
  _CopyWithImplVariablesQueryUserList(
    this._instance,
    this._then,
  );

  final VariablesQueryUserList _instance;

  final TRes Function(VariablesQueryUserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? status = _undefined,
    Object? mediaType = _undefined,
  }) =>
      _then(VariablesQueryUserList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (status != _undefined) 'status': (status as EnumMediaListStatus?),
        if (mediaType != _undefined) 'mediaType': (mediaType as EnumMediaType?),
      }));
}

class _CopyWithStubImplVariablesQueryUserList<TRes>
    implements CopyWithVariablesQueryUserList<TRes> {
  _CopyWithStubImplVariablesQueryUserList(this._res);

  TRes _res;

  call({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  }) =>
      _res;
}

class QueryUserList {
  QueryUserList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory QueryUserList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return QueryUserList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : QueryUserListMediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserListMediaListCollection? MediaListCollection;

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
    if (!(other is QueryUserList) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryUserList on QueryUserList {
  CopyWithQueryUserList<QueryUserList> get copyWith => CopyWithQueryUserList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserList<TRes> {
  factory CopyWithQueryUserList(
    QueryUserList instance,
    TRes Function(QueryUserList) then,
  ) = _CopyWithImplQueryUserList;

  factory CopyWithQueryUserList.stub(TRes res) = _CopyWithStubImplQueryUserList;

  TRes call({
    QueryUserListMediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImplQueryUserList<TRes> implements CopyWithQueryUserList<TRes> {
  _CopyWithImplQueryUserList(
    this._instance,
    this._then,
  );

  final QueryUserList _instance;

  final TRes Function(QueryUserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as QueryUserListMediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWithQueryUserListMediaListCollection.stub(_then(_instance))
        : CopyWithQueryUserListMediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImplQueryUserList<TRes>
    implements CopyWithQueryUserList<TRes> {
  _CopyWithStubImplQueryUserList(this._res);

  TRes _res;

  call({
    QueryUserListMediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection =>
      CopyWithQueryUserListMediaListCollection.stub(_res);
}

const documentNodeQueryUserList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserList'),
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
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
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
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'mediaType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'progress'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaMinimalF'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'episodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chapters'),
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
  fragmentDefinitionMediaMinimalF,
]);

class QueryUserListMediaListCollection {
  QueryUserListMediaListCollection({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory QueryUserListMediaListCollection.fromJson(Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollection(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryUserListMediaListCollectionlists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryUserListMediaListCollectionlists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollection) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryUserListMediaListCollection
    on QueryUserListMediaListCollection {
  CopyWithQueryUserListMediaListCollection<QueryUserListMediaListCollection>
      get copyWith => CopyWithQueryUserListMediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollection<TRes> {
  factory CopyWithQueryUserListMediaListCollection(
    QueryUserListMediaListCollection instance,
    TRes Function(QueryUserListMediaListCollection) then,
  ) = _CopyWithImplQueryUserListMediaListCollection;

  factory CopyWithQueryUserListMediaListCollection.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollection;

  TRes call({
    List<QueryUserListMediaListCollectionlists?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<QueryUserListMediaListCollectionlists?>? Function(
              Iterable<
                  CopyWithQueryUserListMediaListCollectionlists<
                      QueryUserListMediaListCollectionlists>?>?)
          _fn);
}

class _CopyWithImplQueryUserListMediaListCollection<TRes>
    implements CopyWithQueryUserListMediaListCollection<TRes> {
  _CopyWithImplQueryUserListMediaListCollection(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollection _instance;

  final TRes Function(QueryUserListMediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollection(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<QueryUserListMediaListCollectionlists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lists(
          Iterable<QueryUserListMediaListCollectionlists?>? Function(
                  Iterable<
                      CopyWithQueryUserListMediaListCollectionlists<
                          QueryUserListMediaListCollectionlists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWithQueryUserListMediaListCollectionlists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryUserListMediaListCollection<TRes>
    implements CopyWithQueryUserListMediaListCollection<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollection(this._res);

  TRes _res;

  call({
    List<QueryUserListMediaListCollectionlists?>? lists,
    String? $__typename,
  }) =>
      _res;

  lists(_fn) => _res;
}

class QueryUserListMediaListCollectionlists {
  QueryUserListMediaListCollectionlists({
    this.name,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory QueryUserListMediaListCollectionlists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlists(
      name: (l$name as String?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryUserListMediaListCollectionlistsentries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final EnumMediaListStatus? status;

  final List<QueryUserListMediaListCollectionlistsentries?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
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
    if (!(other is QueryUserListMediaListCollectionlists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtensionQueryUserListMediaListCollectionlists
    on QueryUserListMediaListCollectionlists {
  CopyWithQueryUserListMediaListCollectionlists<
          QueryUserListMediaListCollectionlists>
      get copyWith => CopyWithQueryUserListMediaListCollectionlists(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlists<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlists(
    QueryUserListMediaListCollectionlists instance,
    TRes Function(QueryUserListMediaListCollectionlists) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlists;

  factory CopyWithQueryUserListMediaListCollectionlists.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlists;

  TRes call({
    String? name,
    EnumMediaListStatus? status,
    List<QueryUserListMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<QueryUserListMediaListCollectionlistsentries?>? Function(
              Iterable<
                  CopyWithQueryUserListMediaListCollectionlistsentries<
                      QueryUserListMediaListCollectionlistsentries>?>?)
          _fn);
}

class _CopyWithImplQueryUserListMediaListCollectionlists<TRes>
    implements CopyWithQueryUserListMediaListCollectionlists<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlists(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlists _instance;

  final TRes Function(QueryUserListMediaListCollectionlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlists(
        name: name == _undefined ? _instance.name : (name as String?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<QueryUserListMediaListCollectionlistsentries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<QueryUserListMediaListCollectionlistsentries?>? Function(
                  Iterable<
                      CopyWithQueryUserListMediaListCollectionlistsentries<
                          QueryUserListMediaListCollectionlistsentries>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWithQueryUserListMediaListCollectionlistsentries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryUserListMediaListCollectionlists<TRes>
    implements CopyWithQueryUserListMediaListCollectionlists<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlists(this._res);

  TRes _res;

  call({
    String? name,
    EnumMediaListStatus? status,
    List<QueryUserListMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class QueryUserListMediaListCollectionlistsentries {
  QueryUserListMediaListCollectionlistsentries({
    required this.id,
    this.progress,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory QueryUserListMediaListCollectionlistsentries.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentries(
      id: (l$id as int),
      progress: (l$progress as int?),
      media: l$media == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? progress;

  final QueryUserListMediaListCollectionlistsentriesmedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlistsentries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentries
    on QueryUserListMediaListCollectionlistsentries {
  CopyWithQueryUserListMediaListCollectionlistsentries<
          QueryUserListMediaListCollectionlistsentries>
      get copyWith => CopyWithQueryUserListMediaListCollectionlistsentries(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentries(
    QueryUserListMediaListCollectionlistsentries instance,
    TRes Function(QueryUserListMediaListCollectionlistsentries) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentries;

  factory CopyWithQueryUserListMediaListCollectionlistsentries.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentries;

  TRes call({
    int? id,
    int? progress,
    QueryUserListMediaListCollectionlistsentriesmedia? media,
    String? $__typename,
  });
  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media;
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentries<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentries(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentries _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentries(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryUserListMediaListCollectionlistsentriesmedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(
            _then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentries<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentries(this._res);

  TRes _res;

  call({
    int? id,
    int? progress,
    QueryUserListMediaListCollectionlistsentriesmedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media =>
      CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(_res);
}

class QueryUserListMediaListCollectionlistsentriesmedia
    implements FragmentMediaMinimalF {
  QueryUserListMediaListCollectionlistsentriesmedia({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
  });

  factory QueryUserListMediaListCollectionlistsentriesmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    return QueryUserListMediaListCollectionlistsentriesmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      title: l$title == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final QueryUserListMediaListCollectionlistsentriesmediatitle? title;

  final QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

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
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlistsentriesmedia) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmedia
    on QueryUserListMediaListCollectionlistsentriesmedia {
  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<
          QueryUserListMediaListCollectionlistsentriesmedia>
      get copyWith => CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
    QueryUserListMediaListCollectionlistsentriesmedia instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmedia) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    QueryUserListMediaListCollectionlistsentriesmediatitle? title,
    QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
  });
  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title;
  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage;
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmedia _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentriesmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryUserListMediaListCollectionlistsentriesmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryUserListMediaListCollectionlistsentriesmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
      ));

  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
            _then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    QueryUserListMediaListCollectionlistsentriesmediatitle? title,
    QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
              _res);

  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage
              .stub(_res);
}

class QueryUserListMediaListCollectionlistsentriesmediatitle
    implements FragmentMediaMinimalFtitle {
  QueryUserListMediaListCollectionlistsentriesmediatitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory QueryUserListMediaListCollectionlistsentriesmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentriesmediatitle(
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
    if (!(other is QueryUserListMediaListCollectionlistsentriesmediatitle) ||
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmediatitle
    on QueryUserListMediaListCollectionlistsentriesmediatitle {
  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<
          QueryUserListMediaListCollectionlistsentriesmediatitle>
      get copyWith =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<
    TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
    QueryUserListMediaListCollectionlistsentriesmediatitle instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmediatitle) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmediatitle _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentriesmediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmediatitle(
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

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle(
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

class QueryUserListMediaListCollectionlistsentriesmediacoverImage
    implements FragmentMediaMinimalFcoverImage {
  QueryUserListMediaListCollectionlistsentriesmediacoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryUserListMediaListCollectionlistsentriesmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentriesmediacoverImage(
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
    if (!(other
            is QueryUserListMediaListCollectionlistsentriesmediacoverImage) ||
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmediacoverImage
    on QueryUserListMediaListCollectionlistsentriesmediacoverImage {
  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
          QueryUserListMediaListCollectionlistsentriesmediacoverImage>
      get copyWith =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
    TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
    QueryUserListMediaListCollectionlistsentriesmediacoverImage instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmediacoverImage)
        then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmediacoverImage _instance;

  final TRes Function(
      QueryUserListMediaListCollectionlistsentriesmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmediacoverImage(
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

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage(
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

class VariablesQueryHomePageList {
  factory VariablesQueryHomePageList({
    int? userId,
    EnumMediaType? mediaType,
  }) =>
      VariablesQueryHomePageList._({
        if (userId != null) r'userId': userId,
        if (mediaType != null) r'mediaType': mediaType,
      });

  VariablesQueryHomePageList._(this._$data);

  factory VariablesQueryHomePageList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJsonEnumMediaType((l$mediaType as String));
    }
    return VariablesQueryHomePageList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  EnumMediaType? get mediaType => (_$data['mediaType'] as EnumMediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJsonEnumMediaType(l$mediaType);
    }
    return result$data;
  }

  CopyWithVariablesQueryHomePageList<VariablesQueryHomePageList> get copyWith =>
      CopyWithVariablesQueryHomePageList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryHomePageList) ||
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
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$mediaType = mediaType;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryHomePageList<TRes> {
  factory CopyWithVariablesQueryHomePageList(
    VariablesQueryHomePageList instance,
    TRes Function(VariablesQueryHomePageList) then,
  ) = _CopyWithImplVariablesQueryHomePageList;

  factory CopyWithVariablesQueryHomePageList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryHomePageList;

  TRes call({
    int? userId,
    EnumMediaType? mediaType,
  });
}

class _CopyWithImplVariablesQueryHomePageList<TRes>
    implements CopyWithVariablesQueryHomePageList<TRes> {
  _CopyWithImplVariablesQueryHomePageList(
    this._instance,
    this._then,
  );

  final VariablesQueryHomePageList _instance;

  final TRes Function(VariablesQueryHomePageList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? mediaType = _undefined,
  }) =>
      _then(VariablesQueryHomePageList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (mediaType != _undefined) 'mediaType': (mediaType as EnumMediaType?),
      }));
}

class _CopyWithStubImplVariablesQueryHomePageList<TRes>
    implements CopyWithVariablesQueryHomePageList<TRes> {
  _CopyWithStubImplVariablesQueryHomePageList(this._res);

  TRes _res;

  call({
    int? userId,
    EnumMediaType? mediaType,
  }) =>
      _res;
}

class QueryHomePageList {
  QueryHomePageList({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryHomePageList.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryHomePageList(
      Page: l$Page == null
          ? null
          : QueryHomePageListPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryHomePageListPage? Page;

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
    if (!(other is QueryHomePageList) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryHomePageList on QueryHomePageList {
  CopyWithQueryHomePageList<QueryHomePageList> get copyWith =>
      CopyWithQueryHomePageList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryHomePageList<TRes> {
  factory CopyWithQueryHomePageList(
    QueryHomePageList instance,
    TRes Function(QueryHomePageList) then,
  ) = _CopyWithImplQueryHomePageList;

  factory CopyWithQueryHomePageList.stub(TRes res) =
      _CopyWithStubImplQueryHomePageList;

  TRes call({
    QueryHomePageListPage? Page,
    String? $__typename,
  });
  CopyWithQueryHomePageListPage<TRes> get Page;
}

class _CopyWithImplQueryHomePageList<TRes>
    implements CopyWithQueryHomePageList<TRes> {
  _CopyWithImplQueryHomePageList(
    this._instance,
    this._then,
  );

  final QueryHomePageList _instance;

  final TRes Function(QueryHomePageList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageList(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryHomePageListPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryHomePageListPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryHomePageListPage.stub(_then(_instance))
        : CopyWithQueryHomePageListPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryHomePageList<TRes>
    implements CopyWithQueryHomePageList<TRes> {
  _CopyWithStubImplQueryHomePageList(this._res);

  TRes _res;

  call({
    QueryHomePageListPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryHomePageListPage<TRes> get Page =>
      CopyWithQueryHomePageListPage.stub(_res);
}

const documentNodeQueryHomePageList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HomePageList'),
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
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
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
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '40'),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mediaList'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'mediaType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status'),
                value: EnumValueNode(name: NameNode(value: 'CURRENT')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'STATUS')),
                  EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'progress'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'media'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaMinimalF'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'episodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'chapters'),
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
                    name: NameNode(value: 'nextAiringEpisode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'timeUntilAiring'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'episode'),
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
  fragmentDefinitionMediaMinimalF,
]);

class QueryHomePageListPage {
  QueryHomePageListPage({
    this.mediaList,
    this.$__typename = 'Page',
  });

  factory QueryHomePageListPage.fromJson(Map<String, dynamic> json) {
    final l$mediaList = json['mediaList'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPage(
      mediaList: (l$mediaList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryHomePageListPagemediaList.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryHomePageListPagemediaList?>? mediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaList = mediaList;
    _resultData['mediaList'] = l$mediaList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaList = mediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaList == null ? null : Object.hashAll(l$mediaList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPage) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryHomePageListPage on QueryHomePageListPage {
  CopyWithQueryHomePageListPage<QueryHomePageListPage> get copyWith =>
      CopyWithQueryHomePageListPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryHomePageListPage<TRes> {
  factory CopyWithQueryHomePageListPage(
    QueryHomePageListPage instance,
    TRes Function(QueryHomePageListPage) then,
  ) = _CopyWithImplQueryHomePageListPage;

  factory CopyWithQueryHomePageListPage.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPage;

  TRes call({
    List<QueryHomePageListPagemediaList?>? mediaList,
    String? $__typename,
  });
  TRes mediaList(
      Iterable<QueryHomePageListPagemediaList?>? Function(
              Iterable<
                  CopyWithQueryHomePageListPagemediaList<
                      QueryHomePageListPagemediaList>?>?)
          _fn);
}

class _CopyWithImplQueryHomePageListPage<TRes>
    implements CopyWithQueryHomePageListPage<TRes> {
  _CopyWithImplQueryHomePageListPage(
    this._instance,
    this._then,
  );

  final QueryHomePageListPage _instance;

  final TRes Function(QueryHomePageListPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPage(
        mediaList: mediaList == _undefined
            ? _instance.mediaList
            : (mediaList as List<QueryHomePageListPagemediaList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaList(
          Iterable<QueryHomePageListPagemediaList?>? Function(
                  Iterable<
                      CopyWithQueryHomePageListPagemediaList<
                          QueryHomePageListPagemediaList>?>?)
              _fn) =>
      call(
          mediaList: _fn(_instance.mediaList?.map((e) => e == null
              ? null
              : CopyWithQueryHomePageListPagemediaList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryHomePageListPage<TRes>
    implements CopyWithQueryHomePageListPage<TRes> {
  _CopyWithStubImplQueryHomePageListPage(this._res);

  TRes _res;

  call({
    List<QueryHomePageListPagemediaList?>? mediaList,
    String? $__typename,
  }) =>
      _res;

  mediaList(_fn) => _res;
}

class QueryHomePageListPagemediaList {
  QueryHomePageListPagemediaList({
    this.progress,
    this.updatedAt,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory QueryHomePageListPagemediaList.fromJson(Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$updatedAt = json['updatedAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaList(
      progress: (l$progress as int?),
      updatedAt: (l$updatedAt as int?),
      media: l$media == null
          ? null
          : QueryHomePageListPagemediaListmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? progress;

  final int? updatedAt;

  final QueryHomePageListPagemediaListmedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$updatedAt = updatedAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$updatedAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtensionQueryHomePageListPagemediaList
    on QueryHomePageListPagemediaList {
  CopyWithQueryHomePageListPagemediaList<QueryHomePageListPagemediaList>
      get copyWith => CopyWithQueryHomePageListPagemediaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaList<TRes> {
  factory CopyWithQueryHomePageListPagemediaList(
    QueryHomePageListPagemediaList instance,
    TRes Function(QueryHomePageListPagemediaList) then,
  ) = _CopyWithImplQueryHomePageListPagemediaList;

  factory CopyWithQueryHomePageListPagemediaList.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaList;

  TRes call({
    int? progress,
    int? updatedAt,
    QueryHomePageListPagemediaListmedia? media,
    String? $__typename,
  });
  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media;
}

class _CopyWithImplQueryHomePageListPagemediaList<TRes>
    implements CopyWithQueryHomePageListPagemediaList<TRes> {
  _CopyWithImplQueryHomePageListPagemediaList(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaList _instance;

  final TRes Function(QueryHomePageListPagemediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? progress = _undefined,
    Object? updatedAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaList(
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryHomePageListPagemediaListmedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryHomePageListPagemediaListmedia.stub(_then(_instance))
        : CopyWithQueryHomePageListPagemediaListmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryHomePageListPagemediaList<TRes>
    implements CopyWithQueryHomePageListPagemediaList<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaList(this._res);

  TRes _res;

  call({
    int? progress,
    int? updatedAt,
    QueryHomePageListPagemediaListmedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media =>
      CopyWithQueryHomePageListPagemediaListmedia.stub(_res);
}

class QueryHomePageListPagemediaListmedia implements FragmentMediaMinimalF {
  QueryHomePageListPagemediaListmedia({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
    this.nextAiringEpisode,
  });

  factory QueryHomePageListPagemediaListmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    return QueryHomePageListPagemediaListmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      title: l$title == null
          ? null
          : QueryHomePageListPagemediaListmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryHomePageListPagemediaListmediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : QueryHomePageListPagemediaListmedianextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final QueryHomePageListPagemediaListmediatitle? title;

  final QueryHomePageListPagemediaListmediacoverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

  final QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode;

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
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$nextAiringEpisode = nextAiringEpisode;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
      l$nextAiringEpisode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaListmedia) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryHomePageListPagemediaListmedia
    on QueryHomePageListPagemediaListmedia {
  CopyWithQueryHomePageListPagemediaListmedia<
          QueryHomePageListPagemediaListmedia>
      get copyWith => CopyWithQueryHomePageListPagemediaListmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmedia(
    QueryHomePageListPagemediaListmedia instance,
    TRes Function(QueryHomePageListPagemediaListmedia) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmedia;

  factory CopyWithQueryHomePageListPagemediaListmedia.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    QueryHomePageListPagemediaListmediatitle? title,
    QueryHomePageListPagemediaListmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode,
  });
  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title;
  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage;
  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode;
}

class _CopyWithImplQueryHomePageListPagemediaListmedia<TRes>
    implements CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmedia(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmedia _instance;

  final TRes Function(QueryHomePageListPagemediaListmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? nextAiringEpisode = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        title: title == _undefined
            ? _instance.title
            : (title as QueryHomePageListPagemediaListmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as QueryHomePageListPagemediaListmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode
                as QueryHomePageListPagemediaListmedianextAiringEpisode?),
      ));

  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryHomePageListPagemediaListmediatitle.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }
}

class _CopyWithStubImplQueryHomePageListPagemediaListmedia<TRes>
    implements CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    QueryHomePageListPagemediaListmediatitle? title,
    QueryHomePageListPagemediaListmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode,
  }) =>
      _res;

  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title =>
      CopyWithQueryHomePageListPagemediaListmediatitle.stub(_res);

  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage =>
      CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(_res);

  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
              _res);
}

class QueryHomePageListPagemediaListmediatitle
    implements FragmentMediaMinimalFtitle {
  QueryHomePageListPagemediaListmediatitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory QueryHomePageListPagemediaListmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmediatitle(
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
    if (!(other is QueryHomePageListPagemediaListmediatitle) ||
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

extension UtilityExtensionQueryHomePageListPagemediaListmediatitle
    on QueryHomePageListPagemediaListmediatitle {
  CopyWithQueryHomePageListPagemediaListmediatitle<
          QueryHomePageListPagemediaListmediatitle>
      get copyWith => CopyWithQueryHomePageListPagemediaListmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmediatitle(
    QueryHomePageListPagemediaListmediatitle instance,
    TRes Function(QueryHomePageListPagemediaListmediatitle) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmediatitle;

  factory CopyWithQueryHomePageListPagemediaListmediatitle.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmediatitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmediatitle<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmediatitle(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmediatitle _instance;

  final TRes Function(QueryHomePageListPagemediaListmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmediatitle(
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

class _CopyWithStubImplQueryHomePageListPagemediaListmediatitle<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmediatitle(this._res);

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

class QueryHomePageListPagemediaListmediacoverImage
    implements FragmentMediaMinimalFcoverImage {
  QueryHomePageListPagemediaListmediacoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryHomePageListPagemediaListmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmediacoverImage(
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
    if (!(other is QueryHomePageListPagemediaListmediacoverImage) ||
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

extension UtilityExtensionQueryHomePageListPagemediaListmediacoverImage
    on QueryHomePageListPagemediaListmediacoverImage {
  CopyWithQueryHomePageListPagemediaListmediacoverImage<
          QueryHomePageListPagemediaListmediacoverImage>
      get copyWith => CopyWithQueryHomePageListPagemediaListmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmediacoverImage(
    QueryHomePageListPagemediaListmediacoverImage instance,
    TRes Function(QueryHomePageListPagemediaListmediacoverImage) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmediacoverImage;

  factory CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmediacoverImage<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmediacoverImage _instance;

  final TRes Function(QueryHomePageListPagemediaListmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmediacoverImage(
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

class _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage(this._res);

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

class QueryHomePageListPagemediaListmedianextAiringEpisode {
  QueryHomePageListPagemediaListmedianextAiringEpisode({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryHomePageListPagemediaListmedianextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmedianextAiringEpisode(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaListmedianextAiringEpisode) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryHomePageListPagemediaListmedianextAiringEpisode
    on QueryHomePageListPagemediaListmedianextAiringEpisode {
  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<
          QueryHomePageListPagemediaListmedianextAiringEpisode>
      get copyWith =>
          CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<
    TRes> {
  factory CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
    QueryHomePageListPagemediaListmedianextAiringEpisode instance,
    TRes Function(QueryHomePageListPagemediaListmedianextAiringEpisode) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode;

  factory CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
          TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
    implements
        CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmedianextAiringEpisode _instance;

  final TRes Function(QueryHomePageListPagemediaListmedianextAiringEpisode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmedianextAiringEpisode(
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode<
        TRes>
    implements
        CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode(
      this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}
