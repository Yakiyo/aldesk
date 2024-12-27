import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

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
    if (!(other is VariablesQueryThreads) || runtimeType != other.runtimeType) {
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
    if (!(other is QueryThreads) || runtimeType != other.runtimeType) {
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
                alias: null,
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
              : QueryThreadsPagethreads.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryThreadsPagepageInfo? pageInfo;

  final List<QueryThreadsPagethreads?>? threads;

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
    if (!(other is QueryThreadsPage) || runtimeType != other.runtimeType) {
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
    List<QueryThreadsPagethreads?>? threads,
    String? $__typename,
  });
  CopyWithQueryThreadsPagepageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<QueryThreadsPagethreads?>? Function(
              Iterable<
                  CopyWithQueryThreadsPagethreads<QueryThreadsPagethreads>?>?)
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
            : (threads as List<QueryThreadsPagethreads?>?),
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
          Iterable<QueryThreadsPagethreads?>? Function(
                  Iterable<
                      CopyWithQueryThreadsPagethreads<
                          QueryThreadsPagethreads>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWithQueryThreadsPagethreads(
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
    List<QueryThreadsPagethreads?>? threads,
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
    if (!(other is QueryThreadsPagepageInfo) ||
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

class QueryThreadsPagethreads {
  QueryThreadsPagethreads({
    required this.id,
    this.title,
    this.body,
    this.replyCount,
    this.viewCount,
    this.repliedAt,
    this.siteUrl,
    this.user,
    this.replyUser,
    this.categories,
    this.mediaCategories,
    this.$__typename = 'Thread',
  });

  factory QueryThreadsPagethreads.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$repliedAt = json['repliedAt'];
    final l$siteUrl = json['siteUrl'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$categories = json['categories'];
    final l$mediaCategories = json['mediaCategories'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPagethreads(
      id: (l$id as int),
      title: (l$title as String?),
      body: (l$body as String?),
      replyCount: (l$replyCount as int?),
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
              : QueryThreadsPagethreadscategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryThreadsPagethreadsmediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String? body;

  final int? replyCount;

  final int? viewCount;

  final int? repliedAt;

  final String? siteUrl;

  final FragmentUserMin? user;

  final FragmentUserMin? replyUser;

  final List<QueryThreadsPagethreadscategories?>? categories;

  final List<QueryThreadsPagethreadsmediaCategories?>? mediaCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
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
    final l$replyCount = replyCount;
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
      l$replyCount,
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
    if (!(other is QueryThreadsPagethreads) ||
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
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
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

extension UtilityExtensionQueryThreadsPagethreads on QueryThreadsPagethreads {
  CopyWithQueryThreadsPagethreads<QueryThreadsPagethreads> get copyWith =>
      CopyWithQueryThreadsPagethreads(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreadsPagethreads<TRes> {
  factory CopyWithQueryThreadsPagethreads(
    QueryThreadsPagethreads instance,
    TRes Function(QueryThreadsPagethreads) then,
  ) = _CopyWithImplQueryThreadsPagethreads;

  factory CopyWithQueryThreadsPagethreads.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPagethreads;

  TRes call({
    int? id,
    String? title,
    String? body,
    int? replyCount,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<QueryThreadsPagethreadscategories?>? categories,
    List<QueryThreadsPagethreadsmediaCategories?>? mediaCategories,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentUserMin<TRes> get replyUser;
  TRes categories(
      Iterable<QueryThreadsPagethreadscategories?>? Function(
              Iterable<
                  CopyWithQueryThreadsPagethreadscategories<
                      QueryThreadsPagethreadscategories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<QueryThreadsPagethreadsmediaCategories?>? Function(
              Iterable<
                  CopyWithQueryThreadsPagethreadsmediaCategories<
                      QueryThreadsPagethreadsmediaCategories>?>?)
          _fn);
}

class _CopyWithImplQueryThreadsPagethreads<TRes>
    implements CopyWithQueryThreadsPagethreads<TRes> {
  _CopyWithImplQueryThreadsPagethreads(
    this._instance,
    this._then,
  );

  final QueryThreadsPagethreads _instance;

  final TRes Function(QueryThreadsPagethreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? repliedAt = _undefined,
    Object? siteUrl = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? categories = _undefined,
    Object? mediaCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPagethreads(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        replyCount: replyCount == _undefined
            ? _instance.replyCount
            : (replyCount as int?),
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
            : (categories as List<QueryThreadsPagethreadscategories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories
                as List<QueryThreadsPagethreadsmediaCategories?>?),
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
          Iterable<QueryThreadsPagethreadscategories?>? Function(
                  Iterable<
                      CopyWithQueryThreadsPagethreadscategories<
                          QueryThreadsPagethreadscategories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWithQueryThreadsPagethreadscategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes mediaCategories(
          Iterable<QueryThreadsPagethreadsmediaCategories?>? Function(
                  Iterable<
                      CopyWithQueryThreadsPagethreadsmediaCategories<
                          QueryThreadsPagethreadsmediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWithQueryThreadsPagethreadsmediaCategories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryThreadsPagethreads<TRes>
    implements CopyWithQueryThreadsPagethreads<TRes> {
  _CopyWithStubImplQueryThreadsPagethreads(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? body,
    int? replyCount,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<QueryThreadsPagethreadscategories?>? categories,
    List<QueryThreadsPagethreadsmediaCategories?>? mediaCategories,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentUserMin<TRes> get replyUser =>
      CopyWithFragmentUserMin.stub(_res);

  categories(_fn) => _res;

  mediaCategories(_fn) => _res;
}

class QueryThreadsPagethreadscategories {
  QueryThreadsPagethreadscategories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory QueryThreadsPagethreadscategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPagethreadscategories(
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
    if (!(other is QueryThreadsPagethreadscategories) ||
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

extension UtilityExtensionQueryThreadsPagethreadscategories
    on QueryThreadsPagethreadscategories {
  CopyWithQueryThreadsPagethreadscategories<QueryThreadsPagethreadscategories>
      get copyWith => CopyWithQueryThreadsPagethreadscategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadsPagethreadscategories<TRes> {
  factory CopyWithQueryThreadsPagethreadscategories(
    QueryThreadsPagethreadscategories instance,
    TRes Function(QueryThreadsPagethreadscategories) then,
  ) = _CopyWithImplQueryThreadsPagethreadscategories;

  factory CopyWithQueryThreadsPagethreadscategories.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPagethreadscategories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadsPagethreadscategories<TRes>
    implements CopyWithQueryThreadsPagethreadscategories<TRes> {
  _CopyWithImplQueryThreadsPagethreadscategories(
    this._instance,
    this._then,
  );

  final QueryThreadsPagethreadscategories _instance;

  final TRes Function(QueryThreadsPagethreadscategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPagethreadscategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryThreadsPagethreadscategories<TRes>
    implements CopyWithQueryThreadsPagethreadscategories<TRes> {
  _CopyWithStubImplQueryThreadsPagethreadscategories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class QueryThreadsPagethreadsmediaCategories {
  QueryThreadsPagethreadsmediaCategories({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory QueryThreadsPagethreadsmediaCategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPagethreadsmediaCategories(
      id: (l$id as int),
      title: l$title == null
          ? null
          : QueryThreadsPagethreadsmediaCategoriestitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryThreadsPagethreadsmediaCategoriestitle? title;

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
    if (!(other is QueryThreadsPagethreadsmediaCategories) ||
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

extension UtilityExtensionQueryThreadsPagethreadsmediaCategories
    on QueryThreadsPagethreadsmediaCategories {
  CopyWithQueryThreadsPagethreadsmediaCategories<
          QueryThreadsPagethreadsmediaCategories>
      get copyWith => CopyWithQueryThreadsPagethreadsmediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadsPagethreadsmediaCategories<TRes> {
  factory CopyWithQueryThreadsPagethreadsmediaCategories(
    QueryThreadsPagethreadsmediaCategories instance,
    TRes Function(QueryThreadsPagethreadsmediaCategories) then,
  ) = _CopyWithImplQueryThreadsPagethreadsmediaCategories;

  factory CopyWithQueryThreadsPagethreadsmediaCategories.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPagethreadsmediaCategories;

  TRes call({
    int? id,
    QueryThreadsPagethreadsmediaCategoriestitle? title,
    String? $__typename,
  });
  CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> get title;
}

class _CopyWithImplQueryThreadsPagethreadsmediaCategories<TRes>
    implements CopyWithQueryThreadsPagethreadsmediaCategories<TRes> {
  _CopyWithImplQueryThreadsPagethreadsmediaCategories(
    this._instance,
    this._then,
  );

  final QueryThreadsPagethreadsmediaCategories _instance;

  final TRes Function(QueryThreadsPagethreadsmediaCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPagethreadsmediaCategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as QueryThreadsPagethreadsmediaCategoriestitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryThreadsPagethreadsmediaCategoriestitle.stub(
            _then(_instance))
        : CopyWithQueryThreadsPagethreadsmediaCategoriestitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQueryThreadsPagethreadsmediaCategories<TRes>
    implements CopyWithQueryThreadsPagethreadsmediaCategories<TRes> {
  _CopyWithStubImplQueryThreadsPagethreadsmediaCategories(this._res);

  TRes _res;

  call({
    int? id,
    QueryThreadsPagethreadsmediaCategoriestitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> get title =>
      CopyWithQueryThreadsPagethreadsmediaCategoriestitle.stub(_res);
}

class QueryThreadsPagethreadsmediaCategoriestitle {
  QueryThreadsPagethreadsmediaCategoriestitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryThreadsPagethreadsmediaCategoriestitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryThreadsPagethreadsmediaCategoriestitle(
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
    if (!(other is QueryThreadsPagethreadsmediaCategoriestitle) ||
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

extension UtilityExtensionQueryThreadsPagethreadsmediaCategoriestitle
    on QueryThreadsPagethreadsmediaCategoriestitle {
  CopyWithQueryThreadsPagethreadsmediaCategoriestitle<
          QueryThreadsPagethreadsmediaCategoriestitle>
      get copyWith => CopyWithQueryThreadsPagethreadsmediaCategoriestitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> {
  factory CopyWithQueryThreadsPagethreadsmediaCategoriestitle(
    QueryThreadsPagethreadsmediaCategoriestitle instance,
    TRes Function(QueryThreadsPagethreadsmediaCategoriestitle) then,
  ) = _CopyWithImplQueryThreadsPagethreadsmediaCategoriestitle;

  factory CopyWithQueryThreadsPagethreadsmediaCategoriestitle.stub(TRes res) =
      _CopyWithStubImplQueryThreadsPagethreadsmediaCategoriestitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadsPagethreadsmediaCategoriestitle<TRes>
    implements CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> {
  _CopyWithImplQueryThreadsPagethreadsmediaCategoriestitle(
    this._instance,
    this._then,
  );

  final QueryThreadsPagethreadsmediaCategoriestitle _instance;

  final TRes Function(QueryThreadsPagethreadsmediaCategoriestitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadsPagethreadsmediaCategoriestitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryThreadsPagethreadsmediaCategoriestitle<TRes>
    implements CopyWithQueryThreadsPagethreadsmediaCategoriestitle<TRes> {
  _CopyWithStubImplQueryThreadsPagethreadsmediaCategoriestitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
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
    if (!(other is VariablesQueryThread) || runtimeType != other.runtimeType) {
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
          : QueryThreadThread.fromJson((l$Thread as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryThreadThread? Thread;

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
    if (!(other is QueryThread) || runtimeType != other.runtimeType) {
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
    QueryThreadThread? Thread,
    String? $__typename,
  });
  CopyWithQueryThreadThread<TRes> get Thread;
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
            : (Thread as QueryThreadThread?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryThreadThread<TRes> get Thread {
    final local$Thread = _instance.Thread;
    return local$Thread == null
        ? CopyWithQueryThreadThread.stub(_then(_instance))
        : CopyWithQueryThreadThread(local$Thread, (e) => call(Thread: e));
  }
}

class _CopyWithStubImplQueryThread<TRes> implements CopyWithQueryThread<TRes> {
  _CopyWithStubImplQueryThread(this._res);

  TRes _res;

  call({
    QueryThreadThread? Thread,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryThreadThread<TRes> get Thread =>
      CopyWithQueryThreadThread.stub(_res);
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
            name: NameNode(value: 'replyCommentId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyCount'),
            alias: null,
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
            name: NameNode(value: 'repliedAt'),
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
  fragmentDefinitionUserMin,
]);

class QueryThreadThread {
  QueryThreadThread({
    required this.id,
    this.title,
    this.body,
    this.replyCommentId,
    this.replyCount,
    this.viewCount,
    this.isLocked,
    this.isSticky,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    this.repliedAt,
    required this.createdAt,
    required this.updatedAt,
    this.siteUrl,
    this.user,
    this.replyUser,
    this.likes,
    this.categories,
    this.mediaCategories,
    this.$__typename = 'Thread',
  });

  factory QueryThreadThread.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$replyCommentId = json['replyCommentId'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$isLocked = json['isLocked'];
    final l$isSticky = json['isSticky'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$repliedAt = json['repliedAt'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$siteUrl = json['siteUrl'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$likes = json['likes'];
    final l$categories = json['categories'];
    final l$mediaCategories = json['mediaCategories'];
    final l$$__typename = json['__typename'];
    return QueryThreadThread(
      id: (l$id as int),
      title: (l$title as String?),
      body: (l$body as String?),
      replyCommentId: (l$replyCommentId as int?),
      replyCount: (l$replyCount as int?),
      viewCount: (l$viewCount as int?),
      isLocked: (l$isLocked as bool?),
      isSticky: (l$isSticky as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      repliedAt: (l$repliedAt as int?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      siteUrl: (l$siteUrl as String?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : FragmentUserMin.fromJson((l$replyUser as Map<String, dynamic>)),
      likes: (l$likes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryThreadThreadlikes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryThreadThreadcategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryThreadThreadmediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String? body;

  final int? replyCommentId;

  final int? replyCount;

  final int? viewCount;

  final bool? isLocked;

  final bool? isSticky;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final int? repliedAt;

  final int createdAt;

  final int updatedAt;

  final String? siteUrl;

  final FragmentUserMin? user;

  final FragmentUserMin? replyUser;

  final List<QueryThreadThreadlikes?>? likes;

  final List<QueryThreadThreadcategories?>? categories;

  final List<QueryThreadThreadmediaCategories?>? mediaCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$replyCommentId = replyCommentId;
    _resultData['replyCommentId'] = l$replyCommentId;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
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
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$likes = likes;
    _resultData['likes'] = l$likes?.map((e) => e?.toJson()).toList();
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
    final l$replyCommentId = replyCommentId;
    final l$replyCount = replyCount;
    final l$viewCount = viewCount;
    final l$isLocked = isLocked;
    final l$isSticky = isSticky;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$repliedAt = repliedAt;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$siteUrl = siteUrl;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$likes = likes;
    final l$categories = categories;
    final l$mediaCategories = mediaCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$body,
      l$replyCommentId,
      l$replyCount,
      l$viewCount,
      l$isLocked,
      l$isSticky,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
      l$repliedAt,
      l$createdAt,
      l$updatedAt,
      l$siteUrl,
      l$user,
      l$replyUser,
      l$likes == null ? null : Object.hashAll(l$likes.map((v) => v)),
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
    if (!(other is QueryThreadThread) || runtimeType != other.runtimeType) {
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
    final l$replyCommentId = replyCommentId;
    final lOther$replyCommentId = other.replyCommentId;
    if (l$replyCommentId != lOther$replyCommentId) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
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
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
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

extension UtilityExtensionQueryThreadThread on QueryThreadThread {
  CopyWithQueryThreadThread<QueryThreadThread> get copyWith =>
      CopyWithQueryThreadThread(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreadThread<TRes> {
  factory CopyWithQueryThreadThread(
    QueryThreadThread instance,
    TRes Function(QueryThreadThread) then,
  ) = _CopyWithImplQueryThreadThread;

  factory CopyWithQueryThreadThread.stub(TRes res) =
      _CopyWithStubImplQueryThreadThread;

  TRes call({
    int? id,
    String? title,
    String? body,
    int? replyCommentId,
    int? replyCount,
    int? viewCount,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? repliedAt,
    int? createdAt,
    int? updatedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<QueryThreadThreadlikes?>? likes,
    List<QueryThreadThreadcategories?>? categories,
    List<QueryThreadThreadmediaCategories?>? mediaCategories,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentUserMin<TRes> get replyUser;
  TRes likes(
      Iterable<QueryThreadThreadlikes?>? Function(
              Iterable<
                  CopyWithQueryThreadThreadlikes<QueryThreadThreadlikes>?>?)
          _fn);
  TRes categories(
      Iterable<QueryThreadThreadcategories?>? Function(
              Iterable<
                  CopyWithQueryThreadThreadcategories<
                      QueryThreadThreadcategories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<QueryThreadThreadmediaCategories?>? Function(
              Iterable<
                  CopyWithQueryThreadThreadmediaCategories<
                      QueryThreadThreadmediaCategories>?>?)
          _fn);
}

class _CopyWithImplQueryThreadThread<TRes>
    implements CopyWithQueryThreadThread<TRes> {
  _CopyWithImplQueryThreadThread(
    this._instance,
    this._then,
  );

  final QueryThreadThread _instance;

  final TRes Function(QueryThreadThread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? replyCommentId = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSticky = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? repliedAt = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? siteUrl = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? likes = _undefined,
    Object? categories = _undefined,
    Object? mediaCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadThread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        replyCommentId: replyCommentId == _undefined
            ? _instance.replyCommentId
            : (replyCommentId as int?),
        replyCount: replyCount == _undefined
            ? _instance.replyCount
            : (replyCount as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
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
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as FragmentUserMin?),
        likes: likes == _undefined
            ? _instance.likes
            : (likes as List<QueryThreadThreadlikes?>?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<QueryThreadThreadcategories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<QueryThreadThreadmediaCategories?>?),
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

  TRes likes(
          Iterable<QueryThreadThreadlikes?>? Function(
                  Iterable<
                      CopyWithQueryThreadThreadlikes<QueryThreadThreadlikes>?>?)
              _fn) =>
      call(
          likes: _fn(_instance.likes?.map((e) => e == null
              ? null
              : CopyWithQueryThreadThreadlikes(
                  e,
                  (i) => i,
                )))?.toList());

  TRes categories(
          Iterable<QueryThreadThreadcategories?>? Function(
                  Iterable<
                      CopyWithQueryThreadThreadcategories<
                          QueryThreadThreadcategories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWithQueryThreadThreadcategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes mediaCategories(
          Iterable<QueryThreadThreadmediaCategories?>? Function(
                  Iterable<
                      CopyWithQueryThreadThreadmediaCategories<
                          QueryThreadThreadmediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWithQueryThreadThreadmediaCategories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryThreadThread<TRes>
    implements CopyWithQueryThreadThread<TRes> {
  _CopyWithStubImplQueryThreadThread(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? body,
    int? replyCommentId,
    int? replyCount,
    int? viewCount,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? repliedAt,
    int? createdAt,
    int? updatedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<QueryThreadThreadlikes?>? likes,
    List<QueryThreadThreadcategories?>? categories,
    List<QueryThreadThreadmediaCategories?>? mediaCategories,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentUserMin<TRes> get replyUser =>
      CopyWithFragmentUserMin.stub(_res);

  likes(_fn) => _res;

  categories(_fn) => _res;

  mediaCategories(_fn) => _res;
}

class QueryThreadThreadlikes {
  QueryThreadThreadlikes({
    required this.id,
    this.$__typename = 'User',
  });

  factory QueryThreadThreadlikes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return QueryThreadThreadlikes(
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
    if (!(other is QueryThreadThreadlikes) ||
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

extension UtilityExtensionQueryThreadThreadlikes on QueryThreadThreadlikes {
  CopyWithQueryThreadThreadlikes<QueryThreadThreadlikes> get copyWith =>
      CopyWithQueryThreadThreadlikes(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryThreadThreadlikes<TRes> {
  factory CopyWithQueryThreadThreadlikes(
    QueryThreadThreadlikes instance,
    TRes Function(QueryThreadThreadlikes) then,
  ) = _CopyWithImplQueryThreadThreadlikes;

  factory CopyWithQueryThreadThreadlikes.stub(TRes res) =
      _CopyWithStubImplQueryThreadThreadlikes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadThreadlikes<TRes>
    implements CopyWithQueryThreadThreadlikes<TRes> {
  _CopyWithImplQueryThreadThreadlikes(
    this._instance,
    this._then,
  );

  final QueryThreadThreadlikes _instance;

  final TRes Function(QueryThreadThreadlikes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadThreadlikes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryThreadThreadlikes<TRes>
    implements CopyWithQueryThreadThreadlikes<TRes> {
  _CopyWithStubImplQueryThreadThreadlikes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class QueryThreadThreadcategories {
  QueryThreadThreadcategories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory QueryThreadThreadcategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return QueryThreadThreadcategories(
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
    if (!(other is QueryThreadThreadcategories) ||
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

extension UtilityExtensionQueryThreadThreadcategories
    on QueryThreadThreadcategories {
  CopyWithQueryThreadThreadcategories<QueryThreadThreadcategories>
      get copyWith => CopyWithQueryThreadThreadcategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadThreadcategories<TRes> {
  factory CopyWithQueryThreadThreadcategories(
    QueryThreadThreadcategories instance,
    TRes Function(QueryThreadThreadcategories) then,
  ) = _CopyWithImplQueryThreadThreadcategories;

  factory CopyWithQueryThreadThreadcategories.stub(TRes res) =
      _CopyWithStubImplQueryThreadThreadcategories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadThreadcategories<TRes>
    implements CopyWithQueryThreadThreadcategories<TRes> {
  _CopyWithImplQueryThreadThreadcategories(
    this._instance,
    this._then,
  );

  final QueryThreadThreadcategories _instance;

  final TRes Function(QueryThreadThreadcategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadThreadcategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryThreadThreadcategories<TRes>
    implements CopyWithQueryThreadThreadcategories<TRes> {
  _CopyWithStubImplQueryThreadThreadcategories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class QueryThreadThreadmediaCategories {
  QueryThreadThreadmediaCategories({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory QueryThreadThreadmediaCategories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryThreadThreadmediaCategories(
      id: (l$id as int),
      title: l$title == null
          ? null
          : QueryThreadThreadmediaCategoriestitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryThreadThreadmediaCategoriestitle? title;

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
    if (!(other is QueryThreadThreadmediaCategories) ||
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

extension UtilityExtensionQueryThreadThreadmediaCategories
    on QueryThreadThreadmediaCategories {
  CopyWithQueryThreadThreadmediaCategories<QueryThreadThreadmediaCategories>
      get copyWith => CopyWithQueryThreadThreadmediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadThreadmediaCategories<TRes> {
  factory CopyWithQueryThreadThreadmediaCategories(
    QueryThreadThreadmediaCategories instance,
    TRes Function(QueryThreadThreadmediaCategories) then,
  ) = _CopyWithImplQueryThreadThreadmediaCategories;

  factory CopyWithQueryThreadThreadmediaCategories.stub(TRes res) =
      _CopyWithStubImplQueryThreadThreadmediaCategories;

  TRes call({
    int? id,
    QueryThreadThreadmediaCategoriestitle? title,
    String? $__typename,
  });
  CopyWithQueryThreadThreadmediaCategoriestitle<TRes> get title;
}

class _CopyWithImplQueryThreadThreadmediaCategories<TRes>
    implements CopyWithQueryThreadThreadmediaCategories<TRes> {
  _CopyWithImplQueryThreadThreadmediaCategories(
    this._instance,
    this._then,
  );

  final QueryThreadThreadmediaCategories _instance;

  final TRes Function(QueryThreadThreadmediaCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadThreadmediaCategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as QueryThreadThreadmediaCategoriestitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryThreadThreadmediaCategoriestitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryThreadThreadmediaCategoriestitle.stub(_then(_instance))
        : CopyWithQueryThreadThreadmediaCategoriestitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQueryThreadThreadmediaCategories<TRes>
    implements CopyWithQueryThreadThreadmediaCategories<TRes> {
  _CopyWithStubImplQueryThreadThreadmediaCategories(this._res);

  TRes _res;

  call({
    int? id,
    QueryThreadThreadmediaCategoriestitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryThreadThreadmediaCategoriestitle<TRes> get title =>
      CopyWithQueryThreadThreadmediaCategoriestitle.stub(_res);
}

class QueryThreadThreadmediaCategoriestitle {
  QueryThreadThreadmediaCategoriestitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryThreadThreadmediaCategoriestitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryThreadThreadmediaCategoriestitle(
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
    if (!(other is QueryThreadThreadmediaCategoriestitle) ||
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

extension UtilityExtensionQueryThreadThreadmediaCategoriestitle
    on QueryThreadThreadmediaCategoriestitle {
  CopyWithQueryThreadThreadmediaCategoriestitle<
          QueryThreadThreadmediaCategoriestitle>
      get copyWith => CopyWithQueryThreadThreadmediaCategoriestitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryThreadThreadmediaCategoriestitle<TRes> {
  factory CopyWithQueryThreadThreadmediaCategoriestitle(
    QueryThreadThreadmediaCategoriestitle instance,
    TRes Function(QueryThreadThreadmediaCategoriestitle) then,
  ) = _CopyWithImplQueryThreadThreadmediaCategoriestitle;

  factory CopyWithQueryThreadThreadmediaCategoriestitle.stub(TRes res) =
      _CopyWithStubImplQueryThreadThreadmediaCategoriestitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryThreadThreadmediaCategoriestitle<TRes>
    implements CopyWithQueryThreadThreadmediaCategoriestitle<TRes> {
  _CopyWithImplQueryThreadThreadmediaCategoriestitle(
    this._instance,
    this._then,
  );

  final QueryThreadThreadmediaCategoriestitle _instance;

  final TRes Function(QueryThreadThreadmediaCategoriestitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryThreadThreadmediaCategoriestitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryThreadThreadmediaCategoriestitle<TRes>
    implements CopyWithQueryThreadThreadmediaCategoriestitle<TRes> {
  _CopyWithStubImplQueryThreadThreadmediaCategoriestitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
