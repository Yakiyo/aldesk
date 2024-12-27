import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryMediaMin {
  factory VariablesQueryMediaMin({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  }) =>
      VariablesQueryMediaMin._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
        if (format != null) r'format': format,
        if (status != null) r'status': status,
        if (isAdult != null) r'isAdult': isAdult,
        if (search != null) r'search': search,
      });

  VariablesQueryMediaMin._(this._$data);

  factory VariablesQueryMediaMin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumMediaType((l$type as String));
    }
    if (data.containsKey('format')) {
      final l$format = data['format'];
      result$data['format'] = l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String));
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryMediaMin._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  EnumMediaType? get type => (_$data['type'] as EnumMediaType?);

  EnumMediaFormat? get format => (_$data['format'] as EnumMediaFormat?);

  EnumMediaStatus? get status => (_$data['status'] as EnumMediaStatus?);

  bool? get isAdult => (_$data['isAdult'] as bool?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    }
    if (_$data.containsKey('format')) {
      final l$format = format;
      result$data['format'] =
          l$format == null ? null : toJsonEnumMediaFormat(l$format);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaStatus(l$status);
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWithVariablesQueryMediaMin<VariablesQueryMediaMin> get copyWith =>
      CopyWithVariablesQueryMediaMin(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryMediaMin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (_$data.containsKey('format') != other._$data.containsKey('format')) {
      return false;
    }
    if (l$format != lOther$format) {
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
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$isAdult = isAdult;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('format') ? l$format : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryMediaMin<TRes> {
  factory CopyWithVariablesQueryMediaMin(
    VariablesQueryMediaMin instance,
    TRes Function(VariablesQueryMediaMin) then,
  ) = _CopyWithImplVariablesQueryMediaMin;

  factory CopyWithVariablesQueryMediaMin.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaMin;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  });
}

class _CopyWithImplVariablesQueryMediaMin<TRes>
    implements CopyWithVariablesQueryMediaMin<TRes> {
  _CopyWithImplVariablesQueryMediaMin(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaMin _instance;

  final TRes Function(VariablesQueryMediaMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? isAdult = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryMediaMin._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as EnumMediaType?),
        if (format != _undefined) 'format': (format as EnumMediaFormat?),
        if (status != _undefined) 'status': (status as EnumMediaStatus?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaMin<TRes>
    implements CopyWithVariablesQueryMediaMin<TRes> {
  _CopyWithStubImplVariablesQueryMediaMin(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  }) =>
      _res;
}

class QueryMediaMin {
  QueryMediaMin({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMediaMin.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMediaMin(
      Media: l$Media == null
          ? null
          : FragmentMediaMin.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentMediaMin? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtensionQueryMediaMin on QueryMediaMin {
  CopyWithQueryMediaMin<QueryMediaMin> get copyWith => CopyWithQueryMediaMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMin<TRes> {
  factory CopyWithQueryMediaMin(
    QueryMediaMin instance,
    TRes Function(QueryMediaMin) then,
  ) = _CopyWithImplQueryMediaMin;

  factory CopyWithQueryMediaMin.stub(TRes res) = _CopyWithStubImplQueryMediaMin;

  TRes call({
    FragmentMediaMin? Media,
    String? $__typename,
  });
  CopyWithFragmentMediaMin<TRes> get Media;
}

class _CopyWithImplQueryMediaMin<TRes> implements CopyWithQueryMediaMin<TRes> {
  _CopyWithImplQueryMediaMin(
    this._instance,
    this._then,
  );

  final QueryMediaMin _instance;

  final TRes Function(QueryMediaMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMin(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as FragmentMediaMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMin<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMediaMin<TRes>
    implements CopyWithQueryMediaMin<TRes> {
  _CopyWithStubImplQueryMediaMin(this._res);

  TRes _res;

  call({
    FragmentMediaMin? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMin<TRes> get Media =>
      CopyWithFragmentMediaMin.stub(_res);
}

const documentNodeQueryMediaMin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaMin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        variable: VariableNode(name: NameNode(value: 'format')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaFormat'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'format'),
            value: VariableNode(name: NameNode(value: 'format')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isAdult'),
            value: VariableNode(name: NameNode(value: 'isAdult')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaMin'),
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
  fragmentDefinitionMediaMin,
]);

class VariablesQueryMedia {
  factory VariablesQueryMedia({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  }) =>
      VariablesQueryMedia._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
        if (format != null) r'format': format,
        if (status != null) r'status': status,
        if (isAdult != null) r'isAdult': isAdult,
        if (search != null) r'search': search,
      });

  VariablesQueryMedia._(this._$data);

  factory VariablesQueryMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumMediaType((l$type as String));
    }
    if (data.containsKey('format')) {
      final l$format = data['format'];
      result$data['format'] = l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String));
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  EnumMediaType? get type => (_$data['type'] as EnumMediaType?);

  EnumMediaFormat? get format => (_$data['format'] as EnumMediaFormat?);

  EnumMediaStatus? get status => (_$data['status'] as EnumMediaStatus?);

  bool? get isAdult => (_$data['isAdult'] as bool?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    }
    if (_$data.containsKey('format')) {
      final l$format = format;
      result$data['format'] =
          l$format == null ? null : toJsonEnumMediaFormat(l$format);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaStatus(l$status);
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWithVariablesQueryMedia<VariablesQueryMedia> get copyWith =>
      CopyWithVariablesQueryMedia(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryMedia) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (_$data.containsKey('format') != other._$data.containsKey('format')) {
      return false;
    }
    if (l$format != lOther$format) {
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
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$isAdult = isAdult;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('format') ? l$format : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryMedia<TRes> {
  factory CopyWithVariablesQueryMedia(
    VariablesQueryMedia instance,
    TRes Function(VariablesQueryMedia) then,
  ) = _CopyWithImplVariablesQueryMedia;

  factory CopyWithVariablesQueryMedia.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  });
}

class _CopyWithImplVariablesQueryMedia<TRes>
    implements CopyWithVariablesQueryMedia<TRes> {
  _CopyWithImplVariablesQueryMedia(
    this._instance,
    this._then,
  );

  final VariablesQueryMedia _instance;

  final TRes Function(VariablesQueryMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? isAdult = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryMedia._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as EnumMediaType?),
        if (format != _undefined) 'format': (format as EnumMediaFormat?),
        if (status != _undefined) 'status': (status as EnumMediaStatus?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMedia<TRes>
    implements CopyWithVariablesQueryMedia<TRes> {
  _CopyWithStubImplVariablesQueryMedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? search,
  }) =>
      _res;
}

class QueryMedia {
  QueryMedia({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMedia.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMedia(
      Media: l$Media == null
          ? null
          : QueryMediaMedia.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaMedia? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMedia) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtensionQueryMedia on QueryMedia {
  CopyWithQueryMedia<QueryMedia> get copyWith => CopyWithQueryMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMedia<TRes> {
  factory CopyWithQueryMedia(
    QueryMedia instance,
    TRes Function(QueryMedia) then,
  ) = _CopyWithImplQueryMedia;

  factory CopyWithQueryMedia.stub(TRes res) = _CopyWithStubImplQueryMedia;

  TRes call({
    QueryMediaMedia? Media,
    String? $__typename,
  });
  CopyWithQueryMediaMedia<TRes> get Media;
}

class _CopyWithImplQueryMedia<TRes> implements CopyWithQueryMedia<TRes> {
  _CopyWithImplQueryMedia(
    this._instance,
    this._then,
  );

  final QueryMedia _instance;

  final TRes Function(QueryMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMedia(
        Media:
            Media == _undefined ? _instance.Media : (Media as QueryMediaMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMedia<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithQueryMediaMedia.stub(_then(_instance))
        : CopyWithQueryMediaMedia(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMedia<TRes> implements CopyWithQueryMedia<TRes> {
  _CopyWithStubImplQueryMedia(this._res);

  TRes _res;

  call({
    QueryMediaMedia? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMedia<TRes> get Media => CopyWithQueryMediaMedia.stub(_res);
}

const documentNodeQueryMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Media'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        variable: VariableNode(name: NameNode(value: 'format')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaFormat'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'format'),
            value: VariableNode(name: NameNode(value: 'format')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isAdult'),
            value: VariableNode(name: NameNode(value: 'isAdult')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaMin'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'asHtml'),
                value: BooleanValueNode(value: false),
              )
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'idMal'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'season'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seasonYear'),
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
            name: NameNode(value: 'duration'),
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
            name: NameNode(value: 'volumes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryOfOrigin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLicensed'),
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
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hashtag'),
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
            name: NameNode(value: 'bannerImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'genres'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'synonyms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'averageScore'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'meanScore'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'popularity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'trending'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdult'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'autoCreateForumThread'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isRecommendationBlocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isReviewBlocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modNotes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
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
            name: NameNode(value: 'endDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
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
            name: NameNode(value: 'trailer'),
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
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnail'),
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
            name: NameNode(value: 'tags'),
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
                name: NameNode(value: 'description'),
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
            name: NameNode(value: 'nextAiringEpisode'),
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
                name: NameNode(value: 'episode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'airingAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'timeUntilAiring'),
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
            name: NameNode(value: 'externalLinks'),
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
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
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
            name: NameNode(value: 'reviews'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'summary'),
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
            name: NameNode(value: 'stats'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'scoreDistribution'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'score'),
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
                name: NameNode(value: 'statusDistribution'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
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
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
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
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'favouriteOrder'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
            name: NameNode(value: 'relations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
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
                    name: NameNode(value: 'relationType'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'version'),
                        value: IntValueNode(value: '2'),
                      )
                    ],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
            name: NameNode(value: 'airingSchedule'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'airingAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'mediaId'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              )
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
                    name: NameNode(value: 'rating'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userRating'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'mediaRecommendation'),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
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
                    name: NameNode(value: 'isMain'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
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
            name: NameNode(value: 'streamingEpisodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnail'),
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
            name: NameNode(value: 'mediaListEntry'),
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
                name: NameNode(value: 'userId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'score'),
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
                name: NameNode(value: 'progress'),
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
  fragmentDefinitionMediaMin,
]);

class QueryMediaMedia implements FragmentMediaMin {
  QueryMediaMedia({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.episodes,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.description,
    this.idMal,
    this.season,
    this.seasonYear,
    this.duration,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source,
    this.hashtag,
    this.updatedAt,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.trending,
    this.favourites,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.isAdult,
    this.siteUrl,
    this.autoCreateForumThread,
    this.isRecommendationBlocked,
    this.isReviewBlocked,
    this.modNotes,
    this.startDate,
    this.endDate,
    this.trailer,
    this.tags,
    this.nextAiringEpisode,
    this.externalLinks,
    this.reviews,
    this.stats,
    this.characters,
    this.staff,
    this.relations,
    this.airingSchedule,
    this.recommendations,
    this.studios,
    this.streamingEpisodes,
    this.mediaListEntry,
  });

  factory QueryMediaMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$description = json['description'];
    final l$idMal = json['idMal'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$duration = json['duration'];
    final l$volumes = json['volumes'];
    final l$countryOfOrigin = json['countryOfOrigin'];
    final l$isLicensed = json['isLicensed'];
    final l$source = json['source'];
    final l$hashtag = json['hashtag'];
    final l$updatedAt = json['updatedAt'];
    final l$bannerImage = json['bannerImage'];
    final l$genres = json['genres'];
    final l$synonyms = json['synonyms'];
    final l$averageScore = json['averageScore'];
    final l$meanScore = json['meanScore'];
    final l$popularity = json['popularity'];
    final l$isLocked = json['isLocked'];
    final l$trending = json['trending'];
    final l$favourites = json['favourites'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$isAdult = json['isAdult'];
    final l$siteUrl = json['siteUrl'];
    final l$autoCreateForumThread = json['autoCreateForumThread'];
    final l$isRecommendationBlocked = json['isRecommendationBlocked'];
    final l$isReviewBlocked = json['isReviewBlocked'];
    final l$modNotes = json['modNotes'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$trailer = json['trailer'];
    final l$tags = json['tags'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$externalLinks = json['externalLinks'];
    final l$reviews = json['reviews'];
    final l$stats = json['stats'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$relations = json['relations'];
    final l$airingSchedule = json['airingSchedule'];
    final l$recommendations = json['recommendations'];
    final l$studios = json['studios'];
    final l$streamingEpisodes = json['streamingEpisodes'];
    final l$mediaListEntry = json['mediaListEntry'];
    return QueryMediaMedia(
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
          : QueryMediaMediatitle.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryMediaMediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      description: (l$description as String?),
      idMal: (l$idMal as int?),
      season: l$season == null
          ? null
          : fromJsonEnumMediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      duration: (l$duration as int?),
      volumes: (l$volumes as int?),
      countryOfOrigin: (l$countryOfOrigin as String?),
      isLicensed: (l$isLicensed as bool?),
      source: l$source == null
          ? null
          : fromJsonEnumMediaSource((l$source as String)),
      hashtag: (l$hashtag as String?),
      updatedAt: (l$updatedAt as int?),
      bannerImage: (l$bannerImage as String?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      synonyms:
          (l$synonyms as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      averageScore: (l$averageScore as int?),
      meanScore: (l$meanScore as int?),
      popularity: (l$popularity as int?),
      isLocked: (l$isLocked as bool?),
      trending: (l$trending as int?),
      favourites: (l$favourites as int?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      isAdult: (l$isAdult as bool?),
      siteUrl: (l$siteUrl as String?),
      autoCreateForumThread: (l$autoCreateForumThread as bool?),
      isRecommendationBlocked: (l$isRecommendationBlocked as bool?),
      isReviewBlocked: (l$isReviewBlocked as bool?),
      modNotes: (l$modNotes as String?),
      startDate: l$startDate == null
          ? null
          : QueryMediaMediastartDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : QueryMediaMediaendDate.fromJson(
              (l$endDate as Map<String, dynamic>)),
      trailer: l$trailer == null
          ? null
          : QueryMediaMediatrailer.fromJson(
              (l$trailer as Map<String, dynamic>)),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediatags.fromJson((e as Map<String, dynamic>)))
          .toList(),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : QueryMediaMedianextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      externalLinks: (l$externalLinks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediaexternalLinks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      reviews: l$reviews == null
          ? null
          : QueryMediaMediareviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      stats: l$stats == null
          ? null
          : QueryMediaMediastats.fromJson((l$stats as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : QueryMediaMediacharacters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : QueryMediaMediastaff.fromJson((l$staff as Map<String, dynamic>)),
      relations: l$relations == null
          ? null
          : QueryMediaMediarelations.fromJson(
              (l$relations as Map<String, dynamic>)),
      airingSchedule: l$airingSchedule == null
          ? null
          : QueryMediaMediaairingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
      recommendations: l$recommendations == null
          ? null
          : QueryMediaMediarecommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : QueryMediaMediastudios.fromJson(
              (l$studios as Map<String, dynamic>)),
      streamingEpisodes: (l$streamingEpisodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediastreamingEpisodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : QueryMediaMediamediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final int? episodes;

  final int? chapters;

  final QueryMediaMediatitle? title;

  final QueryMediaMediacoverImage? coverImage;

  final String $__typename;

  final String? description;

  final int? idMal;

  final EnumMediaSeason? season;

  final int? seasonYear;

  final int? duration;

  final int? volumes;

  final String? countryOfOrigin;

  final bool? isLicensed;

  final EnumMediaSource? source;

  final String? hashtag;

  final int? updatedAt;

  final String? bannerImage;

  final List<String?>? genres;

  final List<String?>? synonyms;

  final int? averageScore;

  final int? meanScore;

  final int? popularity;

  final bool? isLocked;

  final int? trending;

  final int? favourites;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final bool? isAdult;

  final String? siteUrl;

  final bool? autoCreateForumThread;

  final bool? isRecommendationBlocked;

  final bool? isReviewBlocked;

  final String? modNotes;

  final QueryMediaMediastartDate? startDate;

  final QueryMediaMediaendDate? endDate;

  final QueryMediaMediatrailer? trailer;

  final List<QueryMediaMediatags?>? tags;

  final QueryMediaMedianextAiringEpisode? nextAiringEpisode;

  final List<QueryMediaMediaexternalLinks?>? externalLinks;

  final QueryMediaMediareviews? reviews;

  final QueryMediaMediastats? stats;

  final QueryMediaMediacharacters? characters;

  final QueryMediaMediastaff? staff;

  final QueryMediaMediarelations? relations;

  final QueryMediaMediaairingSchedule? airingSchedule;

  final QueryMediaMediarecommendations? recommendations;

  final QueryMediaMediastudios? studios;

  final List<QueryMediaMediastreamingEpisodes?>? streamingEpisodes;

  final QueryMediaMediamediaListEntry? mediaListEntry;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$idMal = idMal;
    _resultData['idMal'] = l$idMal;
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJsonEnumMediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$countryOfOrigin = countryOfOrigin;
    _resultData['countryOfOrigin'] = l$countryOfOrigin;
    final l$isLicensed = isLicensed;
    _resultData['isLicensed'] = l$isLicensed;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJsonEnumMediaSource(l$source);
    final l$hashtag = hashtag;
    _resultData['hashtag'] = l$hashtag;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$synonyms = synonyms;
    _resultData['synonyms'] = l$synonyms?.map((e) => e).toList();
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$trending = trending;
    _resultData['trending'] = l$trending;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$autoCreateForumThread = autoCreateForumThread;
    _resultData['autoCreateForumThread'] = l$autoCreateForumThread;
    final l$isRecommendationBlocked = isRecommendationBlocked;
    _resultData['isRecommendationBlocked'] = l$isRecommendationBlocked;
    final l$isReviewBlocked = isReviewBlocked;
    _resultData['isReviewBlocked'] = l$isReviewBlocked;
    final l$modNotes = modNotes;
    _resultData['modNotes'] = l$modNotes;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$trailer = trailer;
    _resultData['trailer'] = l$trailer?.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$externalLinks = externalLinks;
    _resultData['externalLinks'] =
        l$externalLinks?.map((e) => e?.toJson()).toList();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$stats = stats;
    _resultData['stats'] = l$stats?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$relations = relations;
    _resultData['relations'] = l$relations?.toJson();
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$streamingEpisodes = streamingEpisodes;
    _resultData['streamingEpisodes'] =
        l$streamingEpisodes?.map((e) => e?.toJson()).toList();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
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
    final l$$__typename = $__typename;
    final l$description = description;
    final l$idMal = idMal;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$duration = duration;
    final l$volumes = volumes;
    final l$countryOfOrigin = countryOfOrigin;
    final l$isLicensed = isLicensed;
    final l$source = source;
    final l$hashtag = hashtag;
    final l$updatedAt = updatedAt;
    final l$bannerImage = bannerImage;
    final l$genres = genres;
    final l$synonyms = synonyms;
    final l$averageScore = averageScore;
    final l$meanScore = meanScore;
    final l$popularity = popularity;
    final l$isLocked = isLocked;
    final l$trending = trending;
    final l$favourites = favourites;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$isAdult = isAdult;
    final l$siteUrl = siteUrl;
    final l$autoCreateForumThread = autoCreateForumThread;
    final l$isRecommendationBlocked = isRecommendationBlocked;
    final l$isReviewBlocked = isReviewBlocked;
    final l$modNotes = modNotes;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$trailer = trailer;
    final l$tags = tags;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$externalLinks = externalLinks;
    final l$reviews = reviews;
    final l$stats = stats;
    final l$characters = characters;
    final l$staff = staff;
    final l$relations = relations;
    final l$airingSchedule = airingSchedule;
    final l$recommendations = recommendations;
    final l$studios = studios;
    final l$streamingEpisodes = streamingEpisodes;
    final l$mediaListEntry = mediaListEntry;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$episodes,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
      l$description,
      l$idMal,
      l$season,
      l$seasonYear,
      l$duration,
      l$volumes,
      l$countryOfOrigin,
      l$isLicensed,
      l$source,
      l$hashtag,
      l$updatedAt,
      l$bannerImage,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$synonyms == null ? null : Object.hashAll(l$synonyms.map((v) => v)),
      l$averageScore,
      l$meanScore,
      l$popularity,
      l$isLocked,
      l$trending,
      l$favourites,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$isAdult,
      l$siteUrl,
      l$autoCreateForumThread,
      l$isRecommendationBlocked,
      l$isReviewBlocked,
      l$modNotes,
      l$startDate,
      l$endDate,
      l$trailer,
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$nextAiringEpisode,
      l$externalLinks == null
          ? null
          : Object.hashAll(l$externalLinks.map((v) => v)),
      l$reviews,
      l$stats,
      l$characters,
      l$staff,
      l$relations,
      l$airingSchedule,
      l$recommendations,
      l$studios,
      l$streamingEpisodes == null
          ? null
          : Object.hashAll(l$streamingEpisodes.map((v) => v)),
      l$mediaListEntry,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMedia) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$idMal = idMal;
    final lOther$idMal = other.idMal;
    if (l$idMal != lOther$idMal) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
      return false;
    }
    final l$isLicensed = isLicensed;
    final lOther$isLicensed = other.isLicensed;
    if (l$isLicensed != lOther$isLicensed) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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
    final l$synonyms = synonyms;
    final lOther$synonyms = other.synonyms;
    if (l$synonyms != null && lOther$synonyms != null) {
      if (l$synonyms.length != lOther$synonyms.length) {
        return false;
      }
      for (int i = 0; i < l$synonyms.length; i++) {
        final l$synonyms$entry = l$synonyms[i];
        final lOther$synonyms$entry = lOther$synonyms[i];
        if (l$synonyms$entry != lOther$synonyms$entry) {
          return false;
        }
      }
    } else if (l$synonyms != lOther$synonyms) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$autoCreateForumThread = autoCreateForumThread;
    final lOther$autoCreateForumThread = other.autoCreateForumThread;
    if (l$autoCreateForumThread != lOther$autoCreateForumThread) {
      return false;
    }
    final l$isRecommendationBlocked = isRecommendationBlocked;
    final lOther$isRecommendationBlocked = other.isRecommendationBlocked;
    if (l$isRecommendationBlocked != lOther$isRecommendationBlocked) {
      return false;
    }
    final l$isReviewBlocked = isReviewBlocked;
    final lOther$isReviewBlocked = other.isReviewBlocked;
    if (l$isReviewBlocked != lOther$isReviewBlocked) {
      return false;
    }
    final l$modNotes = modNotes;
    final lOther$modNotes = other.modNotes;
    if (l$modNotes != lOther$modNotes) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$trailer = trailer;
    final lOther$trailer = other.trailer;
    if (l$trailer != lOther$trailer) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$externalLinks = externalLinks;
    final lOther$externalLinks = other.externalLinks;
    if (l$externalLinks != null && lOther$externalLinks != null) {
      if (l$externalLinks.length != lOther$externalLinks.length) {
        return false;
      }
      for (int i = 0; i < l$externalLinks.length; i++) {
        final l$externalLinks$entry = l$externalLinks[i];
        final lOther$externalLinks$entry = lOther$externalLinks[i];
        if (l$externalLinks$entry != lOther$externalLinks$entry) {
          return false;
        }
      }
    } else if (l$externalLinks != lOther$externalLinks) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
      return false;
    }
    final l$stats = stats;
    final lOther$stats = other.stats;
    if (l$stats != lOther$stats) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$relations = relations;
    final lOther$relations = other.relations;
    if (l$relations != lOther$relations) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
      return false;
    }
    final l$streamingEpisodes = streamingEpisodes;
    final lOther$streamingEpisodes = other.streamingEpisodes;
    if (l$streamingEpisodes != null && lOther$streamingEpisodes != null) {
      if (l$streamingEpisodes.length != lOther$streamingEpisodes.length) {
        return false;
      }
      for (int i = 0; i < l$streamingEpisodes.length; i++) {
        final l$streamingEpisodes$entry = l$streamingEpisodes[i];
        final lOther$streamingEpisodes$entry = lOther$streamingEpisodes[i];
        if (l$streamingEpisodes$entry != lOther$streamingEpisodes$entry) {
          return false;
        }
      }
    } else if (l$streamingEpisodes != lOther$streamingEpisodes) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMedia on QueryMediaMedia {
  CopyWithQueryMediaMedia<QueryMediaMedia> get copyWith =>
      CopyWithQueryMediaMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMedia<TRes> {
  factory CopyWithQueryMediaMedia(
    QueryMediaMedia instance,
    TRes Function(QueryMediaMedia) then,
  ) = _CopyWithImplQueryMediaMedia;

  factory CopyWithQueryMediaMedia.stub(TRes res) =
      _CopyWithStubImplQueryMediaMedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    QueryMediaMediatitle? title,
    QueryMediaMediacoverImage? coverImage,
    String? $__typename,
    String? description,
    int? idMal,
    EnumMediaSeason? season,
    int? seasonYear,
    int? duration,
    int? volumes,
    String? countryOfOrigin,
    bool? isLicensed,
    EnumMediaSource? source,
    String? hashtag,
    int? updatedAt,
    String? bannerImage,
    List<String?>? genres,
    List<String?>? synonyms,
    int? averageScore,
    int? meanScore,
    int? popularity,
    bool? isLocked,
    int? trending,
    int? favourites,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    bool? isAdult,
    String? siteUrl,
    bool? autoCreateForumThread,
    bool? isRecommendationBlocked,
    bool? isReviewBlocked,
    String? modNotes,
    QueryMediaMediastartDate? startDate,
    QueryMediaMediaendDate? endDate,
    QueryMediaMediatrailer? trailer,
    List<QueryMediaMediatags?>? tags,
    QueryMediaMedianextAiringEpisode? nextAiringEpisode,
    List<QueryMediaMediaexternalLinks?>? externalLinks,
    QueryMediaMediareviews? reviews,
    QueryMediaMediastats? stats,
    QueryMediaMediacharacters? characters,
    QueryMediaMediastaff? staff,
    QueryMediaMediarelations? relations,
    QueryMediaMediaairingSchedule? airingSchedule,
    QueryMediaMediarecommendations? recommendations,
    QueryMediaMediastudios? studios,
    List<QueryMediaMediastreamingEpisodes?>? streamingEpisodes,
    QueryMediaMediamediaListEntry? mediaListEntry,
  });
  CopyWithQueryMediaMediatitle<TRes> get title;
  CopyWithQueryMediaMediacoverImage<TRes> get coverImage;
  CopyWithQueryMediaMediastartDate<TRes> get startDate;
  CopyWithQueryMediaMediaendDate<TRes> get endDate;
  CopyWithQueryMediaMediatrailer<TRes> get trailer;
  TRes tags(
      Iterable<QueryMediaMediatags?>? Function(
              Iterable<CopyWithQueryMediaMediatags<QueryMediaMediatags>?>?)
          _fn);
  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode;
  TRes externalLinks(
      Iterable<QueryMediaMediaexternalLinks?>? Function(
              Iterable<
                  CopyWithQueryMediaMediaexternalLinks<
                      QueryMediaMediaexternalLinks>?>?)
          _fn);
  CopyWithQueryMediaMediareviews<TRes> get reviews;
  CopyWithQueryMediaMediastats<TRes> get stats;
  CopyWithQueryMediaMediacharacters<TRes> get characters;
  CopyWithQueryMediaMediastaff<TRes> get staff;
  CopyWithQueryMediaMediarelations<TRes> get relations;
  CopyWithQueryMediaMediaairingSchedule<TRes> get airingSchedule;
  CopyWithQueryMediaMediarecommendations<TRes> get recommendations;
  CopyWithQueryMediaMediastudios<TRes> get studios;
  TRes streamingEpisodes(
      Iterable<QueryMediaMediastreamingEpisodes?>? Function(
              Iterable<
                  CopyWithQueryMediaMediastreamingEpisodes<
                      QueryMediaMediastreamingEpisodes>?>?)
          _fn);
  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImplQueryMediaMedia<TRes>
    implements CopyWithQueryMediaMedia<TRes> {
  _CopyWithImplQueryMediaMedia(
    this._instance,
    this._then,
  );

  final QueryMediaMedia _instance;

  final TRes Function(QueryMediaMedia) _then;

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
    Object? $__typename = _undefined,
    Object? description = _undefined,
    Object? idMal = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? duration = _undefined,
    Object? volumes = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? isLicensed = _undefined,
    Object? source = _undefined,
    Object? hashtag = _undefined,
    Object? updatedAt = _undefined,
    Object? bannerImage = _undefined,
    Object? genres = _undefined,
    Object? synonyms = _undefined,
    Object? averageScore = _undefined,
    Object? meanScore = _undefined,
    Object? popularity = _undefined,
    Object? isLocked = _undefined,
    Object? trending = _undefined,
    Object? favourites = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? isAdult = _undefined,
    Object? siteUrl = _undefined,
    Object? autoCreateForumThread = _undefined,
    Object? isRecommendationBlocked = _undefined,
    Object? isReviewBlocked = _undefined,
    Object? modNotes = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? trailer = _undefined,
    Object? tags = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? externalLinks = _undefined,
    Object? reviews = _undefined,
    Object? stats = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? relations = _undefined,
    Object? airingSchedule = _undefined,
    Object? recommendations = _undefined,
    Object? studios = _undefined,
    Object? streamingEpisodes = _undefined,
    Object? mediaListEntry = _undefined,
  }) =>
      _then(QueryMediaMedia(
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
            : (title as QueryMediaMediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as QueryMediaMediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        idMal: idMal == _undefined ? _instance.idMal : (idMal as int?),
        season: season == _undefined
            ? _instance.season
            : (season as EnumMediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        countryOfOrigin: countryOfOrigin == _undefined
            ? _instance.countryOfOrigin
            : (countryOfOrigin as String?),
        isLicensed: isLicensed == _undefined
            ? _instance.isLicensed
            : (isLicensed as bool?),
        source: source == _undefined
            ? _instance.source
            : (source as EnumMediaSource?),
        hashtag:
            hashtag == _undefined ? _instance.hashtag : (hashtag as String?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        synonyms: synonyms == _undefined
            ? _instance.synonyms
            : (synonyms as List<String?>?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        trending:
            trending == _undefined ? _instance.trending : (trending as int?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        autoCreateForumThread: autoCreateForumThread == _undefined
            ? _instance.autoCreateForumThread
            : (autoCreateForumThread as bool?),
        isRecommendationBlocked: isRecommendationBlocked == _undefined
            ? _instance.isRecommendationBlocked
            : (isRecommendationBlocked as bool?),
        isReviewBlocked: isReviewBlocked == _undefined
            ? _instance.isReviewBlocked
            : (isReviewBlocked as bool?),
        modNotes:
            modNotes == _undefined ? _instance.modNotes : (modNotes as String?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as QueryMediaMediastartDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as QueryMediaMediaendDate?),
        trailer: trailer == _undefined
            ? _instance.trailer
            : (trailer as QueryMediaMediatrailer?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<QueryMediaMediatags?>?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as QueryMediaMedianextAiringEpisode?),
        externalLinks: externalLinks == _undefined
            ? _instance.externalLinks
            : (externalLinks as List<QueryMediaMediaexternalLinks?>?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as QueryMediaMediareviews?),
        stats: stats == _undefined
            ? _instance.stats
            : (stats as QueryMediaMediastats?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as QueryMediaMediacharacters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as QueryMediaMediastaff?),
        relations: relations == _undefined
            ? _instance.relations
            : (relations as QueryMediaMediarelations?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as QueryMediaMediaairingSchedule?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as QueryMediaMediarecommendations?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as QueryMediaMediastudios?),
        streamingEpisodes: streamingEpisodes == _undefined
            ? _instance.streamingEpisodes
            : (streamingEpisodes as List<QueryMediaMediastreamingEpisodes?>?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as QueryMediaMediamediaListEntry?),
      ));

  CopyWithQueryMediaMediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryMediaMediatitle.stub(_then(_instance))
        : CopyWithQueryMediaMediatitle(local$title, (e) => call(title: e));
  }

  CopyWithQueryMediaMediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryMediaMediacoverImage.stub(_then(_instance))
        : CopyWithQueryMediaMediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryMediaMediastartDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWithQueryMediaMediastartDate.stub(_then(_instance))
        : CopyWithQueryMediaMediastartDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWithQueryMediaMediaendDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWithQueryMediaMediaendDate.stub(_then(_instance))
        : CopyWithQueryMediaMediaendDate(
            local$endDate, (e) => call(endDate: e));
  }

  CopyWithQueryMediaMediatrailer<TRes> get trailer {
    final local$trailer = _instance.trailer;
    return local$trailer == null
        ? CopyWithQueryMediaMediatrailer.stub(_then(_instance))
        : CopyWithQueryMediaMediatrailer(
            local$trailer, (e) => call(trailer: e));
  }

  TRes tags(
          Iterable<QueryMediaMediatags?>? Function(
                  Iterable<CopyWithQueryMediaMediatags<QueryMediaMediatags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediatags(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithQueryMediaMedianextAiringEpisode.stub(_then(_instance))
        : CopyWithQueryMediaMedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  TRes externalLinks(
          Iterable<QueryMediaMediaexternalLinks?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediaexternalLinks<
                          QueryMediaMediaexternalLinks>?>?)
              _fn) =>
      call(
          externalLinks: _fn(_instance.externalLinks?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediaexternalLinks(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWithQueryMediaMediareviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWithQueryMediaMediareviews.stub(_then(_instance))
        : CopyWithQueryMediaMediareviews(
            local$reviews, (e) => call(reviews: e));
  }

  CopyWithQueryMediaMediastats<TRes> get stats {
    final local$stats = _instance.stats;
    return local$stats == null
        ? CopyWithQueryMediaMediastats.stub(_then(_instance))
        : CopyWithQueryMediaMediastats(local$stats, (e) => call(stats: e));
  }

  CopyWithQueryMediaMediacharacters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWithQueryMediaMediacharacters.stub(_then(_instance))
        : CopyWithQueryMediaMediacharacters(
            local$characters, (e) => call(characters: e));
  }

  CopyWithQueryMediaMediastaff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWithQueryMediaMediastaff.stub(_then(_instance))
        : CopyWithQueryMediaMediastaff(local$staff, (e) => call(staff: e));
  }

  CopyWithQueryMediaMediarelations<TRes> get relations {
    final local$relations = _instance.relations;
    return local$relations == null
        ? CopyWithQueryMediaMediarelations.stub(_then(_instance))
        : CopyWithQueryMediaMediarelations(
            local$relations, (e) => call(relations: e));
  }

  CopyWithQueryMediaMediaairingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWithQueryMediaMediaairingSchedule.stub(_then(_instance))
        : CopyWithQueryMediaMediaairingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }

  CopyWithQueryMediaMediarecommendations<TRes> get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWithQueryMediaMediarecommendations.stub(_then(_instance))
        : CopyWithQueryMediaMediarecommendations(
            local$recommendations, (e) => call(recommendations: e));
  }

  CopyWithQueryMediaMediastudios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWithQueryMediaMediastudios.stub(_then(_instance))
        : CopyWithQueryMediaMediastudios(
            local$studios, (e) => call(studios: e));
  }

  TRes streamingEpisodes(
          Iterable<QueryMediaMediastreamingEpisodes?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediastreamingEpisodes<
                          QueryMediaMediastreamingEpisodes>?>?)
              _fn) =>
      call(
          streamingEpisodes:
              _fn(_instance.streamingEpisodes?.map((e) => e == null
                  ? null
                  : CopyWithQueryMediaMediastreamingEpisodes(
                      e,
                      (i) => i,
                    )))?.toList());

  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWithQueryMediaMediamediaListEntry.stub(_then(_instance))
        : CopyWithQueryMediaMediamediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImplQueryMediaMedia<TRes>
    implements CopyWithQueryMediaMedia<TRes> {
  _CopyWithStubImplQueryMediaMedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    QueryMediaMediatitle? title,
    QueryMediaMediacoverImage? coverImage,
    String? $__typename,
    String? description,
    int? idMal,
    EnumMediaSeason? season,
    int? seasonYear,
    int? duration,
    int? volumes,
    String? countryOfOrigin,
    bool? isLicensed,
    EnumMediaSource? source,
    String? hashtag,
    int? updatedAt,
    String? bannerImage,
    List<String?>? genres,
    List<String?>? synonyms,
    int? averageScore,
    int? meanScore,
    int? popularity,
    bool? isLocked,
    int? trending,
    int? favourites,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    bool? isAdult,
    String? siteUrl,
    bool? autoCreateForumThread,
    bool? isRecommendationBlocked,
    bool? isReviewBlocked,
    String? modNotes,
    QueryMediaMediastartDate? startDate,
    QueryMediaMediaendDate? endDate,
    QueryMediaMediatrailer? trailer,
    List<QueryMediaMediatags?>? tags,
    QueryMediaMedianextAiringEpisode? nextAiringEpisode,
    List<QueryMediaMediaexternalLinks?>? externalLinks,
    QueryMediaMediareviews? reviews,
    QueryMediaMediastats? stats,
    QueryMediaMediacharacters? characters,
    QueryMediaMediastaff? staff,
    QueryMediaMediarelations? relations,
    QueryMediaMediaairingSchedule? airingSchedule,
    QueryMediaMediarecommendations? recommendations,
    QueryMediaMediastudios? studios,
    List<QueryMediaMediastreamingEpisodes?>? streamingEpisodes,
    QueryMediaMediamediaListEntry? mediaListEntry,
  }) =>
      _res;

  CopyWithQueryMediaMediatitle<TRes> get title =>
      CopyWithQueryMediaMediatitle.stub(_res);

  CopyWithQueryMediaMediacoverImage<TRes> get coverImage =>
      CopyWithQueryMediaMediacoverImage.stub(_res);

  CopyWithQueryMediaMediastartDate<TRes> get startDate =>
      CopyWithQueryMediaMediastartDate.stub(_res);

  CopyWithQueryMediaMediaendDate<TRes> get endDate =>
      CopyWithQueryMediaMediaendDate.stub(_res);

  CopyWithQueryMediaMediatrailer<TRes> get trailer =>
      CopyWithQueryMediaMediatrailer.stub(_res);

  tags(_fn) => _res;

  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode =>
      CopyWithQueryMediaMedianextAiringEpisode.stub(_res);

  externalLinks(_fn) => _res;

  CopyWithQueryMediaMediareviews<TRes> get reviews =>
      CopyWithQueryMediaMediareviews.stub(_res);

  CopyWithQueryMediaMediastats<TRes> get stats =>
      CopyWithQueryMediaMediastats.stub(_res);

  CopyWithQueryMediaMediacharacters<TRes> get characters =>
      CopyWithQueryMediaMediacharacters.stub(_res);

  CopyWithQueryMediaMediastaff<TRes> get staff =>
      CopyWithQueryMediaMediastaff.stub(_res);

  CopyWithQueryMediaMediarelations<TRes> get relations =>
      CopyWithQueryMediaMediarelations.stub(_res);

  CopyWithQueryMediaMediaairingSchedule<TRes> get airingSchedule =>
      CopyWithQueryMediaMediaairingSchedule.stub(_res);

  CopyWithQueryMediaMediarecommendations<TRes> get recommendations =>
      CopyWithQueryMediaMediarecommendations.stub(_res);

  CopyWithQueryMediaMediastudios<TRes> get studios =>
      CopyWithQueryMediaMediastudios.stub(_res);

  streamingEpisodes(_fn) => _res;

  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry =>
      CopyWithQueryMediaMediamediaListEntry.stub(_res);
}

class QueryMediaMediatitle implements FragmentMediaMintitle {
  QueryMediaMediatitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory QueryMediaMediatitle.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediatitle(
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
    if (!(other is QueryMediaMediatitle) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryMediaMediatitle on QueryMediaMediatitle {
  CopyWithQueryMediaMediatitle<QueryMediaMediatitle> get copyWith =>
      CopyWithQueryMediaMediatitle(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediatitle<TRes> {
  factory CopyWithQueryMediaMediatitle(
    QueryMediaMediatitle instance,
    TRes Function(QueryMediaMediatitle) then,
  ) = _CopyWithImplQueryMediaMediatitle;

  factory CopyWithQueryMediaMediatitle.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediatitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediatitle<TRes>
    implements CopyWithQueryMediaMediatitle<TRes> {
  _CopyWithImplQueryMediaMediatitle(
    this._instance,
    this._then,
  );

  final QueryMediaMediatitle _instance;

  final TRes Function(QueryMediaMediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediatitle(
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

class _CopyWithStubImplQueryMediaMediatitle<TRes>
    implements CopyWithQueryMediaMediatitle<TRes> {
  _CopyWithStubImplQueryMediaMediatitle(this._res);

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

class QueryMediaMediacoverImage implements FragmentMediaMincoverImage {
  QueryMediaMediacoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryMediaMediacoverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediacoverImage(
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
    if (!(other is QueryMediaMediacoverImage) ||
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

extension UtilityExtensionQueryMediaMediacoverImage
    on QueryMediaMediacoverImage {
  CopyWithQueryMediaMediacoverImage<QueryMediaMediacoverImage> get copyWith =>
      CopyWithQueryMediaMediacoverImage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediacoverImage<TRes> {
  factory CopyWithQueryMediaMediacoverImage(
    QueryMediaMediacoverImage instance,
    TRes Function(QueryMediaMediacoverImage) then,
  ) = _CopyWithImplQueryMediaMediacoverImage;

  factory CopyWithQueryMediaMediacoverImage.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediacoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediacoverImage<TRes>
    implements CopyWithQueryMediaMediacoverImage<TRes> {
  _CopyWithImplQueryMediaMediacoverImage(
    this._instance,
    this._then,
  );

  final QueryMediaMediacoverImage _instance;

  final TRes Function(QueryMediaMediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediacoverImage(
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

class _CopyWithStubImplQueryMediaMediacoverImage<TRes>
    implements CopyWithQueryMediaMediacoverImage<TRes> {
  _CopyWithStubImplQueryMediaMediacoverImage(this._res);

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

class QueryMediaMediastartDate {
  QueryMediaMediastartDate({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediastartDate.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastartDate(
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
    if (!(other is QueryMediaMediastartDate) ||
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

extension UtilityExtensionQueryMediaMediastartDate on QueryMediaMediastartDate {
  CopyWithQueryMediaMediastartDate<QueryMediaMediastartDate> get copyWith =>
      CopyWithQueryMediaMediastartDate(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastartDate<TRes> {
  factory CopyWithQueryMediaMediastartDate(
    QueryMediaMediastartDate instance,
    TRes Function(QueryMediaMediastartDate) then,
  ) = _CopyWithImplQueryMediaMediastartDate;

  factory CopyWithQueryMediaMediastartDate.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastartDate;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastartDate<TRes>
    implements CopyWithQueryMediaMediastartDate<TRes> {
  _CopyWithImplQueryMediaMediastartDate(
    this._instance,
    this._then,
  );

  final QueryMediaMediastartDate _instance;

  final TRes Function(QueryMediaMediastartDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastartDate(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastartDate<TRes>
    implements CopyWithQueryMediaMediastartDate<TRes> {
  _CopyWithStubImplQueryMediaMediastartDate(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediaendDate {
  QueryMediaMediaendDate({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediaendDate.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediaendDate(
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
    if (!(other is QueryMediaMediaendDate) ||
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

extension UtilityExtensionQueryMediaMediaendDate on QueryMediaMediaendDate {
  CopyWithQueryMediaMediaendDate<QueryMediaMediaendDate> get copyWith =>
      CopyWithQueryMediaMediaendDate(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediaendDate<TRes> {
  factory CopyWithQueryMediaMediaendDate(
    QueryMediaMediaendDate instance,
    TRes Function(QueryMediaMediaendDate) then,
  ) = _CopyWithImplQueryMediaMediaendDate;

  factory CopyWithQueryMediaMediaendDate.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediaendDate;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediaendDate<TRes>
    implements CopyWithQueryMediaMediaendDate<TRes> {
  _CopyWithImplQueryMediaMediaendDate(
    this._instance,
    this._then,
  );

  final QueryMediaMediaendDate _instance;

  final TRes Function(QueryMediaMediaendDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediaendDate(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediaendDate<TRes>
    implements CopyWithQueryMediaMediaendDate<TRes> {
  _CopyWithStubImplQueryMediaMediaendDate(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediatrailer {
  QueryMediaMediatrailer({
    this.id,
    this.site,
    this.thumbnail,
    this.$__typename = 'MediaTrailer',
  });

  factory QueryMediaMediatrailer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediatrailer(
      id: (l$id as String?),
      site: (l$site as String?),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? site;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediatrailer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtensionQueryMediaMediatrailer on QueryMediaMediatrailer {
  CopyWithQueryMediaMediatrailer<QueryMediaMediatrailer> get copyWith =>
      CopyWithQueryMediaMediatrailer(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediatrailer<TRes> {
  factory CopyWithQueryMediaMediatrailer(
    QueryMediaMediatrailer instance,
    TRes Function(QueryMediaMediatrailer) then,
  ) = _CopyWithImplQueryMediaMediatrailer;

  factory CopyWithQueryMediaMediatrailer.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediatrailer;

  TRes call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediatrailer<TRes>
    implements CopyWithQueryMediaMediatrailer<TRes> {
  _CopyWithImplQueryMediaMediatrailer(
    this._instance,
    this._then,
  );

  final QueryMediaMediatrailer _instance;

  final TRes Function(QueryMediaMediatrailer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediatrailer(
        id: id == _undefined ? _instance.id : (id as String?),
        site: site == _undefined ? _instance.site : (site as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediatrailer<TRes>
    implements CopyWithQueryMediaMediatrailer<TRes> {
  _CopyWithStubImplQueryMediaMediatrailer(this._res);

  TRes _res;

  call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediatags {
  QueryMediaMediatags({
    required this.id,
    required this.name,
    this.description,
    this.$__typename = 'MediaTag',
  });

  factory QueryMediaMediatags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediatags(
      id: (l$id as int),
      name: (l$name as String),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediatags) || runtimeType != other.runtimeType) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtensionQueryMediaMediatags on QueryMediaMediatags {
  CopyWithQueryMediaMediatags<QueryMediaMediatags> get copyWith =>
      CopyWithQueryMediaMediatags(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediatags<TRes> {
  factory CopyWithQueryMediaMediatags(
    QueryMediaMediatags instance,
    TRes Function(QueryMediaMediatags) then,
  ) = _CopyWithImplQueryMediaMediatags;

  factory CopyWithQueryMediaMediatags.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediatags;

  TRes call({
    int? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediatags<TRes>
    implements CopyWithQueryMediaMediatags<TRes> {
  _CopyWithImplQueryMediaMediatags(
    this._instance,
    this._then,
  );

  final QueryMediaMediatags _instance;

  final TRes Function(QueryMediaMediatags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediatags(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediatags<TRes>
    implements CopyWithQueryMediaMediatags<TRes> {
  _CopyWithStubImplQueryMediaMediatags(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMedianextAiringEpisode {
  QueryMediaMedianextAiringEpisode({
    required this.id,
    required this.episode,
    required this.airingAt,
    required this.timeUntilAiring,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryMediaMedianextAiringEpisode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$episode = json['episode'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$$__typename = json['__typename'];
    return QueryMediaMedianextAiringEpisode(
      id: (l$id as int),
      episode: (l$episode as int),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int episode;

  final int airingAt;

  final int timeUntilAiring;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$episode = episode;
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$episode,
      l$airingAt,
      l$timeUntilAiring,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMedianextAiringEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMedianextAiringEpisode
    on QueryMediaMedianextAiringEpisode {
  CopyWithQueryMediaMedianextAiringEpisode<QueryMediaMedianextAiringEpisode>
      get copyWith => CopyWithQueryMediaMedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  factory CopyWithQueryMediaMedianextAiringEpisode(
    QueryMediaMedianextAiringEpisode instance,
    TRes Function(QueryMediaMedianextAiringEpisode) then,
  ) = _CopyWithImplQueryMediaMedianextAiringEpisode;

  factory CopyWithQueryMediaMedianextAiringEpisode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMedianextAiringEpisode;

  TRes call({
    int? id,
    int? episode,
    int? airingAt,
    int? timeUntilAiring,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMedianextAiringEpisode<TRes>
    implements CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  _CopyWithImplQueryMediaMedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final QueryMediaMedianextAiringEpisode _instance;

  final TRes Function(QueryMediaMedianextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? episode = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMedianextAiringEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMedianextAiringEpisode<TRes>
    implements CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  _CopyWithStubImplQueryMediaMedianextAiringEpisode(this._res);

  TRes _res;

  call({
    int? id,
    int? episode,
    int? airingAt,
    int? timeUntilAiring,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediaexternalLinks {
  QueryMediaMediaexternalLinks({
    required this.id,
    required this.site,
    this.url,
    this.icon,
    this.$__typename = 'MediaExternalLink',
  });

  factory QueryMediaMediaexternalLinks.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$url = json['url'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediaexternalLinks(
      id: (l$id as int),
      site: (l$site as String),
      url: (l$url as String?),
      icon: (l$icon as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String site;

  final String? url;

  final String? icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$url = url;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$url,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediaexternalLinks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtensionQueryMediaMediaexternalLinks
    on QueryMediaMediaexternalLinks {
  CopyWithQueryMediaMediaexternalLinks<QueryMediaMediaexternalLinks>
      get copyWith => CopyWithQueryMediaMediaexternalLinks(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediaexternalLinks<TRes> {
  factory CopyWithQueryMediaMediaexternalLinks(
    QueryMediaMediaexternalLinks instance,
    TRes Function(QueryMediaMediaexternalLinks) then,
  ) = _CopyWithImplQueryMediaMediaexternalLinks;

  factory CopyWithQueryMediaMediaexternalLinks.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediaexternalLinks;

  TRes call({
    int? id,
    String? site,
    String? url,
    String? icon,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediaexternalLinks<TRes>
    implements CopyWithQueryMediaMediaexternalLinks<TRes> {
  _CopyWithImplQueryMediaMediaexternalLinks(
    this._instance,
    this._then,
  );

  final QueryMediaMediaexternalLinks _instance;

  final TRes Function(QueryMediaMediaexternalLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? url = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediaexternalLinks(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        url: url == _undefined ? _instance.url : (url as String?),
        icon: icon == _undefined ? _instance.icon : (icon as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediaexternalLinks<TRes>
    implements CopyWithQueryMediaMediaexternalLinks<TRes> {
  _CopyWithStubImplQueryMediaMediaexternalLinks(this._res);

  TRes _res;

  call({
    int? id,
    String? site,
    String? url,
    String? icon,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediareviews {
  QueryMediaMediareviews({
    this.nodes,
    this.$__typename = 'ReviewConnection',
  });

  factory QueryMediaMediareviews.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediareviews(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediareviewsnodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediareviewsnodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediareviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
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
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtensionQueryMediaMediareviews on QueryMediaMediareviews {
  CopyWithQueryMediaMediareviews<QueryMediaMediareviews> get copyWith =>
      CopyWithQueryMediaMediareviews(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediareviews<TRes> {
  factory CopyWithQueryMediaMediareviews(
    QueryMediaMediareviews instance,
    TRes Function(QueryMediaMediareviews) then,
  ) = _CopyWithImplQueryMediaMediareviews;

  factory CopyWithQueryMediaMediareviews.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediareviews;

  TRes call({
    List<QueryMediaMediareviewsnodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<QueryMediaMediareviewsnodes?>? Function(
              Iterable<
                  CopyWithQueryMediaMediareviewsnodes<
                      QueryMediaMediareviewsnodes>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediareviews<TRes>
    implements CopyWithQueryMediaMediareviews<TRes> {
  _CopyWithImplQueryMediaMediareviews(
    this._instance,
    this._then,
  );

  final QueryMediaMediareviews _instance;

  final TRes Function(QueryMediaMediareviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediareviews(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<QueryMediaMediareviewsnodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<QueryMediaMediareviewsnodes?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediareviewsnodes<
                          QueryMediaMediareviewsnodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediareviewsnodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediareviews<TRes>
    implements CopyWithQueryMediaMediareviews<TRes> {
  _CopyWithStubImplQueryMediaMediareviews(this._res);

  TRes _res;

  call({
    List<QueryMediaMediareviewsnodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class QueryMediaMediareviewsnodes {
  QueryMediaMediareviewsnodes({
    required this.id,
    required this.userId,
    this.summary,
    this.$__typename = 'Review',
  });

  factory QueryMediaMediareviewsnodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$summary = json['summary'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediareviewsnodes(
      id: (l$id as int),
      userId: (l$userId as int),
      summary: (l$summary as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final String? summary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$summary = summary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$summary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediareviewsnodes) ||
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
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
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

extension UtilityExtensionQueryMediaMediareviewsnodes
    on QueryMediaMediareviewsnodes {
  CopyWithQueryMediaMediareviewsnodes<QueryMediaMediareviewsnodes>
      get copyWith => CopyWithQueryMediaMediareviewsnodes(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediareviewsnodes<TRes> {
  factory CopyWithQueryMediaMediareviewsnodes(
    QueryMediaMediareviewsnodes instance,
    TRes Function(QueryMediaMediareviewsnodes) then,
  ) = _CopyWithImplQueryMediaMediareviewsnodes;

  factory CopyWithQueryMediaMediareviewsnodes.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediareviewsnodes;

  TRes call({
    int? id,
    int? userId,
    String? summary,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediareviewsnodes<TRes>
    implements CopyWithQueryMediaMediareviewsnodes<TRes> {
  _CopyWithImplQueryMediaMediareviewsnodes(
    this._instance,
    this._then,
  );

  final QueryMediaMediareviewsnodes _instance;

  final TRes Function(QueryMediaMediareviewsnodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? summary = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediareviewsnodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediareviewsnodes<TRes>
    implements CopyWithQueryMediaMediareviewsnodes<TRes> {
  _CopyWithStubImplQueryMediaMediareviewsnodes(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    String? summary,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastats {
  QueryMediaMediastats({
    this.scoreDistribution,
    this.statusDistribution,
    this.$__typename = 'MediaStats',
  });

  factory QueryMediaMediastats.fromJson(Map<String, dynamic> json) {
    final l$scoreDistribution = json['scoreDistribution'];
    final l$statusDistribution = json['statusDistribution'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastats(
      scoreDistribution: (l$scoreDistribution as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediastatsscoreDistribution.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      statusDistribution: (l$statusDistribution as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediastatsstatusDistribution.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediastatsscoreDistribution?>? scoreDistribution;

  final List<QueryMediaMediastatsstatusDistribution?>? statusDistribution;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreDistribution = scoreDistribution;
    _resultData['scoreDistribution'] =
        l$scoreDistribution?.map((e) => e?.toJson()).toList();
    final l$statusDistribution = statusDistribution;
    _resultData['statusDistribution'] =
        l$statusDistribution?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreDistribution = scoreDistribution;
    final l$statusDistribution = statusDistribution;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreDistribution == null
          ? null
          : Object.hashAll(l$scoreDistribution.map((v) => v)),
      l$statusDistribution == null
          ? null
          : Object.hashAll(l$statusDistribution.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastats) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreDistribution = scoreDistribution;
    final lOther$scoreDistribution = other.scoreDistribution;
    if (l$scoreDistribution != null && lOther$scoreDistribution != null) {
      if (l$scoreDistribution.length != lOther$scoreDistribution.length) {
        return false;
      }
      for (int i = 0; i < l$scoreDistribution.length; i++) {
        final l$scoreDistribution$entry = l$scoreDistribution[i];
        final lOther$scoreDistribution$entry = lOther$scoreDistribution[i];
        if (l$scoreDistribution$entry != lOther$scoreDistribution$entry) {
          return false;
        }
      }
    } else if (l$scoreDistribution != lOther$scoreDistribution) {
      return false;
    }
    final l$statusDistribution = statusDistribution;
    final lOther$statusDistribution = other.statusDistribution;
    if (l$statusDistribution != null && lOther$statusDistribution != null) {
      if (l$statusDistribution.length != lOther$statusDistribution.length) {
        return false;
      }
      for (int i = 0; i < l$statusDistribution.length; i++) {
        final l$statusDistribution$entry = l$statusDistribution[i];
        final lOther$statusDistribution$entry = lOther$statusDistribution[i];
        if (l$statusDistribution$entry != lOther$statusDistribution$entry) {
          return false;
        }
      }
    } else if (l$statusDistribution != lOther$statusDistribution) {
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

extension UtilityExtensionQueryMediaMediastats on QueryMediaMediastats {
  CopyWithQueryMediaMediastats<QueryMediaMediastats> get copyWith =>
      CopyWithQueryMediaMediastats(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastats<TRes> {
  factory CopyWithQueryMediaMediastats(
    QueryMediaMediastats instance,
    TRes Function(QueryMediaMediastats) then,
  ) = _CopyWithImplQueryMediaMediastats;

  factory CopyWithQueryMediaMediastats.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastats;

  TRes call({
    List<QueryMediaMediastatsscoreDistribution?>? scoreDistribution,
    List<QueryMediaMediastatsstatusDistribution?>? statusDistribution,
    String? $__typename,
  });
  TRes scoreDistribution(
      Iterable<QueryMediaMediastatsscoreDistribution?>? Function(
              Iterable<
                  CopyWithQueryMediaMediastatsscoreDistribution<
                      QueryMediaMediastatsscoreDistribution>?>?)
          _fn);
  TRes statusDistribution(
      Iterable<QueryMediaMediastatsstatusDistribution?>? Function(
              Iterable<
                  CopyWithQueryMediaMediastatsstatusDistribution<
                      QueryMediaMediastatsstatusDistribution>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediastats<TRes>
    implements CopyWithQueryMediaMediastats<TRes> {
  _CopyWithImplQueryMediaMediastats(
    this._instance,
    this._then,
  );

  final QueryMediaMediastats _instance;

  final TRes Function(QueryMediaMediastats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreDistribution = _undefined,
    Object? statusDistribution = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastats(
        scoreDistribution: scoreDistribution == _undefined
            ? _instance.scoreDistribution
            : (scoreDistribution
                as List<QueryMediaMediastatsscoreDistribution?>?),
        statusDistribution: statusDistribution == _undefined
            ? _instance.statusDistribution
            : (statusDistribution
                as List<QueryMediaMediastatsstatusDistribution?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes scoreDistribution(
          Iterable<QueryMediaMediastatsscoreDistribution?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediastatsscoreDistribution<
                          QueryMediaMediastatsscoreDistribution>?>?)
              _fn) =>
      call(
          scoreDistribution:
              _fn(_instance.scoreDistribution?.map((e) => e == null
                  ? null
                  : CopyWithQueryMediaMediastatsscoreDistribution(
                      e,
                      (i) => i,
                    )))?.toList());

  TRes statusDistribution(
          Iterable<QueryMediaMediastatsstatusDistribution?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediastatsstatusDistribution<
                          QueryMediaMediastatsstatusDistribution>?>?)
              _fn) =>
      call(
          statusDistribution:
              _fn(_instance.statusDistribution?.map((e) => e == null
                  ? null
                  : CopyWithQueryMediaMediastatsstatusDistribution(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImplQueryMediaMediastats<TRes>
    implements CopyWithQueryMediaMediastats<TRes> {
  _CopyWithStubImplQueryMediaMediastats(this._res);

  TRes _res;

  call({
    List<QueryMediaMediastatsscoreDistribution?>? scoreDistribution,
    List<QueryMediaMediastatsstatusDistribution?>? statusDistribution,
    String? $__typename,
  }) =>
      _res;

  scoreDistribution(_fn) => _res;

  statusDistribution(_fn) => _res;
}

class QueryMediaMediastatsscoreDistribution {
  QueryMediaMediastatsscoreDistribution({
    this.amount,
    this.score,
    this.$__typename = 'ScoreDistribution',
  });

  factory QueryMediaMediastatsscoreDistribution.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$score = json['score'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastatsscoreDistribution(
      amount: (l$amount as int?),
      score: (l$score as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? amount;

  final int? score;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$score = score;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$score,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastatsscoreDistribution) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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

extension UtilityExtensionQueryMediaMediastatsscoreDistribution
    on QueryMediaMediastatsscoreDistribution {
  CopyWithQueryMediaMediastatsscoreDistribution<
          QueryMediaMediastatsscoreDistribution>
      get copyWith => CopyWithQueryMediaMediastatsscoreDistribution(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastatsscoreDistribution<TRes> {
  factory CopyWithQueryMediaMediastatsscoreDistribution(
    QueryMediaMediastatsscoreDistribution instance,
    TRes Function(QueryMediaMediastatsscoreDistribution) then,
  ) = _CopyWithImplQueryMediaMediastatsscoreDistribution;

  factory CopyWithQueryMediaMediastatsscoreDistribution.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastatsscoreDistribution;

  TRes call({
    int? amount,
    int? score,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastatsscoreDistribution<TRes>
    implements CopyWithQueryMediaMediastatsscoreDistribution<TRes> {
  _CopyWithImplQueryMediaMediastatsscoreDistribution(
    this._instance,
    this._then,
  );

  final QueryMediaMediastatsscoreDistribution _instance;

  final TRes Function(QueryMediaMediastatsscoreDistribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? score = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastatsscoreDistribution(
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastatsscoreDistribution<TRes>
    implements CopyWithQueryMediaMediastatsscoreDistribution<TRes> {
  _CopyWithStubImplQueryMediaMediastatsscoreDistribution(this._res);

  TRes _res;

  call({
    int? amount,
    int? score,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastatsstatusDistribution {
  QueryMediaMediastatsstatusDistribution({
    this.amount,
    this.status,
    this.$__typename = 'StatusDistribution',
  });

  factory QueryMediaMediastatsstatusDistribution.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastatsstatusDistribution(
      amount: (l$amount as int?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? amount;

  final EnumMediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastatsstatusDistribution) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtensionQueryMediaMediastatsstatusDistribution
    on QueryMediaMediastatsstatusDistribution {
  CopyWithQueryMediaMediastatsstatusDistribution<
          QueryMediaMediastatsstatusDistribution>
      get copyWith => CopyWithQueryMediaMediastatsstatusDistribution(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastatsstatusDistribution<TRes> {
  factory CopyWithQueryMediaMediastatsstatusDistribution(
    QueryMediaMediastatsstatusDistribution instance,
    TRes Function(QueryMediaMediastatsstatusDistribution) then,
  ) = _CopyWithImplQueryMediaMediastatsstatusDistribution;

  factory CopyWithQueryMediaMediastatsstatusDistribution.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastatsstatusDistribution;

  TRes call({
    int? amount,
    EnumMediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastatsstatusDistribution<TRes>
    implements CopyWithQueryMediaMediastatsstatusDistribution<TRes> {
  _CopyWithImplQueryMediaMediastatsstatusDistribution(
    this._instance,
    this._then,
  );

  final QueryMediaMediastatsstatusDistribution _instance;

  final TRes Function(QueryMediaMediastatsstatusDistribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastatsstatusDistribution(
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastatsstatusDistribution<TRes>
    implements CopyWithQueryMediaMediastatsstatusDistribution<TRes> {
  _CopyWithStubImplQueryMediaMediastatsstatusDistribution(this._res);

  TRes _res;

  call({
    int? amount,
    EnumMediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediacharacters {
  QueryMediaMediacharacters({
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory QueryMediaMediacharacters.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediacharacters(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediacharactersedges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediacharactersedges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediacharacters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtensionQueryMediaMediacharacters
    on QueryMediaMediacharacters {
  CopyWithQueryMediaMediacharacters<QueryMediaMediacharacters> get copyWith =>
      CopyWithQueryMediaMediacharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediacharacters<TRes> {
  factory CopyWithQueryMediaMediacharacters(
    QueryMediaMediacharacters instance,
    TRes Function(QueryMediaMediacharacters) then,
  ) = _CopyWithImplQueryMediaMediacharacters;

  factory CopyWithQueryMediaMediacharacters.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediacharacters;

  TRes call({
    List<QueryMediaMediacharactersedges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<QueryMediaMediacharactersedges?>? Function(
              Iterable<
                  CopyWithQueryMediaMediacharactersedges<
                      QueryMediaMediacharactersedges>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediacharacters<TRes>
    implements CopyWithQueryMediaMediacharacters<TRes> {
  _CopyWithImplQueryMediaMediacharacters(
    this._instance,
    this._then,
  );

  final QueryMediaMediacharacters _instance;

  final TRes Function(QueryMediaMediacharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediacharacters(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<QueryMediaMediacharactersedges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<QueryMediaMediacharactersedges?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediacharactersedges<
                          QueryMediaMediacharactersedges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediacharactersedges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediacharacters<TRes>
    implements CopyWithQueryMediaMediacharacters<TRes> {
  _CopyWithStubImplQueryMediaMediacharacters(this._res);

  TRes _res;

  call({
    List<QueryMediaMediacharactersedges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class QueryMediaMediacharactersedges {
  QueryMediaMediacharactersedges({
    this.id,
    this.name,
    this.role,
    this.node,
    this.$__typename = 'CharacterEdge',
  });

  factory QueryMediaMediacharactersedges.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$role = json['role'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediacharactersedges(
      id: (l$id as int?),
      name: (l$name as String?),
      role:
          l$role == null ? null : fromJsonEnumCharacterRole((l$role as String)),
      node: l$node == null
          ? null
          : QueryMediaMediacharactersedgesnode.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final EnumCharacterRole? role;

  final QueryMediaMediacharactersedgesnode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJsonEnumCharacterRole(l$role);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$role = role;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$role,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediacharactersedges) ||
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
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtensionQueryMediaMediacharactersedges
    on QueryMediaMediacharactersedges {
  CopyWithQueryMediaMediacharactersedges<QueryMediaMediacharactersedges>
      get copyWith => CopyWithQueryMediaMediacharactersedges(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediacharactersedges<TRes> {
  factory CopyWithQueryMediaMediacharactersedges(
    QueryMediaMediacharactersedges instance,
    TRes Function(QueryMediaMediacharactersedges) then,
  ) = _CopyWithImplQueryMediaMediacharactersedges;

  factory CopyWithQueryMediaMediacharactersedges.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediacharactersedges;

  TRes call({
    int? id,
    String? name,
    EnumCharacterRole? role,
    QueryMediaMediacharactersedgesnode? node,
    String? $__typename,
  });
  CopyWithQueryMediaMediacharactersedgesnode<TRes> get node;
}

class _CopyWithImplQueryMediaMediacharactersedges<TRes>
    implements CopyWithQueryMediaMediacharactersedges<TRes> {
  _CopyWithImplQueryMediaMediacharactersedges(
    this._instance,
    this._then,
  );

  final QueryMediaMediacharactersedges _instance;

  final TRes Function(QueryMediaMediacharactersedges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? role = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediacharactersedges(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        role:
            role == _undefined ? _instance.role : (role as EnumCharacterRole?),
        node: node == _undefined
            ? _instance.node
            : (node as QueryMediaMediacharactersedgesnode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediacharactersedgesnode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithQueryMediaMediacharactersedgesnode.stub(_then(_instance))
        : CopyWithQueryMediaMediacharactersedgesnode(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplQueryMediaMediacharactersedges<TRes>
    implements CopyWithQueryMediaMediacharactersedges<TRes> {
  _CopyWithStubImplQueryMediaMediacharactersedges(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    EnumCharacterRole? role,
    QueryMediaMediacharactersedgesnode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediacharactersedgesnode<TRes> get node =>
      CopyWithQueryMediaMediacharactersedgesnode.stub(_res);
}

class QueryMediaMediacharactersedgesnode {
  QueryMediaMediacharactersedgesnode({
    required this.id,
    this.$__typename = 'Character',
  });

  factory QueryMediaMediacharactersedgesnode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediacharactersedgesnode(
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
    if (!(other is QueryMediaMediacharactersedgesnode) ||
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

extension UtilityExtensionQueryMediaMediacharactersedgesnode
    on QueryMediaMediacharactersedgesnode {
  CopyWithQueryMediaMediacharactersedgesnode<QueryMediaMediacharactersedgesnode>
      get copyWith => CopyWithQueryMediaMediacharactersedgesnode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediacharactersedgesnode<TRes> {
  factory CopyWithQueryMediaMediacharactersedgesnode(
    QueryMediaMediacharactersedgesnode instance,
    TRes Function(QueryMediaMediacharactersedgesnode) then,
  ) = _CopyWithImplQueryMediaMediacharactersedgesnode;

  factory CopyWithQueryMediaMediacharactersedgesnode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediacharactersedgesnode;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediacharactersedgesnode<TRes>
    implements CopyWithQueryMediaMediacharactersedgesnode<TRes> {
  _CopyWithImplQueryMediaMediacharactersedgesnode(
    this._instance,
    this._then,
  );

  final QueryMediaMediacharactersedgesnode _instance;

  final TRes Function(QueryMediaMediacharactersedgesnode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediacharactersedgesnode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediacharactersedgesnode<TRes>
    implements CopyWithQueryMediaMediacharactersedgesnode<TRes> {
  _CopyWithStubImplQueryMediaMediacharactersedgesnode(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastaff {
  QueryMediaMediastaff({
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory QueryMediaMediastaff.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastaff(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediastaffedges.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediastaffedges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastaff) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtensionQueryMediaMediastaff on QueryMediaMediastaff {
  CopyWithQueryMediaMediastaff<QueryMediaMediastaff> get copyWith =>
      CopyWithQueryMediaMediastaff(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastaff<TRes> {
  factory CopyWithQueryMediaMediastaff(
    QueryMediaMediastaff instance,
    TRes Function(QueryMediaMediastaff) then,
  ) = _CopyWithImplQueryMediaMediastaff;

  factory CopyWithQueryMediaMediastaff.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastaff;

  TRes call({
    List<QueryMediaMediastaffedges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<QueryMediaMediastaffedges?>? Function(
              Iterable<
                  CopyWithQueryMediaMediastaffedges<
                      QueryMediaMediastaffedges>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediastaff<TRes>
    implements CopyWithQueryMediaMediastaff<TRes> {
  _CopyWithImplQueryMediaMediastaff(
    this._instance,
    this._then,
  );

  final QueryMediaMediastaff _instance;

  final TRes Function(QueryMediaMediastaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastaff(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<QueryMediaMediastaffedges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<QueryMediaMediastaffedges?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediastaffedges<
                          QueryMediaMediastaffedges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediastaffedges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediastaff<TRes>
    implements CopyWithQueryMediaMediastaff<TRes> {
  _CopyWithStubImplQueryMediaMediastaff(this._res);

  TRes _res;

  call({
    List<QueryMediaMediastaffedges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class QueryMediaMediastaffedges {
  QueryMediaMediastaffedges({
    this.id,
    this.role,
    this.favouriteOrder,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory QueryMediaMediastaffedges.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$role = json['role'];
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastaffedges(
      id: (l$id as int?),
      role: (l$role as String?),
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : QueryMediaMediastaffedgesnode.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? role;

  final int? favouriteOrder;

  final QueryMediaMediastaffedgesnode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$role = role;
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$role,
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastaffedges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtensionQueryMediaMediastaffedges
    on QueryMediaMediastaffedges {
  CopyWithQueryMediaMediastaffedges<QueryMediaMediastaffedges> get copyWith =>
      CopyWithQueryMediaMediastaffedges(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastaffedges<TRes> {
  factory CopyWithQueryMediaMediastaffedges(
    QueryMediaMediastaffedges instance,
    TRes Function(QueryMediaMediastaffedges) then,
  ) = _CopyWithImplQueryMediaMediastaffedges;

  factory CopyWithQueryMediaMediastaffedges.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastaffedges;

  TRes call({
    int? id,
    String? role,
    int? favouriteOrder,
    QueryMediaMediastaffedgesnode? node,
    String? $__typename,
  });
  CopyWithQueryMediaMediastaffedgesnode<TRes> get node;
}

class _CopyWithImplQueryMediaMediastaffedges<TRes>
    implements CopyWithQueryMediaMediastaffedges<TRes> {
  _CopyWithImplQueryMediaMediastaffedges(
    this._instance,
    this._then,
  );

  final QueryMediaMediastaffedges _instance;

  final TRes Function(QueryMediaMediastaffedges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? role = _undefined,
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastaffedges(
        id: id == _undefined ? _instance.id : (id as int?),
        role: role == _undefined ? _instance.role : (role as String?),
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as QueryMediaMediastaffedgesnode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediastaffedgesnode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithQueryMediaMediastaffedgesnode.stub(_then(_instance))
        : CopyWithQueryMediaMediastaffedgesnode(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplQueryMediaMediastaffedges<TRes>
    implements CopyWithQueryMediaMediastaffedges<TRes> {
  _CopyWithStubImplQueryMediaMediastaffedges(this._res);

  TRes _res;

  call({
    int? id,
    String? role,
    int? favouriteOrder,
    QueryMediaMediastaffedgesnode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediastaffedgesnode<TRes> get node =>
      CopyWithQueryMediaMediastaffedgesnode.stub(_res);
}

class QueryMediaMediastaffedgesnode {
  QueryMediaMediastaffedgesnode({
    required this.id,
    this.$__typename = 'Staff',
  });

  factory QueryMediaMediastaffedgesnode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastaffedgesnode(
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
    if (!(other is QueryMediaMediastaffedgesnode) ||
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

extension UtilityExtensionQueryMediaMediastaffedgesnode
    on QueryMediaMediastaffedgesnode {
  CopyWithQueryMediaMediastaffedgesnode<QueryMediaMediastaffedgesnode>
      get copyWith => CopyWithQueryMediaMediastaffedgesnode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastaffedgesnode<TRes> {
  factory CopyWithQueryMediaMediastaffedgesnode(
    QueryMediaMediastaffedgesnode instance,
    TRes Function(QueryMediaMediastaffedgesnode) then,
  ) = _CopyWithImplQueryMediaMediastaffedgesnode;

  factory CopyWithQueryMediaMediastaffedgesnode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastaffedgesnode;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastaffedgesnode<TRes>
    implements CopyWithQueryMediaMediastaffedgesnode<TRes> {
  _CopyWithImplQueryMediaMediastaffedgesnode(
    this._instance,
    this._then,
  );

  final QueryMediaMediastaffedgesnode _instance;

  final TRes Function(QueryMediaMediastaffedgesnode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastaffedgesnode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastaffedgesnode<TRes>
    implements CopyWithQueryMediaMediastaffedgesnode<TRes> {
  _CopyWithStubImplQueryMediaMediastaffedgesnode(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediarelations {
  QueryMediaMediarelations({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory QueryMediaMediarelations.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarelations(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediarelationsedges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediarelationsedges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediarelations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtensionQueryMediaMediarelations on QueryMediaMediarelations {
  CopyWithQueryMediaMediarelations<QueryMediaMediarelations> get copyWith =>
      CopyWithQueryMediaMediarelations(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediarelations<TRes> {
  factory CopyWithQueryMediaMediarelations(
    QueryMediaMediarelations instance,
    TRes Function(QueryMediaMediarelations) then,
  ) = _CopyWithImplQueryMediaMediarelations;

  factory CopyWithQueryMediaMediarelations.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarelations;

  TRes call({
    List<QueryMediaMediarelationsedges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<QueryMediaMediarelationsedges?>? Function(
              Iterable<
                  CopyWithQueryMediaMediarelationsedges<
                      QueryMediaMediarelationsedges>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediarelations<TRes>
    implements CopyWithQueryMediaMediarelations<TRes> {
  _CopyWithImplQueryMediaMediarelations(
    this._instance,
    this._then,
  );

  final QueryMediaMediarelations _instance;

  final TRes Function(QueryMediaMediarelations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarelations(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<QueryMediaMediarelationsedges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<QueryMediaMediarelationsedges?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediarelationsedges<
                          QueryMediaMediarelationsedges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediarelationsedges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediarelations<TRes>
    implements CopyWithQueryMediaMediarelations<TRes> {
  _CopyWithStubImplQueryMediaMediarelations(this._res);

  TRes _res;

  call({
    List<QueryMediaMediarelationsedges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class QueryMediaMediarelationsedges {
  QueryMediaMediarelationsedges({
    this.id,
    this.relationType,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory QueryMediaMediarelationsedges.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$relationType = json['relationType'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarelationsedges(
      id: (l$id as int?),
      relationType: l$relationType == null
          ? null
          : fromJsonEnumMediaRelation((l$relationType as String)),
      node: l$node == null
          ? null
          : QueryMediaMediarelationsedgesnode.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final EnumMediaRelation? relationType;

  final QueryMediaMediarelationsedgesnode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$relationType = relationType;
    _resultData['relationType'] =
        l$relationType == null ? null : toJsonEnumMediaRelation(l$relationType);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relationType = relationType;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$relationType,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediarelationsedges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relationType = relationType;
    final lOther$relationType = other.relationType;
    if (l$relationType != lOther$relationType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtensionQueryMediaMediarelationsedges
    on QueryMediaMediarelationsedges {
  CopyWithQueryMediaMediarelationsedges<QueryMediaMediarelationsedges>
      get copyWith => CopyWithQueryMediaMediarelationsedges(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarelationsedges<TRes> {
  factory CopyWithQueryMediaMediarelationsedges(
    QueryMediaMediarelationsedges instance,
    TRes Function(QueryMediaMediarelationsedges) then,
  ) = _CopyWithImplQueryMediaMediarelationsedges;

  factory CopyWithQueryMediaMediarelationsedges.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarelationsedges;

  TRes call({
    int? id,
    EnumMediaRelation? relationType,
    QueryMediaMediarelationsedgesnode? node,
    String? $__typename,
  });
  CopyWithQueryMediaMediarelationsedgesnode<TRes> get node;
}

class _CopyWithImplQueryMediaMediarelationsedges<TRes>
    implements CopyWithQueryMediaMediarelationsedges<TRes> {
  _CopyWithImplQueryMediaMediarelationsedges(
    this._instance,
    this._then,
  );

  final QueryMediaMediarelationsedges _instance;

  final TRes Function(QueryMediaMediarelationsedges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationType = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarelationsedges(
        id: id == _undefined ? _instance.id : (id as int?),
        relationType: relationType == _undefined
            ? _instance.relationType
            : (relationType as EnumMediaRelation?),
        node: node == _undefined
            ? _instance.node
            : (node as QueryMediaMediarelationsedgesnode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediarelationsedgesnode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithQueryMediaMediarelationsedgesnode.stub(_then(_instance))
        : CopyWithQueryMediaMediarelationsedgesnode(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplQueryMediaMediarelationsedges<TRes>
    implements CopyWithQueryMediaMediarelationsedges<TRes> {
  _CopyWithStubImplQueryMediaMediarelationsedges(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaRelation? relationType,
    QueryMediaMediarelationsedgesnode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediarelationsedgesnode<TRes> get node =>
      CopyWithQueryMediaMediarelationsedgesnode.stub(_res);
}

class QueryMediaMediarelationsedgesnode {
  QueryMediaMediarelationsedgesnode({
    required this.id,
    this.$__typename = 'Media',
  });

  factory QueryMediaMediarelationsedgesnode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarelationsedgesnode(
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
    if (!(other is QueryMediaMediarelationsedgesnode) ||
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

extension UtilityExtensionQueryMediaMediarelationsedgesnode
    on QueryMediaMediarelationsedgesnode {
  CopyWithQueryMediaMediarelationsedgesnode<QueryMediaMediarelationsedgesnode>
      get copyWith => CopyWithQueryMediaMediarelationsedgesnode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarelationsedgesnode<TRes> {
  factory CopyWithQueryMediaMediarelationsedgesnode(
    QueryMediaMediarelationsedgesnode instance,
    TRes Function(QueryMediaMediarelationsedgesnode) then,
  ) = _CopyWithImplQueryMediaMediarelationsedgesnode;

  factory CopyWithQueryMediaMediarelationsedgesnode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarelationsedgesnode;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediarelationsedgesnode<TRes>
    implements CopyWithQueryMediaMediarelationsedgesnode<TRes> {
  _CopyWithImplQueryMediaMediarelationsedgesnode(
    this._instance,
    this._then,
  );

  final QueryMediaMediarelationsedgesnode _instance;

  final TRes Function(QueryMediaMediarelationsedgesnode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarelationsedgesnode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediarelationsedgesnode<TRes>
    implements CopyWithQueryMediaMediarelationsedgesnode<TRes> {
  _CopyWithStubImplQueryMediaMediarelationsedgesnode(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediaairingSchedule {
  QueryMediaMediaairingSchedule({
    this.nodes,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory QueryMediaMediaairingSchedule.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediaairingSchedule(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediaairingSchedulenodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediaairingSchedulenodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediaairingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
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
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtensionQueryMediaMediaairingSchedule
    on QueryMediaMediaairingSchedule {
  CopyWithQueryMediaMediaairingSchedule<QueryMediaMediaairingSchedule>
      get copyWith => CopyWithQueryMediaMediaairingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediaairingSchedule<TRes> {
  factory CopyWithQueryMediaMediaairingSchedule(
    QueryMediaMediaairingSchedule instance,
    TRes Function(QueryMediaMediaairingSchedule) then,
  ) = _CopyWithImplQueryMediaMediaairingSchedule;

  factory CopyWithQueryMediaMediaairingSchedule.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediaairingSchedule;

  TRes call({
    List<QueryMediaMediaairingSchedulenodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<QueryMediaMediaairingSchedulenodes?>? Function(
              Iterable<
                  CopyWithQueryMediaMediaairingSchedulenodes<
                      QueryMediaMediaairingSchedulenodes>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediaairingSchedule<TRes>
    implements CopyWithQueryMediaMediaairingSchedule<TRes> {
  _CopyWithImplQueryMediaMediaairingSchedule(
    this._instance,
    this._then,
  );

  final QueryMediaMediaairingSchedule _instance;

  final TRes Function(QueryMediaMediaairingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediaairingSchedule(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<QueryMediaMediaairingSchedulenodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<QueryMediaMediaairingSchedulenodes?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediaairingSchedulenodes<
                          QueryMediaMediaairingSchedulenodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediaairingSchedulenodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediaairingSchedule<TRes>
    implements CopyWithQueryMediaMediaairingSchedule<TRes> {
  _CopyWithStubImplQueryMediaMediaairingSchedule(this._res);

  TRes _res;

  call({
    List<QueryMediaMediaairingSchedulenodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class QueryMediaMediaairingSchedulenodes {
  QueryMediaMediaairingSchedulenodes({
    required this.id,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    required this.mediaId,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryMediaMediaairingSchedulenodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$mediaId = json['mediaId'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediaairingSchedulenodes(
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
    if (!(other is QueryMediaMediaairingSchedulenodes) ||
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

extension UtilityExtensionQueryMediaMediaairingSchedulenodes
    on QueryMediaMediaairingSchedulenodes {
  CopyWithQueryMediaMediaairingSchedulenodes<QueryMediaMediaairingSchedulenodes>
      get copyWith => CopyWithQueryMediaMediaairingSchedulenodes(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediaairingSchedulenodes<TRes> {
  factory CopyWithQueryMediaMediaairingSchedulenodes(
    QueryMediaMediaairingSchedulenodes instance,
    TRes Function(QueryMediaMediaairingSchedulenodes) then,
  ) = _CopyWithImplQueryMediaMediaairingSchedulenodes;

  factory CopyWithQueryMediaMediaairingSchedulenodes.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediaairingSchedulenodes;

  TRes call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    int? mediaId,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediaairingSchedulenodes<TRes>
    implements CopyWithQueryMediaMediaairingSchedulenodes<TRes> {
  _CopyWithImplQueryMediaMediaairingSchedulenodes(
    this._instance,
    this._then,
  );

  final QueryMediaMediaairingSchedulenodes _instance;

  final TRes Function(QueryMediaMediaairingSchedulenodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? mediaId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediaairingSchedulenodes(
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

class _CopyWithStubImplQueryMediaMediaairingSchedulenodes<TRes>
    implements CopyWithQueryMediaMediaairingSchedulenodes<TRes> {
  _CopyWithStubImplQueryMediaMediaairingSchedulenodes(this._res);

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

class QueryMediaMediarecommendations {
  QueryMediaMediarecommendations({
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory QueryMediaMediarecommendations.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarecommendations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediarecommendationsnodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediarecommendationsnodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediarecommendations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
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
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtensionQueryMediaMediarecommendations
    on QueryMediaMediarecommendations {
  CopyWithQueryMediaMediarecommendations<QueryMediaMediarecommendations>
      get copyWith => CopyWithQueryMediaMediarecommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarecommendations<TRes> {
  factory CopyWithQueryMediaMediarecommendations(
    QueryMediaMediarecommendations instance,
    TRes Function(QueryMediaMediarecommendations) then,
  ) = _CopyWithImplQueryMediaMediarecommendations;

  factory CopyWithQueryMediaMediarecommendations.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarecommendations;

  TRes call({
    List<QueryMediaMediarecommendationsnodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<QueryMediaMediarecommendationsnodes?>? Function(
              Iterable<
                  CopyWithQueryMediaMediarecommendationsnodes<
                      QueryMediaMediarecommendationsnodes>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediarecommendations<TRes>
    implements CopyWithQueryMediaMediarecommendations<TRes> {
  _CopyWithImplQueryMediaMediarecommendations(
    this._instance,
    this._then,
  );

  final QueryMediaMediarecommendations _instance;

  final TRes Function(QueryMediaMediarecommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarecommendations(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<QueryMediaMediarecommendationsnodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<QueryMediaMediarecommendationsnodes?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediarecommendationsnodes<
                          QueryMediaMediarecommendationsnodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediarecommendationsnodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediarecommendations<TRes>
    implements CopyWithQueryMediaMediarecommendations<TRes> {
  _CopyWithStubImplQueryMediaMediarecommendations(this._res);

  TRes _res;

  call({
    List<QueryMediaMediarecommendationsnodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class QueryMediaMediarecommendationsnodes {
  QueryMediaMediarecommendationsnodes({
    required this.id,
    this.rating,
    this.userRating,
    this.mediaRecommendation,
    this.user,
    this.$__typename = 'Recommendation',
  });

  factory QueryMediaMediarecommendationsnodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$userRating = json['userRating'];
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarecommendationsnodes(
      id: (l$id as int),
      rating: (l$rating as int?),
      userRating: l$userRating == null
          ? null
          : fromJsonEnumRecommendationRating((l$userRating as String)),
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : QueryMediaMediarecommendationsnodesmediaRecommendation.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryMediaMediarecommendationsnodesuser.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final EnumRecommendationRating? userRating;

  final QueryMediaMediarecommendationsnodesmediaRecommendation?
      mediaRecommendation;

  final QueryMediaMediarecommendationsnodesuser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$userRating = userRating;
    _resultData['userRating'] = l$userRating == null
        ? null
        : toJsonEnumRecommendationRating(l$userRating);
    final l$mediaRecommendation = mediaRecommendation;
    _resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$userRating = userRating;
    final l$mediaRecommendation = mediaRecommendation;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$userRating,
      l$mediaRecommendation,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediarecommendationsnodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$mediaRecommendation = mediaRecommendation;
    final lOther$mediaRecommendation = other.mediaRecommendation;
    if (l$mediaRecommendation != lOther$mediaRecommendation) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryMediaMediarecommendationsnodes
    on QueryMediaMediarecommendationsnodes {
  CopyWithQueryMediaMediarecommendationsnodes<
          QueryMediaMediarecommendationsnodes>
      get copyWith => CopyWithQueryMediaMediarecommendationsnodes(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarecommendationsnodes<TRes> {
  factory CopyWithQueryMediaMediarecommendationsnodes(
    QueryMediaMediarecommendationsnodes instance,
    TRes Function(QueryMediaMediarecommendationsnodes) then,
  ) = _CopyWithImplQueryMediaMediarecommendationsnodes;

  factory CopyWithQueryMediaMediarecommendationsnodes.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarecommendationsnodes;

  TRes call({
    int? id,
    int? rating,
    EnumRecommendationRating? userRating,
    QueryMediaMediarecommendationsnodesmediaRecommendation? mediaRecommendation,
    QueryMediaMediarecommendationsnodesuser? user,
    String? $__typename,
  });
  CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<TRes>
      get mediaRecommendation;
  CopyWithQueryMediaMediarecommendationsnodesuser<TRes> get user;
}

class _CopyWithImplQueryMediaMediarecommendationsnodes<TRes>
    implements CopyWithQueryMediaMediarecommendationsnodes<TRes> {
  _CopyWithImplQueryMediaMediarecommendationsnodes(
    this._instance,
    this._then,
  );

  final QueryMediaMediarecommendationsnodes _instance;

  final TRes Function(QueryMediaMediarecommendationsnodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? userRating = _undefined,
    Object? mediaRecommendation = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarecommendationsnodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as EnumRecommendationRating?),
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation
                as QueryMediaMediarecommendationsnodesmediaRecommendation?),
        user: user == _undefined
            ? _instance.user
            : (user as QueryMediaMediarecommendationsnodesuser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<TRes>
      get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation.stub(
            _then(_instance))
        : CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }

  CopyWithQueryMediaMediarecommendationsnodesuser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryMediaMediarecommendationsnodesuser.stub(_then(_instance))
        : CopyWithQueryMediaMediarecommendationsnodesuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryMediaMediarecommendationsnodes<TRes>
    implements CopyWithQueryMediaMediarecommendationsnodes<TRes> {
  _CopyWithStubImplQueryMediaMediarecommendationsnodes(this._res);

  TRes _res;

  call({
    int? id,
    int? rating,
    EnumRecommendationRating? userRating,
    QueryMediaMediarecommendationsnodesmediaRecommendation? mediaRecommendation,
    QueryMediaMediarecommendationsnodesuser? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<TRes>
      get mediaRecommendation =>
          CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation.stub(
              _res);

  CopyWithQueryMediaMediarecommendationsnodesuser<TRes> get user =>
      CopyWithQueryMediaMediarecommendationsnodesuser.stub(_res);
}

class QueryMediaMediarecommendationsnodesmediaRecommendation {
  QueryMediaMediarecommendationsnodesmediaRecommendation({
    required this.id,
    this.$__typename = 'Media',
  });

  factory QueryMediaMediarecommendationsnodesmediaRecommendation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarecommendationsnodesmediaRecommendation(
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
    if (!(other is QueryMediaMediarecommendationsnodesmediaRecommendation) ||
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

extension UtilityExtensionQueryMediaMediarecommendationsnodesmediaRecommendation
    on QueryMediaMediarecommendationsnodesmediaRecommendation {
  CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<
          QueryMediaMediarecommendationsnodesmediaRecommendation>
      get copyWith =>
          CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<
    TRes> {
  factory CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation(
    QueryMediaMediarecommendationsnodesmediaRecommendation instance,
    TRes Function(QueryMediaMediarecommendationsnodesmediaRecommendation) then,
  ) = _CopyWithImplQueryMediaMediarecommendationsnodesmediaRecommendation;

  factory CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation.stub(
          TRes res) =
      _CopyWithStubImplQueryMediaMediarecommendationsnodesmediaRecommendation;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediarecommendationsnodesmediaRecommendation<TRes>
    implements
        CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<TRes> {
  _CopyWithImplQueryMediaMediarecommendationsnodesmediaRecommendation(
    this._instance,
    this._then,
  );

  final QueryMediaMediarecommendationsnodesmediaRecommendation _instance;

  final TRes Function(QueryMediaMediarecommendationsnodesmediaRecommendation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarecommendationsnodesmediaRecommendation(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediarecommendationsnodesmediaRecommendation<
        TRes>
    implements
        CopyWithQueryMediaMediarecommendationsnodesmediaRecommendation<TRes> {
  _CopyWithStubImplQueryMediaMediarecommendationsnodesmediaRecommendation(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediarecommendationsnodesuser {
  QueryMediaMediarecommendationsnodesuser({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory QueryMediaMediarecommendationsnodesuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediarecommendationsnodesuser(
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
    if (!(other is QueryMediaMediarecommendationsnodesuser) ||
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

extension UtilityExtensionQueryMediaMediarecommendationsnodesuser
    on QueryMediaMediarecommendationsnodesuser {
  CopyWithQueryMediaMediarecommendationsnodesuser<
          QueryMediaMediarecommendationsnodesuser>
      get copyWith => CopyWithQueryMediaMediarecommendationsnodesuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediarecommendationsnodesuser<TRes> {
  factory CopyWithQueryMediaMediarecommendationsnodesuser(
    QueryMediaMediarecommendationsnodesuser instance,
    TRes Function(QueryMediaMediarecommendationsnodesuser) then,
  ) = _CopyWithImplQueryMediaMediarecommendationsnodesuser;

  factory CopyWithQueryMediaMediarecommendationsnodesuser.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediarecommendationsnodesuser;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediarecommendationsnodesuser<TRes>
    implements CopyWithQueryMediaMediarecommendationsnodesuser<TRes> {
  _CopyWithImplQueryMediaMediarecommendationsnodesuser(
    this._instance,
    this._then,
  );

  final QueryMediaMediarecommendationsnodesuser _instance;

  final TRes Function(QueryMediaMediarecommendationsnodesuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediarecommendationsnodesuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediarecommendationsnodesuser<TRes>
    implements CopyWithQueryMediaMediarecommendationsnodesuser<TRes> {
  _CopyWithStubImplQueryMediaMediarecommendationsnodesuser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastudios {
  QueryMediaMediastudios({
    this.edges,
    this.$__typename = 'StudioConnection',
  });

  factory QueryMediaMediastudios.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastudios(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediastudiosedges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryMediaMediastudiosedges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastudios) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtensionQueryMediaMediastudios on QueryMediaMediastudios {
  CopyWithQueryMediaMediastudios<QueryMediaMediastudios> get copyWith =>
      CopyWithQueryMediaMediastudios(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastudios<TRes> {
  factory CopyWithQueryMediaMediastudios(
    QueryMediaMediastudios instance,
    TRes Function(QueryMediaMediastudios) then,
  ) = _CopyWithImplQueryMediaMediastudios;

  factory CopyWithQueryMediaMediastudios.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastudios;

  TRes call({
    List<QueryMediaMediastudiosedges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<QueryMediaMediastudiosedges?>? Function(
              Iterable<
                  CopyWithQueryMediaMediastudiosedges<
                      QueryMediaMediastudiosedges>?>?)
          _fn);
}

class _CopyWithImplQueryMediaMediastudios<TRes>
    implements CopyWithQueryMediaMediastudios<TRes> {
  _CopyWithImplQueryMediaMediastudios(
    this._instance,
    this._then,
  );

  final QueryMediaMediastudios _instance;

  final TRes Function(QueryMediaMediastudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastudios(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<QueryMediaMediastudiosedges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<QueryMediaMediastudiosedges?>? Function(
                  Iterable<
                      CopyWithQueryMediaMediastudiosedges<
                          QueryMediaMediastudiosedges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediastudiosedges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryMediaMediastudios<TRes>
    implements CopyWithQueryMediaMediastudios<TRes> {
  _CopyWithStubImplQueryMediaMediastudios(this._res);

  TRes _res;

  call({
    List<QueryMediaMediastudiosedges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class QueryMediaMediastudiosedges {
  QueryMediaMediastudiosedges({
    this.id,
    required this.isMain,
    this.node,
    this.$__typename = 'StudioEdge',
  });

  factory QueryMediaMediastudiosedges.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$isMain = json['isMain'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastudiosedges(
      id: (l$id as int?),
      isMain: (l$isMain as bool),
      node: l$node == null
          ? null
          : QueryMediaMediastudiosedgesnode.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final bool isMain;

  final QueryMediaMediastudiosedgesnode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isMain = isMain;
    _resultData['isMain'] = l$isMain;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isMain = isMain;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isMain,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastudiosedges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isMain = isMain;
    final lOther$isMain = other.isMain;
    if (l$isMain != lOther$isMain) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtensionQueryMediaMediastudiosedges
    on QueryMediaMediastudiosedges {
  CopyWithQueryMediaMediastudiosedges<QueryMediaMediastudiosedges>
      get copyWith => CopyWithQueryMediaMediastudiosedges(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastudiosedges<TRes> {
  factory CopyWithQueryMediaMediastudiosedges(
    QueryMediaMediastudiosedges instance,
    TRes Function(QueryMediaMediastudiosedges) then,
  ) = _CopyWithImplQueryMediaMediastudiosedges;

  factory CopyWithQueryMediaMediastudiosedges.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastudiosedges;

  TRes call({
    int? id,
    bool? isMain,
    QueryMediaMediastudiosedgesnode? node,
    String? $__typename,
  });
  CopyWithQueryMediaMediastudiosedgesnode<TRes> get node;
}

class _CopyWithImplQueryMediaMediastudiosedges<TRes>
    implements CopyWithQueryMediaMediastudiosedges<TRes> {
  _CopyWithImplQueryMediaMediastudiosedges(
    this._instance,
    this._then,
  );

  final QueryMediaMediastudiosedges _instance;

  final TRes Function(QueryMediaMediastudiosedges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isMain = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastudiosedges(
        id: id == _undefined ? _instance.id : (id as int?),
        isMain: isMain == _undefined || isMain == null
            ? _instance.isMain
            : (isMain as bool),
        node: node == _undefined
            ? _instance.node
            : (node as QueryMediaMediastudiosedgesnode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediastudiosedgesnode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWithQueryMediaMediastudiosedgesnode.stub(_then(_instance))
        : CopyWithQueryMediaMediastudiosedgesnode(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImplQueryMediaMediastudiosedges<TRes>
    implements CopyWithQueryMediaMediastudiosedges<TRes> {
  _CopyWithStubImplQueryMediaMediastudiosedges(this._res);

  TRes _res;

  call({
    int? id,
    bool? isMain,
    QueryMediaMediastudiosedgesnode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediastudiosedgesnode<TRes> get node =>
      CopyWithQueryMediaMediastudiosedgesnode.stub(_res);
}

class QueryMediaMediastudiosedgesnode {
  QueryMediaMediastudiosedgesnode({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
  });

  factory QueryMediaMediastudiosedgesnode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastudiosedgesnode(
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
    if (!(other is QueryMediaMediastudiosedgesnode) ||
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

extension UtilityExtensionQueryMediaMediastudiosedgesnode
    on QueryMediaMediastudiosedgesnode {
  CopyWithQueryMediaMediastudiosedgesnode<QueryMediaMediastudiosedgesnode>
      get copyWith => CopyWithQueryMediaMediastudiosedgesnode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastudiosedgesnode<TRes> {
  factory CopyWithQueryMediaMediastudiosedgesnode(
    QueryMediaMediastudiosedgesnode instance,
    TRes Function(QueryMediaMediastudiosedgesnode) then,
  ) = _CopyWithImplQueryMediaMediastudiosedgesnode;

  factory CopyWithQueryMediaMediastudiosedgesnode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastudiosedgesnode;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastudiosedgesnode<TRes>
    implements CopyWithQueryMediaMediastudiosedgesnode<TRes> {
  _CopyWithImplQueryMediaMediastudiosedgesnode(
    this._instance,
    this._then,
  );

  final QueryMediaMediastudiosedgesnode _instance;

  final TRes Function(QueryMediaMediastudiosedgesnode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastudiosedgesnode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastudiosedgesnode<TRes>
    implements CopyWithQueryMediaMediastudiosedgesnode<TRes> {
  _CopyWithStubImplQueryMediaMediastudiosedgesnode(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastreamingEpisodes {
  QueryMediaMediastreamingEpisodes({
    this.title,
    this.url,
    this.site,
    this.thumbnail,
    this.$__typename = 'MediaStreamingEpisode',
  });

  factory QueryMediaMediastreamingEpisodes.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$url = json['url'];
    final l$site = json['site'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastreamingEpisodes(
      title: (l$title as String?),
      url: (l$url as String?),
      site: (l$site as String?),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String? url;

  final String? site;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$url = url;
    final l$site = site;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$url,
      l$site,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediastreamingEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtensionQueryMediaMediastreamingEpisodes
    on QueryMediaMediastreamingEpisodes {
  CopyWithQueryMediaMediastreamingEpisodes<QueryMediaMediastreamingEpisodes>
      get copyWith => CopyWithQueryMediaMediastreamingEpisodes(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediastreamingEpisodes<TRes> {
  factory CopyWithQueryMediaMediastreamingEpisodes(
    QueryMediaMediastreamingEpisodes instance,
    TRes Function(QueryMediaMediastreamingEpisodes) then,
  ) = _CopyWithImplQueryMediaMediastreamingEpisodes;

  factory CopyWithQueryMediaMediastreamingEpisodes.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastreamingEpisodes;

  TRes call({
    String? title,
    String? url,
    String? site,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastreamingEpisodes<TRes>
    implements CopyWithQueryMediaMediastreamingEpisodes<TRes> {
  _CopyWithImplQueryMediaMediastreamingEpisodes(
    this._instance,
    this._then,
  );

  final QueryMediaMediastreamingEpisodes _instance;

  final TRes Function(QueryMediaMediastreamingEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? url = _undefined,
    Object? site = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastreamingEpisodes(
        title: title == _undefined ? _instance.title : (title as String?),
        url: url == _undefined ? _instance.url : (url as String?),
        site: site == _undefined ? _instance.site : (site as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastreamingEpisodes<TRes>
    implements CopyWithQueryMediaMediastreamingEpisodes<TRes> {
  _CopyWithStubImplQueryMediaMediastreamingEpisodes(this._res);

  TRes _res;

  call({
    String? title,
    String? url,
    String? site,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediamediaListEntry {
  QueryMediaMediamediaListEntry({
    required this.id,
    required this.userId,
    this.score,
    this.status,
    this.progress,
    this.$__typename = 'MediaList',
  });

  factory QueryMediaMediamediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$score = json['score'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediamediaListEntry(
      id: (l$id as int),
      userId: (l$userId as int),
      score: (l$score as num?)?.toDouble(),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      progress: (l$progress as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final double? score;

  final EnumMediaListStatus? status;

  final int? progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$score = score;
    final l$status = status;
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$score,
      l$status,
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediamediaListEntry) ||
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
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMediamediaListEntry
    on QueryMediaMediamediaListEntry {
  CopyWithQueryMediaMediamediaListEntry<QueryMediaMediamediaListEntry>
      get copyWith => CopyWithQueryMediaMediamediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediamediaListEntry<TRes> {
  factory CopyWithQueryMediaMediamediaListEntry(
    QueryMediaMediamediaListEntry instance,
    TRes Function(QueryMediaMediamediaListEntry) then,
  ) = _CopyWithImplQueryMediaMediamediaListEntry;

  factory CopyWithQueryMediaMediamediaListEntry.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediamediaListEntry;

  TRes call({
    int? id,
    int? userId,
    double? score,
    EnumMediaListStatus? status,
    int? progress,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediamediaListEntry<TRes>
    implements CopyWithQueryMediaMediamediaListEntry<TRes> {
  _CopyWithImplQueryMediaMediamediaListEntry(
    this._instance,
    this._then,
  );

  final QueryMediaMediamediaListEntry _instance;

  final TRes Function(QueryMediaMediamediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? score = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediamediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        score: score == _undefined ? _instance.score : (score as double?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediamediaListEntry<TRes>
    implements CopyWithQueryMediaMediamediaListEntry<TRes> {
  _CopyWithStubImplQueryMediaMediamediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    double? score,
    EnumMediaListStatus? status,
    int? progress,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryPaginatedMedia {
  factory VariablesQueryPaginatedMedia({
    int? page,
    int? perPage,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? genre,
    String? tag,
    bool? onList,
    String? search,
    List<EnumMediaSort?>? sort,
    EnumMediaSeason? season,
    int? seasonYear,
    String? countryOfOrigin,
    bool? isLicensed,
    List<EnumMediaFormat?>? formatIn,
    List<EnumMediaStatus?>? statusIn,
    List<String?>? genreIn,
    List<String?>? tagIn,
    List<EnumMediaSource?>? sourceIn,
  }) =>
      VariablesQueryPaginatedMedia._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (type != null) r'type': type,
        if (format != null) r'format': format,
        if (status != null) r'status': status,
        if (isAdult != null) r'isAdult': isAdult,
        if (genre != null) r'genre': genre,
        if (tag != null) r'tag': tag,
        if (onList != null) r'onList': onList,
        if (search != null) r'search': search,
        if (sort != null) r'sort': sort,
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (countryOfOrigin != null) r'countryOfOrigin': countryOfOrigin,
        if (isLicensed != null) r'isLicensed': isLicensed,
        if (formatIn != null) r'formatIn': formatIn,
        if (statusIn != null) r'statusIn': statusIn,
        if (genreIn != null) r'genreIn': genreIn,
        if (tagIn != null) r'tagIn': tagIn,
        if (sourceIn != null) r'sourceIn': sourceIn,
      });

  VariablesQueryPaginatedMedia._(this._$data);

  factory VariablesQueryPaginatedMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumMediaType((l$type as String));
    }
    if (data.containsKey('format')) {
      final l$format = data['format'];
      result$data['format'] = l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String));
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    if (data.containsKey('genre')) {
      final l$genre = data['genre'];
      result$data['genre'] = (l$genre as String?);
    }
    if (data.containsKey('tag')) {
      final l$tag = data['tag'];
      result$data['tag'] = (l$tag as String?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJsonEnumMediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJsonEnumMediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('countryOfOrigin')) {
      final l$countryOfOrigin = data['countryOfOrigin'];
      result$data['countryOfOrigin'] = (l$countryOfOrigin as String?);
    }
    if (data.containsKey('isLicensed')) {
      final l$isLicensed = data['isLicensed'];
      result$data['isLicensed'] = (l$isLicensed as bool?);
    }
    if (data.containsKey('formatIn')) {
      final l$formatIn = data['formatIn'];
      result$data['formatIn'] = (l$formatIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumMediaFormat((e as String)))
          .toList();
    }
    if (data.containsKey('statusIn')) {
      final l$statusIn = data['statusIn'];
      result$data['statusIn'] = (l$statusIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumMediaStatus((e as String)))
          .toList();
    }
    if (data.containsKey('genreIn')) {
      final l$genreIn = data['genreIn'];
      result$data['genreIn'] =
          (l$genreIn as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('tagIn')) {
      final l$tagIn = data['tagIn'];
      result$data['tagIn'] =
          (l$tagIn as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('sourceIn')) {
      final l$sourceIn = data['sourceIn'];
      result$data['sourceIn'] = (l$sourceIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumMediaSource((e as String)))
          .toList();
    }
    return VariablesQueryPaginatedMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  EnumMediaType? get type => (_$data['type'] as EnumMediaType?);

  EnumMediaFormat? get format => (_$data['format'] as EnumMediaFormat?);

  EnumMediaStatus? get status => (_$data['status'] as EnumMediaStatus?);

  bool? get isAdult => (_$data['isAdult'] as bool?);

  String? get genre => (_$data['genre'] as String?);

  String? get tag => (_$data['tag'] as String?);

  bool? get onList => (_$data['onList'] as bool?);

  String? get search => (_$data['search'] as String?);

  List<EnumMediaSort?>? get sort => (_$data['sort'] as List<EnumMediaSort?>?);

  EnumMediaSeason? get season => (_$data['season'] as EnumMediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  String? get countryOfOrigin => (_$data['countryOfOrigin'] as String?);

  bool? get isLicensed => (_$data['isLicensed'] as bool?);

  List<EnumMediaFormat?>? get formatIn =>
      (_$data['formatIn'] as List<EnumMediaFormat?>?);

  List<EnumMediaStatus?>? get statusIn =>
      (_$data['statusIn'] as List<EnumMediaStatus?>?);

  List<String?>? get genreIn => (_$data['genreIn'] as List<String?>?);

  List<String?>? get tagIn => (_$data['tagIn'] as List<String?>?);

  List<EnumMediaSource?>? get sourceIn =>
      (_$data['sourceIn'] as List<EnumMediaSource?>?);

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
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    }
    if (_$data.containsKey('format')) {
      final l$format = format;
      result$data['format'] =
          l$format == null ? null : toJsonEnumMediaFormat(l$format);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaStatus(l$status);
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    if (_$data.containsKey('genre')) {
      final l$genre = genre;
      result$data['genre'] = l$genre;
    }
    if (_$data.containsKey('tag')) {
      final l$tag = tag;
      result$data['tag'] = l$tag;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumMediaSort(e))
          .toList();
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJsonEnumMediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('countryOfOrigin')) {
      final l$countryOfOrigin = countryOfOrigin;
      result$data['countryOfOrigin'] = l$countryOfOrigin;
    }
    if (_$data.containsKey('isLicensed')) {
      final l$isLicensed = isLicensed;
      result$data['isLicensed'] = l$isLicensed;
    }
    if (_$data.containsKey('formatIn')) {
      final l$formatIn = formatIn;
      result$data['formatIn'] = l$formatIn
          ?.map((e) => e == null ? null : toJsonEnumMediaFormat(e))
          .toList();
    }
    if (_$data.containsKey('statusIn')) {
      final l$statusIn = statusIn;
      result$data['statusIn'] = l$statusIn
          ?.map((e) => e == null ? null : toJsonEnumMediaStatus(e))
          .toList();
    }
    if (_$data.containsKey('genreIn')) {
      final l$genreIn = genreIn;
      result$data['genreIn'] = l$genreIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('tagIn')) {
      final l$tagIn = tagIn;
      result$data['tagIn'] = l$tagIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('sourceIn')) {
      final l$sourceIn = sourceIn;
      result$data['sourceIn'] = l$sourceIn
          ?.map((e) => e == null ? null : toJsonEnumMediaSource(e))
          .toList();
    }
    return result$data;
  }

  CopyWithVariablesQueryPaginatedMedia<VariablesQueryPaginatedMedia>
      get copyWith => CopyWithVariablesQueryPaginatedMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryPaginatedMedia) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (_$data.containsKey('format') != other._$data.containsKey('format')) {
      return false;
    }
    if (l$format != lOther$format) {
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
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (_$data.containsKey('genre') != other._$data.containsKey('genre')) {
      return false;
    }
    if (l$genre != lOther$genre) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (_$data.containsKey('tag') != other._$data.containsKey('tag')) {
      return false;
    }
    if (l$tag != lOther$tag) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
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
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (_$data.containsKey('countryOfOrigin') !=
        other._$data.containsKey('countryOfOrigin')) {
      return false;
    }
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
      return false;
    }
    final l$isLicensed = isLicensed;
    final lOther$isLicensed = other.isLicensed;
    if (_$data.containsKey('isLicensed') !=
        other._$data.containsKey('isLicensed')) {
      return false;
    }
    if (l$isLicensed != lOther$isLicensed) {
      return false;
    }
    final l$formatIn = formatIn;
    final lOther$formatIn = other.formatIn;
    if (_$data.containsKey('formatIn') !=
        other._$data.containsKey('formatIn')) {
      return false;
    }
    if (l$formatIn != null && lOther$formatIn != null) {
      if (l$formatIn.length != lOther$formatIn.length) {
        return false;
      }
      for (int i = 0; i < l$formatIn.length; i++) {
        final l$formatIn$entry = l$formatIn[i];
        final lOther$formatIn$entry = lOther$formatIn[i];
        if (l$formatIn$entry != lOther$formatIn$entry) {
          return false;
        }
      }
    } else if (l$formatIn != lOther$formatIn) {
      return false;
    }
    final l$statusIn = statusIn;
    final lOther$statusIn = other.statusIn;
    if (_$data.containsKey('statusIn') !=
        other._$data.containsKey('statusIn')) {
      return false;
    }
    if (l$statusIn != null && lOther$statusIn != null) {
      if (l$statusIn.length != lOther$statusIn.length) {
        return false;
      }
      for (int i = 0; i < l$statusIn.length; i++) {
        final l$statusIn$entry = l$statusIn[i];
        final lOther$statusIn$entry = lOther$statusIn[i];
        if (l$statusIn$entry != lOther$statusIn$entry) {
          return false;
        }
      }
    } else if (l$statusIn != lOther$statusIn) {
      return false;
    }
    final l$genreIn = genreIn;
    final lOther$genreIn = other.genreIn;
    if (_$data.containsKey('genreIn') != other._$data.containsKey('genreIn')) {
      return false;
    }
    if (l$genreIn != null && lOther$genreIn != null) {
      if (l$genreIn.length != lOther$genreIn.length) {
        return false;
      }
      for (int i = 0; i < l$genreIn.length; i++) {
        final l$genreIn$entry = l$genreIn[i];
        final lOther$genreIn$entry = lOther$genreIn[i];
        if (l$genreIn$entry != lOther$genreIn$entry) {
          return false;
        }
      }
    } else if (l$genreIn != lOther$genreIn) {
      return false;
    }
    final l$tagIn = tagIn;
    final lOther$tagIn = other.tagIn;
    if (_$data.containsKey('tagIn') != other._$data.containsKey('tagIn')) {
      return false;
    }
    if (l$tagIn != null && lOther$tagIn != null) {
      if (l$tagIn.length != lOther$tagIn.length) {
        return false;
      }
      for (int i = 0; i < l$tagIn.length; i++) {
        final l$tagIn$entry = l$tagIn[i];
        final lOther$tagIn$entry = lOther$tagIn[i];
        if (l$tagIn$entry != lOther$tagIn$entry) {
          return false;
        }
      }
    } else if (l$tagIn != lOther$tagIn) {
      return false;
    }
    final l$sourceIn = sourceIn;
    final lOther$sourceIn = other.sourceIn;
    if (_$data.containsKey('sourceIn') !=
        other._$data.containsKey('sourceIn')) {
      return false;
    }
    if (l$sourceIn != null && lOther$sourceIn != null) {
      if (l$sourceIn.length != lOther$sourceIn.length) {
        return false;
      }
      for (int i = 0; i < l$sourceIn.length; i++) {
        final l$sourceIn$entry = l$sourceIn[i];
        final lOther$sourceIn$entry = lOther$sourceIn[i];
        if (l$sourceIn$entry != lOther$sourceIn$entry) {
          return false;
        }
      }
    } else if (l$sourceIn != lOther$sourceIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$isAdult = isAdult;
    final l$genre = genre;
    final l$tag = tag;
    final l$onList = onList;
    final l$search = search;
    final l$sort = sort;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$countryOfOrigin = countryOfOrigin;
    final l$isLicensed = isLicensed;
    final l$formatIn = formatIn;
    final l$statusIn = statusIn;
    final l$genreIn = genreIn;
    final l$tagIn = tagIn;
    final l$sourceIn = sourceIn;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('format') ? l$format : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
      _$data.containsKey('genre') ? l$genre : const {},
      _$data.containsKey('tag') ? l$tag : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('countryOfOrigin') ? l$countryOfOrigin : const {},
      _$data.containsKey('isLicensed') ? l$isLicensed : const {},
      _$data.containsKey('formatIn')
          ? l$formatIn == null
              ? null
              : Object.hashAll(l$formatIn.map((v) => v))
          : const {},
      _$data.containsKey('statusIn')
          ? l$statusIn == null
              ? null
              : Object.hashAll(l$statusIn.map((v) => v))
          : const {},
      _$data.containsKey('genreIn')
          ? l$genreIn == null
              ? null
              : Object.hashAll(l$genreIn.map((v) => v))
          : const {},
      _$data.containsKey('tagIn')
          ? l$tagIn == null
              ? null
              : Object.hashAll(l$tagIn.map((v) => v))
          : const {},
      _$data.containsKey('sourceIn')
          ? l$sourceIn == null
              ? null
              : Object.hashAll(l$sourceIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryPaginatedMedia<TRes> {
  factory CopyWithVariablesQueryPaginatedMedia(
    VariablesQueryPaginatedMedia instance,
    TRes Function(VariablesQueryPaginatedMedia) then,
  ) = _CopyWithImplVariablesQueryPaginatedMedia;

  factory CopyWithVariablesQueryPaginatedMedia.stub(TRes res) =
      _CopyWithStubImplVariablesQueryPaginatedMedia;

  TRes call({
    int? page,
    int? perPage,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? genre,
    String? tag,
    bool? onList,
    String? search,
    List<EnumMediaSort?>? sort,
    EnumMediaSeason? season,
    int? seasonYear,
    String? countryOfOrigin,
    bool? isLicensed,
    List<EnumMediaFormat?>? formatIn,
    List<EnumMediaStatus?>? statusIn,
    List<String?>? genreIn,
    List<String?>? tagIn,
    List<EnumMediaSource?>? sourceIn,
  });
}

class _CopyWithImplVariablesQueryPaginatedMedia<TRes>
    implements CopyWithVariablesQueryPaginatedMedia<TRes> {
  _CopyWithImplVariablesQueryPaginatedMedia(
    this._instance,
    this._then,
  );

  final VariablesQueryPaginatedMedia _instance;

  final TRes Function(VariablesQueryPaginatedMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? isAdult = _undefined,
    Object? genre = _undefined,
    Object? tag = _undefined,
    Object? onList = _undefined,
    Object? search = _undefined,
    Object? sort = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? isLicensed = _undefined,
    Object? formatIn = _undefined,
    Object? statusIn = _undefined,
    Object? genreIn = _undefined,
    Object? tagIn = _undefined,
    Object? sourceIn = _undefined,
  }) =>
      _then(VariablesQueryPaginatedMedia._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (type != _undefined) 'type': (type as EnumMediaType?),
        if (format != _undefined) 'format': (format as EnumMediaFormat?),
        if (status != _undefined) 'status': (status as EnumMediaStatus?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
        if (genre != _undefined) 'genre': (genre as String?),
        if (tag != _undefined) 'tag': (tag as String?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (search != _undefined) 'search': (search as String?),
        if (sort != _undefined) 'sort': (sort as List<EnumMediaSort?>?),
        if (season != _undefined) 'season': (season as EnumMediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (countryOfOrigin != _undefined)
          'countryOfOrigin': (countryOfOrigin as String?),
        if (isLicensed != _undefined) 'isLicensed': (isLicensed as bool?),
        if (formatIn != _undefined)
          'formatIn': (formatIn as List<EnumMediaFormat?>?),
        if (statusIn != _undefined)
          'statusIn': (statusIn as List<EnumMediaStatus?>?),
        if (genreIn != _undefined) 'genreIn': (genreIn as List<String?>?),
        if (tagIn != _undefined) 'tagIn': (tagIn as List<String?>?),
        if (sourceIn != _undefined)
          'sourceIn': (sourceIn as List<EnumMediaSource?>?),
      }));
}

class _CopyWithStubImplVariablesQueryPaginatedMedia<TRes>
    implements CopyWithVariablesQueryPaginatedMedia<TRes> {
  _CopyWithStubImplVariablesQueryPaginatedMedia(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    bool? isAdult,
    String? genre,
    String? tag,
    bool? onList,
    String? search,
    List<EnumMediaSort?>? sort,
    EnumMediaSeason? season,
    int? seasonYear,
    String? countryOfOrigin,
    bool? isLicensed,
    List<EnumMediaFormat?>? formatIn,
    List<EnumMediaStatus?>? statusIn,
    List<String?>? genreIn,
    List<String?>? tagIn,
    List<EnumMediaSource?>? sourceIn,
  }) =>
      _res;
}

class QueryPaginatedMedia {
  QueryPaginatedMedia({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryPaginatedMedia.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMedia(
      Page: l$Page == null
          ? null
          : QueryPaginatedMediaPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedMediaPage? Page;

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
    if (!(other is QueryPaginatedMedia) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryPaginatedMedia on QueryPaginatedMedia {
  CopyWithQueryPaginatedMedia<QueryPaginatedMedia> get copyWith =>
      CopyWithQueryPaginatedMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPaginatedMedia<TRes> {
  factory CopyWithQueryPaginatedMedia(
    QueryPaginatedMedia instance,
    TRes Function(QueryPaginatedMedia) then,
  ) = _CopyWithImplQueryPaginatedMedia;

  factory CopyWithQueryPaginatedMedia.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMedia;

  TRes call({
    QueryPaginatedMediaPage? Page,
    String? $__typename,
  });
  CopyWithQueryPaginatedMediaPage<TRes> get Page;
}

class _CopyWithImplQueryPaginatedMedia<TRes>
    implements CopyWithQueryPaginatedMedia<TRes> {
  _CopyWithImplQueryPaginatedMedia(
    this._instance,
    this._then,
  );

  final QueryPaginatedMedia _instance;

  final TRes Function(QueryPaginatedMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMedia(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryPaginatedMediaPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedMediaPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryPaginatedMediaPage.stub(_then(_instance))
        : CopyWithQueryPaginatedMediaPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryPaginatedMedia<TRes>
    implements CopyWithQueryPaginatedMedia<TRes> {
  _CopyWithStubImplQueryPaginatedMedia(this._res);

  TRes _res;

  call({
    QueryPaginatedMediaPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedMediaPage<TRes> get Page =>
      CopyWithQueryPaginatedMediaPage.stub(_res);
}

const documentNodeQueryPaginatedMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaginatedMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'format')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaFormat'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'genre')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tag')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'countryOfOrigin')),
        type: NamedTypeNode(
          name: NameNode(value: 'CountryCode'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isLicensed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'formatIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaFormat'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'statusIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaStatus'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'genreIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tagIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sourceIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSource'),
            isNonNull: false,
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'format'),
                value: VariableNode(name: NameNode(value: 'format')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status'),
                value: VariableNode(name: NameNode(value: 'status')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: VariableNode(name: NameNode(value: 'isAdult')),
              ),
              ArgumentNode(
                name: NameNode(value: 'genre'),
                value: VariableNode(name: NameNode(value: 'genre')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tag'),
                value: VariableNode(name: NameNode(value: 'tag')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'countryOfOrigin'),
                value: VariableNode(name: NameNode(value: 'countryOfOrigin')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isLicensed'),
                value: VariableNode(name: NameNode(value: 'isLicensed')),
              ),
              ArgumentNode(
                name: NameNode(value: 'format_in'),
                value: VariableNode(name: NameNode(value: 'formatIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: VariableNode(name: NameNode(value: 'statusIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'genre_in'),
                value: VariableNode(name: NameNode(value: 'genreIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tag_in'),
                value: VariableNode(name: NameNode(value: 'tagIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'source_in'),
                value: VariableNode(name: NameNode(value: 'sourceIn')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaMin'),
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
  fragmentDefinitionMediaMin,
]);

class QueryPaginatedMediaPage {
  QueryPaginatedMediaPage({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory QueryPaginatedMediaPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMediaPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryPaginatedMediaPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentMediaMin.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedMediaPagepageInfo? pageInfo;

  final List<FragmentMediaMin?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryPaginatedMediaPage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtensionQueryPaginatedMediaPage on QueryPaginatedMediaPage {
  CopyWithQueryPaginatedMediaPage<QueryPaginatedMediaPage> get copyWith =>
      CopyWithQueryPaginatedMediaPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPaginatedMediaPage<TRes> {
  factory CopyWithQueryPaginatedMediaPage(
    QueryPaginatedMediaPage instance,
    TRes Function(QueryPaginatedMediaPage) then,
  ) = _CopyWithImplQueryPaginatedMediaPage;

  factory CopyWithQueryPaginatedMediaPage.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMediaPage;

  TRes call({
    QueryPaginatedMediaPagepageInfo? pageInfo,
    List<FragmentMediaMin?>? media,
    String? $__typename,
  });
  CopyWithQueryPaginatedMediaPagepageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<FragmentMediaMin?>? Function(
              Iterable<CopyWithFragmentMediaMin<FragmentMediaMin>?>?)
          _fn);
}

class _CopyWithImplQueryPaginatedMediaPage<TRes>
    implements CopyWithQueryPaginatedMediaPage<TRes> {
  _CopyWithImplQueryPaginatedMediaPage(
    this._instance,
    this._then,
  );

  final QueryPaginatedMediaPage _instance;

  final TRes Function(QueryPaginatedMediaPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMediaPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryPaginatedMediaPagepageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<FragmentMediaMin?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedMediaPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryPaginatedMediaPagepageInfo.stub(_then(_instance))
        : CopyWithQueryPaginatedMediaPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<FragmentMediaMin?>? Function(
                  Iterable<CopyWithFragmentMediaMin<FragmentMediaMin>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWithFragmentMediaMin(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryPaginatedMediaPage<TRes>
    implements CopyWithQueryPaginatedMediaPage<TRes> {
  _CopyWithStubImplQueryPaginatedMediaPage(this._res);

  TRes _res;

  call({
    QueryPaginatedMediaPagepageInfo? pageInfo,
    List<FragmentMediaMin?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedMediaPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryPaginatedMediaPagepageInfo.stub(_res);

  media(_fn) => _res;
}

class QueryPaginatedMediaPagepageInfo {
  QueryPaginatedMediaPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryPaginatedMediaPagepageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedMediaPagepageInfo(
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
    if (!(other is QueryPaginatedMediaPagepageInfo) ||
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

extension UtilityExtensionQueryPaginatedMediaPagepageInfo
    on QueryPaginatedMediaPagepageInfo {
  CopyWithQueryPaginatedMediaPagepageInfo<QueryPaginatedMediaPagepageInfo>
      get copyWith => CopyWithQueryPaginatedMediaPagepageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPaginatedMediaPagepageInfo<TRes> {
  factory CopyWithQueryPaginatedMediaPagepageInfo(
    QueryPaginatedMediaPagepageInfo instance,
    TRes Function(QueryPaginatedMediaPagepageInfo) then,
  ) = _CopyWithImplQueryPaginatedMediaPagepageInfo;

  factory CopyWithQueryPaginatedMediaPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedMediaPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryPaginatedMediaPagepageInfo<TRes>
    implements CopyWithQueryPaginatedMediaPagepageInfo<TRes> {
  _CopyWithImplQueryPaginatedMediaPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryPaginatedMediaPagepageInfo _instance;

  final TRes Function(QueryPaginatedMediaPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedMediaPagepageInfo(
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

class _CopyWithStubImplQueryPaginatedMediaPagepageInfo<TRes>
    implements CopyWithQueryPaginatedMediaPagepageInfo<TRes> {
  _CopyWithStubImplQueryPaginatedMediaPagepageInfo(this._res);

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
