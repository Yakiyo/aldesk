import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesMutationToggleLike {
  factory VariablesMutationToggleLike({
    required int id,
    required EnumLikeableType type,
  }) =>
      VariablesMutationToggleLike._({
        r'id': id,
        r'type': type,
      });

  VariablesMutationToggleLike._(this._$data);

  factory VariablesMutationToggleLike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$type = data['type'];
    result$data['type'] = fromJsonEnumLikeableType((l$type as String));
    return VariablesMutationToggleLike._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  EnumLikeableType get type => (_$data['type'] as EnumLikeableType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = toJsonEnumLikeableType(l$type);
    return result$data;
  }

  CopyWithVariablesMutationToggleLike<VariablesMutationToggleLike>
      get copyWith => CopyWithVariablesMutationToggleLike(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesMutationToggleLike) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    return Object.hashAll([
      l$id,
      l$type,
    ]);
  }
}

abstract class CopyWithVariablesMutationToggleLike<TRes> {
  factory CopyWithVariablesMutationToggleLike(
    VariablesMutationToggleLike instance,
    TRes Function(VariablesMutationToggleLike) then,
  ) = _CopyWithImplVariablesMutationToggleLike;

  factory CopyWithVariablesMutationToggleLike.stub(TRes res) =
      _CopyWithStubImplVariablesMutationToggleLike;

  TRes call({
    int? id,
    EnumLikeableType? type,
  });
}

class _CopyWithImplVariablesMutationToggleLike<TRes>
    implements CopyWithVariablesMutationToggleLike<TRes> {
  _CopyWithImplVariablesMutationToggleLike(
    this._instance,
    this._then,
  );

  final VariablesMutationToggleLike _instance;

  final TRes Function(VariablesMutationToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) =>
      _then(VariablesMutationToggleLike._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (type != _undefined && type != null)
          'type': (type as EnumLikeableType),
      }));
}

class _CopyWithStubImplVariablesMutationToggleLike<TRes>
    implements CopyWithVariablesMutationToggleLike<TRes> {
  _CopyWithStubImplVariablesMutationToggleLike(this._res);

  TRes _res;

  call({
    int? id,
    EnumLikeableType? type,
  }) =>
      _res;
}

class MutationToggleLike {
  MutationToggleLike({
    this.ToggleLike,
    this.$__typename = 'Mutation',
  });

  factory MutationToggleLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLike = json['ToggleLike'];
    final l$$__typename = json['__typename'];
    return MutationToggleLike(
      ToggleLike: (l$ToggleLike as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationToggleLikeToggleLike.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<MutationToggleLikeToggleLike?>? ToggleLike;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleLike = ToggleLike;
    _resultData['ToggleLike'] = l$ToggleLike?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleLike = ToggleLike;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleLike == null ? null : Object.hashAll(l$ToggleLike.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is MutationToggleLike) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleLike = ToggleLike;
    final lOther$ToggleLike = other.ToggleLike;
    if (l$ToggleLike != null && lOther$ToggleLike != null) {
      if (l$ToggleLike.length != lOther$ToggleLike.length) {
        return false;
      }
      for (int i = 0; i < l$ToggleLike.length; i++) {
        final l$ToggleLike$entry = l$ToggleLike[i];
        final lOther$ToggleLike$entry = lOther$ToggleLike[i];
        if (l$ToggleLike$entry != lOther$ToggleLike$entry) {
          return false;
        }
      }
    } else if (l$ToggleLike != lOther$ToggleLike) {
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

extension UtilityExtensionMutationToggleLike on MutationToggleLike {
  CopyWithMutationToggleLike<MutationToggleLike> get copyWith =>
      CopyWithMutationToggleLike(
        this,
        (i) => i,
      );
}

abstract class CopyWithMutationToggleLike<TRes> {
  factory CopyWithMutationToggleLike(
    MutationToggleLike instance,
    TRes Function(MutationToggleLike) then,
  ) = _CopyWithImplMutationToggleLike;

  factory CopyWithMutationToggleLike.stub(TRes res) =
      _CopyWithStubImplMutationToggleLike;

  TRes call({
    List<MutationToggleLikeToggleLike?>? ToggleLike,
    String? $__typename,
  });
  TRes ToggleLike(
      Iterable<MutationToggleLikeToggleLike?>? Function(
              Iterable<
                  CopyWithMutationToggleLikeToggleLike<
                      MutationToggleLikeToggleLike>?>?)
          _fn);
}

class _CopyWithImplMutationToggleLike<TRes>
    implements CopyWithMutationToggleLike<TRes> {
  _CopyWithImplMutationToggleLike(
    this._instance,
    this._then,
  );

  final MutationToggleLike _instance;

  final TRes Function(MutationToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLike = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLike(
        ToggleLike: ToggleLike == _undefined
            ? _instance.ToggleLike
            : (ToggleLike as List<MutationToggleLikeToggleLike?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ToggleLike(
          Iterable<MutationToggleLikeToggleLike?>? Function(
                  Iterable<
                      CopyWithMutationToggleLikeToggleLike<
                          MutationToggleLikeToggleLike>?>?)
              _fn) =>
      call(
          ToggleLike: _fn(_instance.ToggleLike?.map((e) => e == null
              ? null
              : CopyWithMutationToggleLikeToggleLike(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplMutationToggleLike<TRes>
    implements CopyWithMutationToggleLike<TRes> {
  _CopyWithStubImplMutationToggleLike(this._res);

  TRes _res;

  call({
    List<MutationToggleLikeToggleLike?>? ToggleLike,
    String? $__typename,
  }) =>
      _res;

  ToggleLike(_fn) => _res;
}

const documentNodeMutationToggleLike = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleLike'),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'LikeableType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ToggleLike'),
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

class MutationToggleLikeToggleLike {
  MutationToggleLikeToggleLike({this.$__typename = 'User'});

  factory MutationToggleLikeToggleLike.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLike($__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleLikeToggleLike) ||
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

extension UtilityExtensionMutationToggleLikeToggleLike
    on MutationToggleLikeToggleLike {
  CopyWithMutationToggleLikeToggleLike<MutationToggleLikeToggleLike>
      get copyWith => CopyWithMutationToggleLikeToggleLike(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLike<TRes> {
  factory CopyWithMutationToggleLikeToggleLike(
    MutationToggleLikeToggleLike instance,
    TRes Function(MutationToggleLikeToggleLike) then,
  ) = _CopyWithImplMutationToggleLikeToggleLike;

  factory CopyWithMutationToggleLikeToggleLike.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLike;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleLikeToggleLike<TRes>
    implements CopyWithMutationToggleLikeToggleLike<TRes> {
  _CopyWithImplMutationToggleLikeToggleLike(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLike _instance;

  final TRes Function(MutationToggleLikeToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleLikeToggleLike(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleLikeToggleLike<TRes>
    implements CopyWithMutationToggleLikeToggleLike<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLike(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
