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

class VariablesQueryMdToHtml {
  factory VariablesQueryMdToHtml({required String markdown}) =>
      VariablesQueryMdToHtml._({
        r'markdown': markdown,
      });

  VariablesQueryMdToHtml._(this._$data);

  factory VariablesQueryMdToHtml.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$markdown = data['markdown'];
    result$data['markdown'] = (l$markdown as String);
    return VariablesQueryMdToHtml._(result$data);
  }

  Map<String, dynamic> _$data;

  String get markdown => (_$data['markdown'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$markdown = markdown;
    result$data['markdown'] = l$markdown;
    return result$data;
  }

  CopyWithVariablesQueryMdToHtml<VariablesQueryMdToHtml> get copyWith =>
      CopyWithVariablesQueryMdToHtml(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryMdToHtml) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$markdown = markdown;
    final lOther$markdown = other.markdown;
    if (l$markdown != lOther$markdown) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$markdown = markdown;
    return Object.hashAll([l$markdown]);
  }
}

abstract class CopyWithVariablesQueryMdToHtml<TRes> {
  factory CopyWithVariablesQueryMdToHtml(
    VariablesQueryMdToHtml instance,
    TRes Function(VariablesQueryMdToHtml) then,
  ) = _CopyWithImplVariablesQueryMdToHtml;

  factory CopyWithVariablesQueryMdToHtml.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMdToHtml;

  TRes call({String? markdown});
}

class _CopyWithImplVariablesQueryMdToHtml<TRes>
    implements CopyWithVariablesQueryMdToHtml<TRes> {
  _CopyWithImplVariablesQueryMdToHtml(
    this._instance,
    this._then,
  );

  final VariablesQueryMdToHtml _instance;

  final TRes Function(VariablesQueryMdToHtml) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? markdown = _undefined}) => _then(VariablesQueryMdToHtml._({
        ..._instance._$data,
        if (markdown != _undefined && markdown != null)
          'markdown': (markdown as String),
      }));
}

class _CopyWithStubImplVariablesQueryMdToHtml<TRes>
    implements CopyWithVariablesQueryMdToHtml<TRes> {
  _CopyWithStubImplVariablesQueryMdToHtml(this._res);

  TRes _res;

  call({String? markdown}) => _res;
}

class QueryMdToHtml {
  QueryMdToHtml({
    this.Markdown,
    this.$__typename = 'Query',
  });

  factory QueryMdToHtml.fromJson(Map<String, dynamic> json) {
    final l$Markdown = json['Markdown'];
    final l$$__typename = json['__typename'];
    return QueryMdToHtml(
      Markdown: l$Markdown == null
          ? null
          : QueryMdToHtmlMarkdown.fromJson(
              (l$Markdown as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMdToHtmlMarkdown? Markdown;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Markdown = Markdown;
    _resultData['Markdown'] = l$Markdown?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Markdown = Markdown;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Markdown,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMdToHtml) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Markdown = Markdown;
    final lOther$Markdown = other.Markdown;
    if (l$Markdown != lOther$Markdown) {
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

extension UtilityExtensionQueryMdToHtml on QueryMdToHtml {
  CopyWithQueryMdToHtml<QueryMdToHtml> get copyWith => CopyWithQueryMdToHtml(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMdToHtml<TRes> {
  factory CopyWithQueryMdToHtml(
    QueryMdToHtml instance,
    TRes Function(QueryMdToHtml) then,
  ) = _CopyWithImplQueryMdToHtml;

  factory CopyWithQueryMdToHtml.stub(TRes res) = _CopyWithStubImplQueryMdToHtml;

  TRes call({
    QueryMdToHtmlMarkdown? Markdown,
    String? $__typename,
  });
  CopyWithQueryMdToHtmlMarkdown<TRes> get Markdown;
}

class _CopyWithImplQueryMdToHtml<TRes> implements CopyWithQueryMdToHtml<TRes> {
  _CopyWithImplQueryMdToHtml(
    this._instance,
    this._then,
  );

  final QueryMdToHtml _instance;

  final TRes Function(QueryMdToHtml) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Markdown = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMdToHtml(
        Markdown: Markdown == _undefined
            ? _instance.Markdown
            : (Markdown as QueryMdToHtmlMarkdown?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMdToHtmlMarkdown<TRes> get Markdown {
    final local$Markdown = _instance.Markdown;
    return local$Markdown == null
        ? CopyWithQueryMdToHtmlMarkdown.stub(_then(_instance))
        : CopyWithQueryMdToHtmlMarkdown(
            local$Markdown, (e) => call(Markdown: e));
  }
}

class _CopyWithStubImplQueryMdToHtml<TRes>
    implements CopyWithQueryMdToHtml<TRes> {
  _CopyWithStubImplQueryMdToHtml(this._res);

  TRes _res;

  call({
    QueryMdToHtmlMarkdown? Markdown,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMdToHtmlMarkdown<TRes> get Markdown =>
      CopyWithQueryMdToHtmlMarkdown.stub(_res);
}

const documentNodeQueryMdToHtml = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MdToHtml'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'markdown')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Markdown'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'markdown'),
            value: VariableNode(name: NameNode(value: 'markdown')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'html'),
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

class QueryMdToHtmlMarkdown {
  QueryMdToHtmlMarkdown({
    this.html,
    this.$__typename = 'ParsedMarkdown',
  });

  factory QueryMdToHtmlMarkdown.fromJson(Map<String, dynamic> json) {
    final l$html = json['html'];
    final l$$__typename = json['__typename'];
    return QueryMdToHtmlMarkdown(
      html: (l$html as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? html;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$html = html;
    _resultData['html'] = l$html;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$html = html;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$html,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMdToHtmlMarkdown) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$html = html;
    final lOther$html = other.html;
    if (l$html != lOther$html) {
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

extension UtilityExtensionQueryMdToHtmlMarkdown on QueryMdToHtmlMarkdown {
  CopyWithQueryMdToHtmlMarkdown<QueryMdToHtmlMarkdown> get copyWith =>
      CopyWithQueryMdToHtmlMarkdown(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMdToHtmlMarkdown<TRes> {
  factory CopyWithQueryMdToHtmlMarkdown(
    QueryMdToHtmlMarkdown instance,
    TRes Function(QueryMdToHtmlMarkdown) then,
  ) = _CopyWithImplQueryMdToHtmlMarkdown;

  factory CopyWithQueryMdToHtmlMarkdown.stub(TRes res) =
      _CopyWithStubImplQueryMdToHtmlMarkdown;

  TRes call({
    String? html,
    String? $__typename,
  });
}

class _CopyWithImplQueryMdToHtmlMarkdown<TRes>
    implements CopyWithQueryMdToHtmlMarkdown<TRes> {
  _CopyWithImplQueryMdToHtmlMarkdown(
    this._instance,
    this._then,
  );

  final QueryMdToHtmlMarkdown _instance;

  final TRes Function(QueryMdToHtmlMarkdown) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? html = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMdToHtmlMarkdown(
        html: html == _undefined ? _instance.html : (html as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMdToHtmlMarkdown<TRes>
    implements CopyWithQueryMdToHtmlMarkdown<TRes> {
  _CopyWithStubImplQueryMdToHtmlMarkdown(this._res);

  TRes _res;

  call({
    String? html,
    String? $__typename,
  }) =>
      _res;
}
