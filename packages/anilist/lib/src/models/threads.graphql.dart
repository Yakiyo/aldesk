import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesFragmentThreadMin {
  factory VariablesFragmentThreadMin({bool? asHtml}) =>
      VariablesFragmentThreadMin._({
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesFragmentThreadMin._(this._$data);

  factory VariablesFragmentThreadMin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesFragmentThreadMin._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesFragmentThreadMin<VariablesFragmentThreadMin> get copyWith =>
      CopyWithVariablesFragmentThreadMin(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesFragmentThreadMin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$asHtml = asHtml;
    final lOther$asHtml = other.asHtml;
    if (_$data.containsKey('asHtml') != other._$data.containsKey('asHtml')) {
      return false;
    }
    if (l$asHtml != lOther$asHtml) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asHtml = asHtml;
    return Object.hashAll([_$data.containsKey('asHtml') ? l$asHtml : const {}]);
  }
}

abstract class CopyWithVariablesFragmentThreadMin<TRes> {
  factory CopyWithVariablesFragmentThreadMin(
    VariablesFragmentThreadMin instance,
    TRes Function(VariablesFragmentThreadMin) then,
  ) = _CopyWithImplVariablesFragmentThreadMin;

  factory CopyWithVariablesFragmentThreadMin.stub(TRes res) =
      _CopyWithStubImplVariablesFragmentThreadMin;

  TRes call({bool? asHtml});
}

class _CopyWithImplVariablesFragmentThreadMin<TRes>
    implements CopyWithVariablesFragmentThreadMin<TRes> {
  _CopyWithImplVariablesFragmentThreadMin(
    this._instance,
    this._then,
  );

  final VariablesFragmentThreadMin _instance;

  final TRes Function(VariablesFragmentThreadMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? asHtml = _undefined}) =>
      _then(VariablesFragmentThreadMin._({
        ..._instance._$data,
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesFragmentThreadMin<TRes>
    implements CopyWithVariablesFragmentThreadMin<TRes> {
  _CopyWithStubImplVariablesFragmentThreadMin(this._res);

  TRes _res;

  call({bool? asHtml}) => _res;
}

class FragmentThreadMin {
  FragmentThreadMin({
    required this.id,
    this.title,
    this.body,
    this.replyCountOrNull,
    this.viewCount,
    this.repliedAt,
    this.siteUrl,
    this.user,
    this.replyUser,
    this.categories,
    this.mediaCategories,
    this.$__typename = 'Thread',
  });

  factory FragmentThreadMin.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$replyCountOrNull = json['replyCountOrNull'];
    final l$viewCount = json['viewCount'];
    final l$repliedAt = json['repliedAt'];
    final l$siteUrl = json['siteUrl'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$categories = json['categories'];
    final l$mediaCategories = json['mediaCategories'];
    final l$$__typename = json['__typename'];
    return FragmentThreadMin(
      id: (l$id as int),
      title: (l$title as String?),
      body: (l$body as String?),
      replyCountOrNull: (l$replyCountOrNull as int?),
      viewCount: (l$viewCount as int?),
      repliedAt: (l$repliedAt as int?),
      siteUrl: (l$siteUrl as String?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : FragmentUserMin.fromJson((l$replyUser as Map<String, dynamic>)),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadMincategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadMinmediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String? body;

  final int? replyCountOrNull;

  final int? viewCount;

  final int? repliedAt;

  final String? siteUrl;

  final FragmentUserMin? user;

  final FragmentUserMin? replyUser;

  final List<FragmentThreadMincategories?>? categories;

  final List<FragmentThreadMinmediaCategories?>? mediaCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$replyCountOrNull = replyCountOrNull;
    _resultData['replyCountOrNull'] = l$replyCountOrNull;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$mediaCategories = mediaCategories;
    _resultData['mediaCategories'] =
        l$mediaCategories?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$replyCountOrNull = replyCountOrNull;
    final l$viewCount = viewCount;
    final l$repliedAt = repliedAt;
    final l$siteUrl = siteUrl;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$categories = categories;
    final l$mediaCategories = mediaCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$body,
      l$replyCountOrNull,
      l$viewCount,
      l$repliedAt,
      l$siteUrl,
      l$user,
      l$replyUser,
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$mediaCategories == null
          ? null
          : Object.hashAll(l$mediaCategories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThreadMin || runtimeType != other.runtimeType) {
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$replyCountOrNull = replyCountOrNull;
    final lOther$replyCountOrNull = other.replyCountOrNull;
    if (l$replyCountOrNull != lOther$replyCountOrNull) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
      return false;
    }
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$replyUser = replyUser;
    final lOther$replyUser = other.replyUser;
    if (l$replyUser != lOther$replyUser) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$mediaCategories = mediaCategories;
    final lOther$mediaCategories = other.mediaCategories;
    if (l$mediaCategories != null && lOther$mediaCategories != null) {
      if (l$mediaCategories.length != lOther$mediaCategories.length) {
        return false;
      }
      for (int i = 0; i < l$mediaCategories.length; i++) {
        final l$mediaCategories$entry = l$mediaCategories[i];
        final lOther$mediaCategories$entry = lOther$mediaCategories[i];
        if (l$mediaCategories$entry != lOther$mediaCategories$entry) {
          return false;
        }
      }
    } else if (l$mediaCategories != lOther$mediaCategories) {
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

extension UtilityExtensionFragmentThreadMin on FragmentThreadMin {
  CopyWithFragmentThreadMin<FragmentThreadMin> get copyWith =>
      CopyWithFragmentThreadMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentThreadMin<TRes> {
  factory CopyWithFragmentThreadMin(
    FragmentThreadMin instance,
    TRes Function(FragmentThreadMin) then,
  ) = _CopyWithImplFragmentThreadMin;

  factory CopyWithFragmentThreadMin.stub(TRes res) =
      _CopyWithStubImplFragmentThreadMin;

  TRes call({
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<FragmentThreadMincategories?>? categories,
    List<FragmentThreadMinmediaCategories?>? mediaCategories,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentUserMin<TRes> get replyUser;
  TRes categories(
      Iterable<FragmentThreadMincategories?>? Function(
              Iterable<
                  CopyWithFragmentThreadMincategories<
                      FragmentThreadMincategories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<FragmentThreadMinmediaCategories?>? Function(
              Iterable<
                  CopyWithFragmentThreadMinmediaCategories<
                      FragmentThreadMinmediaCategories>?>?)
          _fn);
}

class _CopyWithImplFragmentThreadMin<TRes>
    implements CopyWithFragmentThreadMin<TRes> {
  _CopyWithImplFragmentThreadMin(
    this._instance,
    this._then,
  );

  final FragmentThreadMin _instance;

  final TRes Function(FragmentThreadMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? replyCountOrNull = _undefined,
    Object? viewCount = _undefined,
    Object? repliedAt = _undefined,
    Object? siteUrl = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? categories = _undefined,
    Object? mediaCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadMin(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        replyCountOrNull: replyCountOrNull == _undefined
            ? _instance.replyCountOrNull
            : (replyCountOrNull as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as FragmentUserMin?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<FragmentThreadMincategories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<FragmentThreadMinmediaCategories?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }

  CopyWithFragmentUserMin<TRes> get replyUser {
    final local$replyUser = _instance.replyUser;
    return local$replyUser == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$replyUser, (e) => call(replyUser: e));
  }

  TRes categories(
          Iterable<FragmentThreadMincategories?>? Function(
                  Iterable<
                      CopyWithFragmentThreadMincategories<
                          FragmentThreadMincategories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadMincategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes mediaCategories(
          Iterable<FragmentThreadMinmediaCategories?>? Function(
                  Iterable<
                      CopyWithFragmentThreadMinmediaCategories<
                          FragmentThreadMinmediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadMinmediaCategories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplFragmentThreadMin<TRes>
    implements CopyWithFragmentThreadMin<TRes> {
  _CopyWithStubImplFragmentThreadMin(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<FragmentThreadMincategories?>? categories,
    List<FragmentThreadMinmediaCategories?>? mediaCategories,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentUserMin<TRes> get replyUser =>
      CopyWithFragmentUserMin.stub(_res);

  categories(_fn) => _res;

  mediaCategories(_fn) => _res;
}

const fragmentDefinitionThreadMin = FragmentDefinitionNode(
  name: NameNode(value: 'ThreadMin'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Thread'),
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
      name: NameNode(value: 'body'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'asHtml'),
          value: VariableNode(name: NameNode(value: 'asHtml')),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyCount'),
      alias: NameNode(value: 'replyCountOrNull'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'viewCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repliedAt'),
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
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UserMin'),
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
      name: NameNode(value: 'replyUser'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UserMin'),
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
      name: NameNode(value: 'categories'),
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
      name: NameNode(value: 'mediaCategories'),
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
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'userPreferred'),
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
);
const documentNodeFragmentThreadMin = DocumentNode(definitions: [
  fragmentDefinitionThreadMin,
  fragmentDefinitionUserMin,
]);

class FragmentThreadMincategories {
  FragmentThreadMincategories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory FragmentThreadMincategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return FragmentThreadMincategories(
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
    if (other is! FragmentThreadMincategories ||
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

extension UtilityExtensionFragmentThreadMincategories
    on FragmentThreadMincategories {
  CopyWithFragmentThreadMincategories<FragmentThreadMincategories>
      get copyWith => CopyWithFragmentThreadMincategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentThreadMincategories<TRes> {
  factory CopyWithFragmentThreadMincategories(
    FragmentThreadMincategories instance,
    TRes Function(FragmentThreadMincategories) then,
  ) = _CopyWithImplFragmentThreadMincategories;

  factory CopyWithFragmentThreadMincategories.stub(TRes res) =
      _CopyWithStubImplFragmentThreadMincategories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplFragmentThreadMincategories<TRes>
    implements CopyWithFragmentThreadMincategories<TRes> {
  _CopyWithImplFragmentThreadMincategories(
    this._instance,
    this._then,
  );

  final FragmentThreadMincategories _instance;

  final TRes Function(FragmentThreadMincategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadMincategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentThreadMincategories<TRes>
    implements CopyWithFragmentThreadMincategories<TRes> {
  _CopyWithStubImplFragmentThreadMincategories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class FragmentThreadMinmediaCategories {
  FragmentThreadMinmediaCategories({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory FragmentThreadMinmediaCategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return FragmentThreadMinmediaCategories(
      id: (l$id as int),
      title: l$title == null
          ? null
          : FragmentThreadMinmediaCategoriestitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentThreadMinmediaCategoriestitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThreadMinmediaCategories ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentThreadMinmediaCategories
    on FragmentThreadMinmediaCategories {
  CopyWithFragmentThreadMinmediaCategories<FragmentThreadMinmediaCategories>
      get copyWith => CopyWithFragmentThreadMinmediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentThreadMinmediaCategories<TRes> {
  factory CopyWithFragmentThreadMinmediaCategories(
    FragmentThreadMinmediaCategories instance,
    TRes Function(FragmentThreadMinmediaCategories) then,
  ) = _CopyWithImplFragmentThreadMinmediaCategories;

  factory CopyWithFragmentThreadMinmediaCategories.stub(TRes res) =
      _CopyWithStubImplFragmentThreadMinmediaCategories;

  TRes call({
    int? id,
    FragmentThreadMinmediaCategoriestitle? title,
    String? $__typename,
  });
  CopyWithFragmentThreadMinmediaCategoriestitle<TRes> get title;
}

class _CopyWithImplFragmentThreadMinmediaCategories<TRes>
    implements CopyWithFragmentThreadMinmediaCategories<TRes> {
  _CopyWithImplFragmentThreadMinmediaCategories(
    this._instance,
    this._then,
  );

  final FragmentThreadMinmediaCategories _instance;

  final TRes Function(FragmentThreadMinmediaCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadMinmediaCategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentThreadMinmediaCategoriestitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentThreadMinmediaCategoriestitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentThreadMinmediaCategoriestitle.stub(_then(_instance))
        : CopyWithFragmentThreadMinmediaCategoriestitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplFragmentThreadMinmediaCategories<TRes>
    implements CopyWithFragmentThreadMinmediaCategories<TRes> {
  _CopyWithStubImplFragmentThreadMinmediaCategories(this._res);

  TRes _res;

  call({
    int? id,
    FragmentThreadMinmediaCategoriestitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentThreadMinmediaCategoriestitle<TRes> get title =>
      CopyWithFragmentThreadMinmediaCategoriestitle.stub(_res);
}

class FragmentThreadMinmediaCategoriestitle {
  FragmentThreadMinmediaCategoriestitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentThreadMinmediaCategoriestitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentThreadMinmediaCategoriestitle(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThreadMinmediaCategoriestitle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtensionFragmentThreadMinmediaCategoriestitle
    on FragmentThreadMinmediaCategoriestitle {
  CopyWithFragmentThreadMinmediaCategoriestitle<
          FragmentThreadMinmediaCategoriestitle>
      get copyWith => CopyWithFragmentThreadMinmediaCategoriestitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentThreadMinmediaCategoriestitle<TRes> {
  factory CopyWithFragmentThreadMinmediaCategoriestitle(
    FragmentThreadMinmediaCategoriestitle instance,
    TRes Function(FragmentThreadMinmediaCategoriestitle) then,
  ) = _CopyWithImplFragmentThreadMinmediaCategoriestitle;

  factory CopyWithFragmentThreadMinmediaCategoriestitle.stub(TRes res) =
      _CopyWithStubImplFragmentThreadMinmediaCategoriestitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentThreadMinmediaCategoriestitle<TRes>
    implements CopyWithFragmentThreadMinmediaCategoriestitle<TRes> {
  _CopyWithImplFragmentThreadMinmediaCategoriestitle(
    this._instance,
    this._then,
  );

  final FragmentThreadMinmediaCategoriestitle _instance;

  final TRes Function(FragmentThreadMinmediaCategoriestitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadMinmediaCategoriestitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentThreadMinmediaCategoriestitle<TRes>
    implements CopyWithFragmentThreadMinmediaCategoriestitle<TRes> {
  _CopyWithStubImplFragmentThreadMinmediaCategoriestitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class VariablesFragmentThread {
  factory VariablesFragmentThread({bool? asHtml}) => VariablesFragmentThread._({
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesFragmentThread._(this._$data);

  factory VariablesFragmentThread.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesFragmentThread._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesFragmentThread<VariablesFragmentThread> get copyWith =>
      CopyWithVariablesFragmentThread(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesFragmentThread || runtimeType != other.runtimeType) {
      return false;
    }
    final l$asHtml = asHtml;
    final lOther$asHtml = other.asHtml;
    if (_$data.containsKey('asHtml') != other._$data.containsKey('asHtml')) {
      return false;
    }
    if (l$asHtml != lOther$asHtml) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asHtml = asHtml;
    return Object.hashAll([_$data.containsKey('asHtml') ? l$asHtml : const {}]);
  }
}

abstract class CopyWithVariablesFragmentThread<TRes> {
  factory CopyWithVariablesFragmentThread(
    VariablesFragmentThread instance,
    TRes Function(VariablesFragmentThread) then,
  ) = _CopyWithImplVariablesFragmentThread;

  factory CopyWithVariablesFragmentThread.stub(TRes res) =
      _CopyWithStubImplVariablesFragmentThread;

  TRes call({bool? asHtml});
}

class _CopyWithImplVariablesFragmentThread<TRes>
    implements CopyWithVariablesFragmentThread<TRes> {
  _CopyWithImplVariablesFragmentThread(
    this._instance,
    this._then,
  );

  final VariablesFragmentThread _instance;

  final TRes Function(VariablesFragmentThread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? asHtml = _undefined}) => _then(VariablesFragmentThread._({
        ..._instance._$data,
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesFragmentThread<TRes>
    implements CopyWithVariablesFragmentThread<TRes> {
  _CopyWithStubImplVariablesFragmentThread(this._res);

  TRes _res;

  call({bool? asHtml}) => _res;
}

class FragmentThread implements FragmentThreadMin {
  FragmentThread({
    required this.id,
    this.title,
    this.body,
    this.replyCountOrNull,
    this.viewCount,
    this.repliedAt,
    this.siteUrl,
    this.user,
    this.replyUser,
    this.categories,
    this.mediaCategories,
    this.$__typename = 'Thread',
    this.replyCommentId,
    this.isLocked,
    this.isSticky,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    required this.createdAt,
    required this.updatedAt,
    this.likes,
  });

  factory FragmentThread.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$replyCountOrNull = json['replyCountOrNull'];
    final l$viewCount = json['viewCount'];
    final l$repliedAt = json['repliedAt'];
    final l$siteUrl = json['siteUrl'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$categories = json['categories'];
    final l$mediaCategories = json['mediaCategories'];
    final l$$__typename = json['__typename'];
    final l$replyCommentId = json['replyCommentId'];
    final l$isLocked = json['isLocked'];
    final l$isSticky = json['isSticky'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$likes = json['likes'];
    return FragmentThread(
      id: (l$id as int),
      title: (l$title as String?),
      body: (l$body as String?),
      replyCountOrNull: (l$replyCountOrNull as int?),
      viewCount: (l$viewCount as int?),
      repliedAt: (l$repliedAt as int?),
      siteUrl: (l$siteUrl as String?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : FragmentUserMin.fromJson((l$replyUser as Map<String, dynamic>)),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadcategories.fromJson((e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadmediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      replyCommentId: (l$replyCommentId as int?),
      isLocked: (l$isLocked as bool?),
      isSticky: (l$isSticky as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      likes: (l$likes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadlikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final int id;

  final String? title;

  final String? body;

  final int? replyCountOrNull;

  final int? viewCount;

  final int? repliedAt;

  final String? siteUrl;

  final FragmentUserMin? user;

  final FragmentUserMin? replyUser;

  final List<FragmentThreadcategories?>? categories;

  final List<FragmentThreadmediaCategories?>? mediaCategories;

  final String $__typename;

  final int? replyCommentId;

  final bool? isLocked;

  final bool? isSticky;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final int updatedAt;

  final List<FragmentThreadlikes?>? likes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$replyCountOrNull = replyCountOrNull;
    _resultData['replyCountOrNull'] = l$replyCountOrNull;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$mediaCategories = mediaCategories;
    _resultData['mediaCategories'] =
        l$mediaCategories?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$replyCommentId = replyCommentId;
    _resultData['replyCommentId'] = l$replyCommentId;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSticky = isSticky;
    _resultData['isSticky'] = l$isSticky;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$likes = likes;
    _resultData['likes'] = l$likes?.map((e) => e?.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$replyCountOrNull = replyCountOrNull;
    final l$viewCount = viewCount;
    final l$repliedAt = repliedAt;
    final l$siteUrl = siteUrl;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$categories = categories;
    final l$mediaCategories = mediaCategories;
    final l$$__typename = $__typename;
    final l$replyCommentId = replyCommentId;
    final l$isLocked = isLocked;
    final l$isSticky = isSticky;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$likes = likes;
    return Object.hashAll([
      l$id,
      l$title,
      l$body,
      l$replyCountOrNull,
      l$viewCount,
      l$repliedAt,
      l$siteUrl,
      l$user,
      l$replyUser,
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$mediaCategories == null
          ? null
          : Object.hashAll(l$mediaCategories.map((v) => v)),
      l$$__typename,
      l$replyCommentId,
      l$isLocked,
      l$isSticky,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
      l$createdAt,
      l$updatedAt,
      l$likes == null ? null : Object.hashAll(l$likes.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThread || runtimeType != other.runtimeType) {
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$replyCountOrNull = replyCountOrNull;
    final lOther$replyCountOrNull = other.replyCountOrNull;
    if (l$replyCountOrNull != lOther$replyCountOrNull) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
      return false;
    }
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$replyUser = replyUser;
    final lOther$replyUser = other.replyUser;
    if (l$replyUser != lOther$replyUser) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$mediaCategories = mediaCategories;
    final lOther$mediaCategories = other.mediaCategories;
    if (l$mediaCategories != null && lOther$mediaCategories != null) {
      if (l$mediaCategories.length != lOther$mediaCategories.length) {
        return false;
      }
      for (int i = 0; i < l$mediaCategories.length; i++) {
        final l$mediaCategories$entry = l$mediaCategories[i];
        final lOther$mediaCategories$entry = lOther$mediaCategories[i];
        if (l$mediaCategories$entry != lOther$mediaCategories$entry) {
          return false;
        }
      }
    } else if (l$mediaCategories != lOther$mediaCategories) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$replyCommentId = replyCommentId;
    final lOther$replyCommentId = other.replyCommentId;
    if (l$replyCommentId != lOther$replyCommentId) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSticky = isSticky;
    final lOther$isSticky = other.isSticky;
    if (l$isSticky != lOther$isSticky) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != null && lOther$likes != null) {
      if (l$likes.length != lOther$likes.length) {
        return false;
      }
      for (int i = 0; i < l$likes.length; i++) {
        final l$likes$entry = l$likes[i];
        final lOther$likes$entry = lOther$likes[i];
        if (l$likes$entry != lOther$likes$entry) {
          return false;
        }
      }
    } else if (l$likes != lOther$likes) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentThread on FragmentThread {
  CopyWithFragmentThread<FragmentThread> get copyWith => CopyWithFragmentThread(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentThread<TRes> {
  factory CopyWithFragmentThread(
    FragmentThread instance,
    TRes Function(FragmentThread) then,
  ) = _CopyWithImplFragmentThread;

  factory CopyWithFragmentThread.stub(TRes res) =
      _CopyWithStubImplFragmentThread;

  TRes call({
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<FragmentThreadcategories?>? categories,
    List<FragmentThreadmediaCategories?>? mediaCategories,
    String? $__typename,
    int? replyCommentId,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    int? updatedAt,
    List<FragmentThreadlikes?>? likes,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentUserMin<TRes> get replyUser;
  TRes categories(
      Iterable<FragmentThreadcategories?>? Function(
              Iterable<
                  CopyWithFragmentThreadcategories<FragmentThreadcategories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<FragmentThreadmediaCategories?>? Function(
              Iterable<
                  CopyWithFragmentThreadmediaCategories<
                      FragmentThreadmediaCategories>?>?)
          _fn);
  TRes likes(
      Iterable<FragmentThreadlikes?>? Function(
              Iterable<CopyWithFragmentThreadlikes<FragmentThreadlikes>?>?)
          _fn);
}

class _CopyWithImplFragmentThread<TRes>
    implements CopyWithFragmentThread<TRes> {
  _CopyWithImplFragmentThread(
    this._instance,
    this._then,
  );

  final FragmentThread _instance;

  final TRes Function(FragmentThread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? replyCountOrNull = _undefined,
    Object? viewCount = _undefined,
    Object? repliedAt = _undefined,
    Object? siteUrl = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? categories = _undefined,
    Object? mediaCategories = _undefined,
    Object? $__typename = _undefined,
    Object? replyCommentId = _undefined,
    Object? isLocked = _undefined,
    Object? isSticky = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? likes = _undefined,
  }) =>
      _then(FragmentThread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        replyCountOrNull: replyCountOrNull == _undefined
            ? _instance.replyCountOrNull
            : (replyCountOrNull as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as FragmentUserMin?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<FragmentThreadcategories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<FragmentThreadmediaCategories?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        replyCommentId: replyCommentId == _undefined
            ? _instance.replyCommentId
            : (replyCommentId as int?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSticky:
            isSticky == _undefined ? _instance.isSticky : (isSticky as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        likes: likes == _undefined
            ? _instance.likes
            : (likes as List<FragmentThreadlikes?>?),
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }

  CopyWithFragmentUserMin<TRes> get replyUser {
    final local$replyUser = _instance.replyUser;
    return local$replyUser == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$replyUser, (e) => call(replyUser: e));
  }

  TRes categories(
          Iterable<FragmentThreadcategories?>? Function(
                  Iterable<
                      CopyWithFragmentThreadcategories<
                          FragmentThreadcategories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadcategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes mediaCategories(
          Iterable<FragmentThreadmediaCategories?>? Function(
                  Iterable<
                      CopyWithFragmentThreadmediaCategories<
                          FragmentThreadmediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadmediaCategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes likes(
          Iterable<FragmentThreadlikes?>? Function(
                  Iterable<CopyWithFragmentThreadlikes<FragmentThreadlikes>?>?)
              _fn) =>
      call(
          likes: _fn(_instance.likes?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadlikes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplFragmentThread<TRes>
    implements CopyWithFragmentThread<TRes> {
  _CopyWithStubImplFragmentThread(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<FragmentThreadcategories?>? categories,
    List<FragmentThreadmediaCategories?>? mediaCategories,
    String? $__typename,
    int? replyCommentId,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    int? updatedAt,
    List<FragmentThreadlikes?>? likes,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentUserMin<TRes> get replyUser =>
      CopyWithFragmentUserMin.stub(_res);

  categories(_fn) => _res;

  mediaCategories(_fn) => _res;

  likes(_fn) => _res;
}

const fragmentDefinitionThread = FragmentDefinitionNode(
  name: NameNode(value: 'Thread'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Thread'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'ThreadMin'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'replyCommentId'),
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
      name: NameNode(value: 'isSticky'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSubscribed'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'likeCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isLiked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
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
      name: NameNode(value: 'likes'),
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
);
const documentNodeFragmentThread = DocumentNode(definitions: [
  fragmentDefinitionThread,
  fragmentDefinitionThreadMin,
  fragmentDefinitionUserMin,
]);

class FragmentThreadcategories implements FragmentThreadMincategories {
  FragmentThreadcategories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory FragmentThreadcategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return FragmentThreadcategories(
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
    if (other is! FragmentThreadcategories ||
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

extension UtilityExtensionFragmentThreadcategories on FragmentThreadcategories {
  CopyWithFragmentThreadcategories<FragmentThreadcategories> get copyWith =>
      CopyWithFragmentThreadcategories(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentThreadcategories<TRes> {
  factory CopyWithFragmentThreadcategories(
    FragmentThreadcategories instance,
    TRes Function(FragmentThreadcategories) then,
  ) = _CopyWithImplFragmentThreadcategories;

  factory CopyWithFragmentThreadcategories.stub(TRes res) =
      _CopyWithStubImplFragmentThreadcategories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplFragmentThreadcategories<TRes>
    implements CopyWithFragmentThreadcategories<TRes> {
  _CopyWithImplFragmentThreadcategories(
    this._instance,
    this._then,
  );

  final FragmentThreadcategories _instance;

  final TRes Function(FragmentThreadcategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadcategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentThreadcategories<TRes>
    implements CopyWithFragmentThreadcategories<TRes> {
  _CopyWithStubImplFragmentThreadcategories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class FragmentThreadmediaCategories
    implements FragmentThreadMinmediaCategories {
  FragmentThreadmediaCategories({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory FragmentThreadmediaCategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return FragmentThreadmediaCategories(
      id: (l$id as int),
      title: l$title == null
          ? null
          : FragmentThreadmediaCategoriestitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentThreadmediaCategoriestitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThreadmediaCategories ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentThreadmediaCategories
    on FragmentThreadmediaCategories {
  CopyWithFragmentThreadmediaCategories<FragmentThreadmediaCategories>
      get copyWith => CopyWithFragmentThreadmediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentThreadmediaCategories<TRes> {
  factory CopyWithFragmentThreadmediaCategories(
    FragmentThreadmediaCategories instance,
    TRes Function(FragmentThreadmediaCategories) then,
  ) = _CopyWithImplFragmentThreadmediaCategories;

  factory CopyWithFragmentThreadmediaCategories.stub(TRes res) =
      _CopyWithStubImplFragmentThreadmediaCategories;

  TRes call({
    int? id,
    FragmentThreadmediaCategoriestitle? title,
    String? $__typename,
  });
  CopyWithFragmentThreadmediaCategoriestitle<TRes> get title;
}

class _CopyWithImplFragmentThreadmediaCategories<TRes>
    implements CopyWithFragmentThreadmediaCategories<TRes> {
  _CopyWithImplFragmentThreadmediaCategories(
    this._instance,
    this._then,
  );

  final FragmentThreadmediaCategories _instance;

  final TRes Function(FragmentThreadmediaCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadmediaCategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentThreadmediaCategoriestitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentThreadmediaCategoriestitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentThreadmediaCategoriestitle.stub(_then(_instance))
        : CopyWithFragmentThreadmediaCategoriestitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplFragmentThreadmediaCategories<TRes>
    implements CopyWithFragmentThreadmediaCategories<TRes> {
  _CopyWithStubImplFragmentThreadmediaCategories(this._res);

  TRes _res;

  call({
    int? id,
    FragmentThreadmediaCategoriestitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentThreadmediaCategoriestitle<TRes> get title =>
      CopyWithFragmentThreadmediaCategoriestitle.stub(_res);
}

class FragmentThreadmediaCategoriestitle
    implements FragmentThreadMinmediaCategoriestitle {
  FragmentThreadmediaCategoriestitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentThreadmediaCategoriestitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentThreadmediaCategoriestitle(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentThreadmediaCategoriestitle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtensionFragmentThreadmediaCategoriestitle
    on FragmentThreadmediaCategoriestitle {
  CopyWithFragmentThreadmediaCategoriestitle<FragmentThreadmediaCategoriestitle>
      get copyWith => CopyWithFragmentThreadmediaCategoriestitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentThreadmediaCategoriestitle<TRes> {
  factory CopyWithFragmentThreadmediaCategoriestitle(
    FragmentThreadmediaCategoriestitle instance,
    TRes Function(FragmentThreadmediaCategoriestitle) then,
  ) = _CopyWithImplFragmentThreadmediaCategoriestitle;

  factory CopyWithFragmentThreadmediaCategoriestitle.stub(TRes res) =
      _CopyWithStubImplFragmentThreadmediaCategoriestitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentThreadmediaCategoriestitle<TRes>
    implements CopyWithFragmentThreadmediaCategoriestitle<TRes> {
  _CopyWithImplFragmentThreadmediaCategoriestitle(
    this._instance,
    this._then,
  );

  final FragmentThreadmediaCategoriestitle _instance;

  final TRes Function(FragmentThreadmediaCategoriestitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadmediaCategoriestitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentThreadmediaCategoriestitle<TRes>
    implements CopyWithFragmentThreadmediaCategoriestitle<TRes> {
  _CopyWithStubImplFragmentThreadmediaCategoriestitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class FragmentThreadlikes {
  FragmentThreadlikes({
    required this.id,
    this.$__typename = 'User',
  });

  factory FragmentThreadlikes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return FragmentThreadlikes(
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
    if (other is! FragmentThreadlikes || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentThreadlikes on FragmentThreadlikes {
  CopyWithFragmentThreadlikes<FragmentThreadlikes> get copyWith =>
      CopyWithFragmentThreadlikes(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentThreadlikes<TRes> {
  factory CopyWithFragmentThreadlikes(
    FragmentThreadlikes instance,
    TRes Function(FragmentThreadlikes) then,
  ) = _CopyWithImplFragmentThreadlikes;

  factory CopyWithFragmentThreadlikes.stub(TRes res) =
      _CopyWithStubImplFragmentThreadlikes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplFragmentThreadlikes<TRes>
    implements CopyWithFragmentThreadlikes<TRes> {
  _CopyWithImplFragmentThreadlikes(
    this._instance,
    this._then,
  );

  final FragmentThreadlikes _instance;

  final TRes Function(FragmentThreadlikes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentThreadlikes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentThreadlikes<TRes>
    implements CopyWithFragmentThreadlikes<TRes> {
  _CopyWithStubImplFragmentThreadlikes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryThreads {
  factory VariablesQueryThreads({
    int? page,
    int? perPage,
    List<EnumThreadSort?>? sort,
    bool? subscribed,
    int? categoryId,
    bool? asHtml,
  }) =>
      VariablesQueryThreads._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (sort != null) r'sort': sort,
        if (subscribed != null) r'subscribed': subscribed,
        if (categoryId != null) r'categoryId': categoryId,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesQueryThreads._(this._$data);

  factory VariablesQueryThreads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJsonEnumThreadSort((e as String)))
          .toList();
    }
    if (data.containsKey('subscribed')) {
      final l$subscribed = data['subscribed'];
      result$data['subscribed'] = (l$subscribed as bool?);
    }
    if (data.containsKey('categoryId')) {
      final l$categoryId = data['categoryId'];
      result$data['categoryId'] = (l$categoryId as int?);
    }
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesQueryThreads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  List<EnumThreadSort?>? get sort => (_$data['sort'] as List<EnumThreadSort?>?);

  bool? get subscribed => (_$data['subscribed'] as bool?);

  int? get categoryId => (_$data['categoryId'] as int?);

  bool? get asHtml => (_$data['asHtml'] as bool?);

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
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumThreadSort(e))
          .toList();
    }
    if (_$data.containsKey('subscribed')) {
      final l$subscribed = subscribed;
      result$data['subscribed'] = l$subscribed;
    }
    if (_$data.containsKey('categoryId')) {
      final l$categoryId = categoryId;
      result$data['categoryId'] = l$categoryId;
    }
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesQueryThreads<VariablesQueryThreads> get copyWith =>
      CopyWithVariablesQueryThreads(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryThreads || runtimeType != other.runtimeType) {
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
    final l$subscribed = subscribed;
    final lOther$subscribed = other.subscribed;
    if (_$data.containsKey('subscribed') !=
        other._$data.containsKey('subscribed')) {
      return false;
    }
    if (l$subscribed != lOther$subscribed) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (_$data.containsKey('categoryId') !=
        other._$data.containsKey('categoryId')) {
      return false;
    }
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    final l$asHtml = asHtml;
    final lOther$asHtml = other.asHtml;
    if (_$data.containsKey('asHtml') != other._$data.containsKey('asHtml')) {
      return false;
    }
    if (l$asHtml != lOther$asHtml) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$sort = sort;
    final l$subscribed = subscribed;
    final l$categoryId = categoryId;
    final l$asHtml = asHtml;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('subscribed') ? l$subscribed : const {},
      _$data.containsKey('categoryId') ? l$categoryId : const {},
      _$data.containsKey('asHtml') ? l$asHtml : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryThreads<TRes> {
  factory CopyWithVariablesQueryThreads(
    VariablesQueryThreads instance,
    TRes Function(VariablesQueryThreads) then,
  ) = _CopyWithImplVariablesQueryThreads;

  factory CopyWithVariablesQueryThreads.stub(TRes res) =
      _CopyWithStubImplVariablesQueryThreads;

  TRes call({
    int? page,
    int? perPage,
    List<EnumThreadSort?>? sort,
    bool? subscribed,
    int? categoryId,
    bool? asHtml,
  });
}

class _CopyWithImplVariablesQueryThreads<TRes>
    implements CopyWithVariablesQueryThreads<TRes> {
  _CopyWithImplVariablesQueryThreads(
    this._instance,
    this._then,
  );

  final VariablesQueryThreads _instance;

  final TRes Function(VariablesQueryThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? sort = _undefined,
    Object? subscribed = _undefined,
    Object? categoryId = _undefined,
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesQueryThreads._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (sort != _undefined) 'sort': (sort as List<EnumThreadSort?>?),
        if (subscribed != _undefined) 'subscribed': (subscribed as bool?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryThreads<TRes>
    implements CopyWithVariablesQueryThreads<TRes> {
  _CopyWithStubImplVariablesQueryThreads(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    List<EnumThreadSort?>? sort,
    bool? subscribed,
    int? categoryId,
    bool? asHtml,
  }) =>
      _res;
}

class QueryThreads {
  QueryThreads({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryThreads.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryThreads(
      Page: l$Page == null
          ? null
          : QueryThreadsPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryThreadsPage? Page;

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
    if (other is! QueryThreads || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryThreads on QueryThreads {
  CopyWithQueryThreads<QueryThreads> get copyWith => CopyWithQueryThreads(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreads<TRes> {
  factory CopyWithQueryThreads(
    QueryThreads instance,
    TRes Function(QueryThreads) then,
  ) = _CopyWithImplQueryThreads;

  factory CopyWithQueryThreads.stub(TRes res) = _CopyWithStubImplQueryThreads;

  TRes call({
    QueryThreadsPage? Page,
    String? $__typename,
  });
  CopyWithQueryThreadsPage<TRes> get Page;
}

class _CopyWithImplQueryThreads<TRes> implements CopyWithQueryThreads<TRes> {
  _CopyWithImplQueryThreads(
    this._instance,
    this._then,
  );

  final QueryThreads _instance;

  final TRes Function(QueryThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreads(
        Page: Page == _undefined ? _instance.Page : (Page as QueryThreadsPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryThreadsPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryThreadsPage.stub(_then(_instance))
        : CopyWithQueryThreadsPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryThreads<TRes>
    implements CopyWithQueryThreads<TRes> {
  _CopyWithStubImplQueryThreads(this._res);

  TRes _res;

  call({
    QueryThreadsPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryThreadsPage<TRes> get Page =>
      CopyWithQueryThreadsPage.stub(_res);
}

const documentNodeQueryThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Threads'),
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ThreadSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subscribed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'asHtml')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
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
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'subscribed'),
                value: VariableNode(name: NameNode(value: 'subscribed')),
              ),
              ArgumentNode(
                name: NameNode(value: 'categoryId'),
                value: VariableNode(name: NameNode(value: 'categoryId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadMin'),
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
  fragmentDefinitionThreadMin,
  fragmentDefinitionUserMin,
]);

class QueryThreadsPage {
  QueryThreadsPage({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory QueryThreadsPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryThreadsPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentThreadMin.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryThreadsPagepageInfo? pageInfo;

  final List<FragmentThreadMin?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryThreadsPage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threads = threads;
    final lOther$threads = other.threads;
    if (l$threads != null && lOther$threads != null) {
      if (l$threads.length != lOther$threads.length) {
        return false;
      }
      for (int i = 0; i < l$threads.length; i++) {
        final l$threads$entry = l$threads[i];
        final lOther$threads$entry = lOther$threads[i];
        if (l$threads$entry != lOther$threads$entry) {
          return false;
        }
      }
    } else if (l$threads != lOther$threads) {
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

extension UtilityExtensionQueryThreadsPage on QueryThreadsPage {
  CopyWithQueryThreadsPage<QueryThreadsPage> get copyWith =>
      CopyWithQueryThreadsPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreadsPage<TRes> {
  factory CopyWithQueryThreadsPage(
    QueryThreadsPage instance,
    TRes Function(QueryThreadsPage) then,
  ) = _CopyWithImplQueryThreadsPage;

  factory CopyWithQueryThreadsPage.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPage;

  TRes call({
    QueryThreadsPagepageInfo? pageInfo,
    List<FragmentThreadMin?>? threads,
    String? $__typename,
  });
  CopyWithQueryThreadsPagepageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<FragmentThreadMin?>? Function(
              Iterable<CopyWithFragmentThreadMin<FragmentThreadMin>?>?)
          _fn);
}

class _CopyWithImplQueryThreadsPage<TRes>
    implements CopyWithQueryThreadsPage<TRes> {
  _CopyWithImplQueryThreadsPage(
    this._instance,
    this._then,
  );

  final QueryThreadsPage _instance;

  final TRes Function(QueryThreadsPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryThreadsPagepageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<FragmentThreadMin?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryThreadsPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryThreadsPagepageInfo.stub(_then(_instance))
        : CopyWithQueryThreadsPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes threads(
          Iterable<FragmentThreadMin?>? Function(
                  Iterable<CopyWithFragmentThreadMin<FragmentThreadMin>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWithFragmentThreadMin(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryThreadsPage<TRes>
    implements CopyWithQueryThreadsPage<TRes> {
  _CopyWithStubImplQueryThreadsPage(this._res);

  TRes _res;

  call({
    QueryThreadsPagepageInfo? pageInfo,
    List<FragmentThreadMin?>? threads,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryThreadsPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryThreadsPagepageInfo.stub(_res);

  threads(_fn) => _res;
}

class QueryThreadsPagepageInfo {
  QueryThreadsPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryThreadsPagepageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPagepageInfo(
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
    if (other is! QueryThreadsPagepageInfo ||
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

extension UtilityExtensionQueryThreadsPagepageInfo on QueryThreadsPagepageInfo {
  CopyWithQueryThreadsPagepageInfo<QueryThreadsPagepageInfo> get copyWith =>
      CopyWithQueryThreadsPagepageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreadsPagepageInfo<TRes> {
  factory CopyWithQueryThreadsPagepageInfo(
    QueryThreadsPagepageInfo instance,
    TRes Function(QueryThreadsPagepageInfo) then,
  ) = _CopyWithImplQueryThreadsPagepageInfo;

  factory CopyWithQueryThreadsPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadsPagepageInfo<TRes>
    implements CopyWithQueryThreadsPagepageInfo<TRes> {
  _CopyWithImplQueryThreadsPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryThreadsPagepageInfo _instance;

  final TRes Function(QueryThreadsPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPagepageInfo(
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

class _CopyWithStubImplQueryThreadsPagepageInfo<TRes>
    implements CopyWithQueryThreadsPagepageInfo<TRes> {
  _CopyWithStubImplQueryThreadsPagepageInfo(this._res);

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

class VariablesQueryThread {
  factory VariablesQueryThread({
    int? threadId,
    String? search,
    bool? asHtml,
  }) =>
      VariablesQueryThread._({
        if (threadId != null) r'threadId': threadId,
        if (search != null) r'search': search,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesQueryThread._(this._$data);

  factory VariablesQueryThread.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('threadId')) {
      final l$threadId = data['threadId'];
      result$data['threadId'] = (l$threadId as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesQueryThread._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get threadId => (_$data['threadId'] as int?);

  String? get search => (_$data['search'] as String?);

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('threadId')) {
      final l$threadId = threadId;
      result$data['threadId'] = l$threadId;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesQueryThread<VariablesQueryThread> get copyWith =>
      CopyWithVariablesQueryThread(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryThread || runtimeType != other.runtimeType) {
      return false;
    }
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (_$data.containsKey('threadId') !=
        other._$data.containsKey('threadId')) {
      return false;
    }
    if (l$threadId != lOther$threadId) {
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
    final l$asHtml = asHtml;
    final lOther$asHtml = other.asHtml;
    if (_$data.containsKey('asHtml') != other._$data.containsKey('asHtml')) {
      return false;
    }
    if (l$asHtml != lOther$asHtml) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$threadId = threadId;
    final l$search = search;
    final l$asHtml = asHtml;
    return Object.hashAll([
      _$data.containsKey('threadId') ? l$threadId : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('asHtml') ? l$asHtml : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryThread<TRes> {
  factory CopyWithVariablesQueryThread(
    VariablesQueryThread instance,
    TRes Function(VariablesQueryThread) then,
  ) = _CopyWithImplVariablesQueryThread;

  factory CopyWithVariablesQueryThread.stub(TRes res) =
      _CopyWithStubImplVariablesQueryThread;

  TRes call({
    int? threadId,
    String? search,
    bool? asHtml,
  });
}

class _CopyWithImplVariablesQueryThread<TRes>
    implements CopyWithVariablesQueryThread<TRes> {
  _CopyWithImplVariablesQueryThread(
    this._instance,
    this._then,
  );

  final VariablesQueryThread _instance;

  final TRes Function(VariablesQueryThread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threadId = _undefined,
    Object? search = _undefined,
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesQueryThread._({
        ..._instance._$data,
        if (threadId != _undefined) 'threadId': (threadId as int?),
        if (search != _undefined) 'search': (search as String?),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryThread<TRes>
    implements CopyWithVariablesQueryThread<TRes> {
  _CopyWithStubImplVariablesQueryThread(this._res);

  TRes _res;

  call({
    int? threadId,
    String? search,
    bool? asHtml,
  }) =>
      _res;
}

class QueryThread {
  QueryThread({
    this.Thread,
    this.$__typename = 'Query',
  });

  factory QueryThread.fromJson(Map<String, dynamic> json) {
    final l$Thread = json['Thread'];
    final l$$__typename = json['__typename'];
    return QueryThread(
      Thread: l$Thread == null
          ? null
          : FragmentThread.fromJson((l$Thread as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentThread? Thread;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Thread = Thread;
    _resultData['Thread'] = l$Thread?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Thread = Thread;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Thread,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryThread || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Thread = Thread;
    final lOther$Thread = other.Thread;
    if (l$Thread != lOther$Thread) {
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

extension UtilityExtensionQueryThread on QueryThread {
  CopyWithQueryThread<QueryThread> get copyWith => CopyWithQueryThread(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThread<TRes> {
  factory CopyWithQueryThread(
    QueryThread instance,
    TRes Function(QueryThread) then,
  ) = _CopyWithImplQueryThread;

  factory CopyWithQueryThread.stub(TRes res) = _CopyWithStubImplQueryThread;

  TRes call({
    FragmentThread? Thread,
    String? $__typename,
  });
  CopyWithFragmentThread<TRes> get Thread;
}

class _CopyWithImplQueryThread<TRes> implements CopyWithQueryThread<TRes> {
  _CopyWithImplQueryThread(
    this._instance,
    this._then,
  );

  final QueryThread _instance;

  final TRes Function(QueryThread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Thread = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThread(
        Thread: Thread == _undefined
            ? _instance.Thread
            : (Thread as FragmentThread?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentThread<TRes> get Thread {
    final local$Thread = _instance.Thread;
    return local$Thread == null
        ? CopyWithFragmentThread.stub(_then(_instance))
        : CopyWithFragmentThread(local$Thread, (e) => call(Thread: e));
  }
}

class _CopyWithStubImplQueryThread<TRes> implements CopyWithQueryThread<TRes> {
  _CopyWithStubImplQueryThread(this._res);

  TRes _res;

  call({
    FragmentThread? Thread,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentThread<TRes> get Thread => CopyWithFragmentThread.stub(_res);
}

const documentNodeQueryThread = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Thread'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'threadId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        variable: VariableNode(name: NameNode(value: 'asHtml')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Thread'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'threadId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Thread'),
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
  fragmentDefinitionThread,
  fragmentDefinitionThreadMin,
  fragmentDefinitionUserMin,
]);
