import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryNotifications {
  factory VariablesQueryNotifications({
    int? page,
    int? perPage,
    bool? resetNotificationCount,
    List<EnumNotificationType?>? typeIn,
  }) =>
      VariablesQueryNotifications._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (resetNotificationCount != null)
          r'resetNotificationCount': resetNotificationCount,
        if (typeIn != null) r'typeIn': typeIn,
      });

  VariablesQueryNotifications._(this._$data);

  factory VariablesQueryNotifications.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('resetNotificationCount')) {
      final l$resetNotificationCount = data['resetNotificationCount'];
      result$data['resetNotificationCount'] =
          (l$resetNotificationCount as bool?);
    }
    if (data.containsKey('typeIn')) {
      final l$typeIn = data['typeIn'];
      result$data['typeIn'] = (l$typeIn as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJsonEnumNotificationType((e as String)))
          .toList();
    }
    return VariablesQueryNotifications._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  bool? get resetNotificationCount =>
      (_$data['resetNotificationCount'] as bool?);

  List<EnumNotificationType?>? get typeIn =>
      (_$data['typeIn'] as List<EnumNotificationType?>?);

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
    if (_$data.containsKey('resetNotificationCount')) {
      final l$resetNotificationCount = resetNotificationCount;
      result$data['resetNotificationCount'] = l$resetNotificationCount;
    }
    if (_$data.containsKey('typeIn')) {
      final l$typeIn = typeIn;
      result$data['typeIn'] = l$typeIn
          ?.map((e) => e == null ? null : toJsonEnumNotificationType(e))
          .toList();
    }
    return result$data;
  }

  CopyWithVariablesQueryNotifications<VariablesQueryNotifications>
      get copyWith => CopyWithVariablesQueryNotifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryNotifications ||
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
    final l$resetNotificationCount = resetNotificationCount;
    final lOther$resetNotificationCount = other.resetNotificationCount;
    if (_$data.containsKey('resetNotificationCount') !=
        other._$data.containsKey('resetNotificationCount')) {
      return false;
    }
    if (l$resetNotificationCount != lOther$resetNotificationCount) {
      return false;
    }
    final l$typeIn = typeIn;
    final lOther$typeIn = other.typeIn;
    if (_$data.containsKey('typeIn') != other._$data.containsKey('typeIn')) {
      return false;
    }
    if (l$typeIn != null && lOther$typeIn != null) {
      if (l$typeIn.length != lOther$typeIn.length) {
        return false;
      }
      for (int i = 0; i < l$typeIn.length; i++) {
        final l$typeIn$entry = l$typeIn[i];
        final lOther$typeIn$entry = lOther$typeIn[i];
        if (l$typeIn$entry != lOther$typeIn$entry) {
          return false;
        }
      }
    } else if (l$typeIn != lOther$typeIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$resetNotificationCount = resetNotificationCount;
    final l$typeIn = typeIn;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('resetNotificationCount')
          ? l$resetNotificationCount
          : const {},
      _$data.containsKey('typeIn')
          ? l$typeIn == null
              ? null
              : Object.hashAll(l$typeIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryNotifications<TRes> {
  factory CopyWithVariablesQueryNotifications(
    VariablesQueryNotifications instance,
    TRes Function(VariablesQueryNotifications) then,
  ) = _CopyWithImplVariablesQueryNotifications;

  factory CopyWithVariablesQueryNotifications.stub(TRes res) =
      _CopyWithStubImplVariablesQueryNotifications;

  TRes call({
    int? page,
    int? perPage,
    bool? resetNotificationCount,
    List<EnumNotificationType?>? typeIn,
  });
}

class _CopyWithImplVariablesQueryNotifications<TRes>
    implements CopyWithVariablesQueryNotifications<TRes> {
  _CopyWithImplVariablesQueryNotifications(
    this._instance,
    this._then,
  );

  final VariablesQueryNotifications _instance;

  final TRes Function(VariablesQueryNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? resetNotificationCount = _undefined,
    Object? typeIn = _undefined,
  }) =>
      _then(VariablesQueryNotifications._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (resetNotificationCount != _undefined)
          'resetNotificationCount': (resetNotificationCount as bool?),
        if (typeIn != _undefined)
          'typeIn': (typeIn as List<EnumNotificationType?>?),
      }));
}

class _CopyWithStubImplVariablesQueryNotifications<TRes>
    implements CopyWithVariablesQueryNotifications<TRes> {
  _CopyWithStubImplVariablesQueryNotifications(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    bool? resetNotificationCount,
    List<EnumNotificationType?>? typeIn,
  }) =>
      _res;
}

class QueryNotifications {
  QueryNotifications({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryNotifications.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryNotifications(
      Page: l$Page == null
          ? null
          : QueryNotificationsPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryNotificationsPage? Page;

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
    if (other is! QueryNotifications || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryNotifications on QueryNotifications {
  CopyWithQueryNotifications<QueryNotifications> get copyWith =>
      CopyWithQueryNotifications(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryNotifications<TRes> {
  factory CopyWithQueryNotifications(
    QueryNotifications instance,
    TRes Function(QueryNotifications) then,
  ) = _CopyWithImplQueryNotifications;

  factory CopyWithQueryNotifications.stub(TRes res) =
      _CopyWithStubImplQueryNotifications;

  TRes call({
    QueryNotificationsPage? Page,
    String? $__typename,
  });
  CopyWithQueryNotificationsPage<TRes> get Page;
}

class _CopyWithImplQueryNotifications<TRes>
    implements CopyWithQueryNotifications<TRes> {
  _CopyWithImplQueryNotifications(
    this._instance,
    this._then,
  );

  final QueryNotifications _instance;

  final TRes Function(QueryNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotifications(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryNotificationsPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryNotificationsPage.stub(_then(_instance))
        : CopyWithQueryNotificationsPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryNotifications<TRes>
    implements CopyWithQueryNotifications<TRes> {
  _CopyWithStubImplQueryNotifications(this._res);

  TRes _res;

  call({
    QueryNotificationsPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPage<TRes> get Page =>
      CopyWithQueryNotificationsPage.stub(_res);
}

const documentNodeQueryNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Notifications'),
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
        variable: VariableNode(name: NameNode(value: 'resetNotificationCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'typeIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationType'),
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
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'typeIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'resetNotificationCount'),
                value: VariableNode(
                    name: NameNode(value: 'resetNotificationCount')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'AiringNotification'),
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
                    name: NameNode(value: 'type'),
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
                    name: NameNode(value: 'contexts'),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'RelatedMediaAdditionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'FollowingNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityMessageNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityMentionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplyNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplySubscribedNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplyLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentMentionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentReplyNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentSubscribedNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'MediaDataChangeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'reason'),
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
                  name: NameNode(value: 'MediaMergeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
                    name: NameNode(value: 'deletedMediaTitles'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reason'),
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
                  name: NameNode(value: 'MediaDeletionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deletedMediaTitle'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reason'),
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

class QueryNotificationsPage {
  QueryNotificationsPage({
    this.pageInfo,
    this.notifications,
    this.$__typename = 'Page',
  });

  factory QueryNotificationsPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$notifications = json['notifications'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryNotificationsPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryNotificationsPagenotifications.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryNotificationsPagepageInfo? pageInfo;

  final List<QueryNotificationsPagenotifications?>? notifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
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

extension UtilityExtensionQueryNotificationsPage on QueryNotificationsPage {
  CopyWithQueryNotificationsPage<QueryNotificationsPage> get copyWith =>
      CopyWithQueryNotificationsPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryNotificationsPage<TRes> {
  factory CopyWithQueryNotificationsPage(
    QueryNotificationsPage instance,
    TRes Function(QueryNotificationsPage) then,
  ) = _CopyWithImplQueryNotificationsPage;

  factory CopyWithQueryNotificationsPage.stub(TRes res) =
      _CopyWithStubImplQueryNotificationsPage;

  TRes call({
    QueryNotificationsPagepageInfo? pageInfo,
    List<QueryNotificationsPagenotifications?>? notifications,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagepageInfo<TRes> get pageInfo;
  TRes notifications(
      Iterable<QueryNotificationsPagenotifications?>? Function(
              Iterable<
                  CopyWithQueryNotificationsPagenotifications<
                      QueryNotificationsPagenotifications>?>?)
          _fn);
}

class _CopyWithImplQueryNotificationsPage<TRes>
    implements CopyWithQueryNotificationsPage<TRes> {
  _CopyWithImplQueryNotificationsPage(
    this._instance,
    this._then,
  );

  final QueryNotificationsPage _instance;

  final TRes Function(QueryNotificationsPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? notifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryNotificationsPagepageInfo?),
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications as List<QueryNotificationsPagenotifications?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryNotificationsPagepageInfo.stub(_then(_instance))
        : CopyWithQueryNotificationsPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes notifications(
          Iterable<QueryNotificationsPagenotifications?>? Function(
                  Iterable<
                      CopyWithQueryNotificationsPagenotifications<
                          QueryNotificationsPagenotifications>?>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) => e == null
              ? null
              : CopyWithQueryNotificationsPagenotifications(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryNotificationsPage<TRes>
    implements CopyWithQueryNotificationsPage<TRes> {
  _CopyWithStubImplQueryNotificationsPage(this._res);

  TRes _res;

  call({
    QueryNotificationsPagepageInfo? pageInfo,
    List<QueryNotificationsPagenotifications?>? notifications,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryNotificationsPagepageInfo.stub(_res);

  notifications(_fn) => _res;
}

class QueryNotificationsPagepageInfo {
  QueryNotificationsPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryNotificationsPagepageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagepageInfo(
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
    if (other is! QueryNotificationsPagepageInfo ||
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

extension UtilityExtensionQueryNotificationsPagepageInfo
    on QueryNotificationsPagepageInfo {
  CopyWithQueryNotificationsPagepageInfo<QueryNotificationsPagepageInfo>
      get copyWith => CopyWithQueryNotificationsPagepageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagepageInfo<TRes> {
  factory CopyWithQueryNotificationsPagepageInfo(
    QueryNotificationsPagepageInfo instance,
    TRes Function(QueryNotificationsPagepageInfo) then,
  ) = _CopyWithImplQueryNotificationsPagepageInfo;

  factory CopyWithQueryNotificationsPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryNotificationsPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagepageInfo<TRes>
    implements CopyWithQueryNotificationsPagepageInfo<TRes> {
  _CopyWithImplQueryNotificationsPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagepageInfo _instance;

  final TRes Function(QueryNotificationsPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagepageInfo(
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

class _CopyWithStubImplQueryNotificationsPagepageInfo<TRes>
    implements CopyWithQueryNotificationsPagepageInfo<TRes> {
  _CopyWithStubImplQueryNotificationsPagepageInfo(this._res);

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

class QueryNotificationsPagenotifications {
  QueryNotificationsPagenotifications({required this.$__typename});

  factory QueryNotificationsPagenotifications.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AiringNotification":
        return QueryNotificationsPagenotificationsAiringNotification.fromJson(
            json);

      case "RelatedMediaAdditionNotification":
        return QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
            .fromJson(json);

      case "FollowingNotification":
        return QueryNotificationsPagenotificationsFollowingNotification
            .fromJson(json);

      case "ActivityMessageNotification":
        return QueryNotificationsPagenotificationsActivityMessageNotification
            .fromJson(json);

      case "ActivityMentionNotification":
        return QueryNotificationsPagenotificationsActivityMentionNotification
            .fromJson(json);

      case "ActivityReplyNotification":
        return QueryNotificationsPagenotificationsActivityReplyNotification
            .fromJson(json);

      case "ActivityReplySubscribedNotification":
        return QueryNotificationsPagenotificationsActivityReplySubscribedNotification
            .fromJson(json);

      case "ActivityLikeNotification":
        return QueryNotificationsPagenotificationsActivityLikeNotification
            .fromJson(json);

      case "ActivityReplyLikeNotification":
        return QueryNotificationsPagenotificationsActivityReplyLikeNotification
            .fromJson(json);

      case "ThreadCommentMentionNotification":
        return QueryNotificationsPagenotificationsThreadCommentMentionNotification
            .fromJson(json);

      case "ThreadCommentReplyNotification":
        return QueryNotificationsPagenotificationsThreadCommentReplyNotification
            .fromJson(json);

      case "ThreadCommentSubscribedNotification":
        return QueryNotificationsPagenotificationsThreadCommentSubscribedNotification
            .fromJson(json);

      case "ThreadCommentLikeNotification":
        return QueryNotificationsPagenotificationsThreadCommentLikeNotification
            .fromJson(json);

      case "ThreadLikeNotification":
        return QueryNotificationsPagenotificationsThreadLikeNotification
            .fromJson(json);

      case "MediaDataChangeNotification":
        return QueryNotificationsPagenotificationsMediaDataChangeNotification
            .fromJson(json);

      case "MediaMergeNotification":
        return QueryNotificationsPagenotificationsMediaMergeNotification
            .fromJson(json);

      case "MediaDeletionNotification":
        return QueryNotificationsPagenotificationsMediaDeletionNotification
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryNotificationsPagenotifications(
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
    if (other is! QueryNotificationsPagenotifications ||
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

extension UtilityExtensionQueryNotificationsPagenotifications
    on QueryNotificationsPagenotifications {
  CopyWithQueryNotificationsPagenotifications<
          QueryNotificationsPagenotifications>
      get copyWith => CopyWithQueryNotificationsPagenotifications(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryNotificationsPagenotificationsAiringNotification)
        airingNotification,
    required _T Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)
        relatedMediaAdditionNotification,
    required _T Function(
            QueryNotificationsPagenotificationsFollowingNotification)
        followingNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityMessageNotification)
        activityMessageNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityMentionNotification)
        activityMentionNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityReplyNotification)
        activityReplyNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityReplySubscribedNotification)
        activityReplySubscribedNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityLikeNotification)
        activityLikeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsActivityReplyLikeNotification)
        activityReplyLikeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotification)
        threadCommentMentionNotification,
    required _T Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotification)
        threadCommentReplyNotification,
    required _T Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotification)
        threadCommentSubscribedNotification,
    required _T Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotification)
        threadCommentLikeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsThreadLikeNotification)
        threadLikeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsMediaDataChangeNotification)
        mediaDataChangeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsMediaMergeNotification)
        mediaMergeNotification,
    required _T Function(
            QueryNotificationsPagenotificationsMediaDeletionNotification)
        mediaDeletionNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AiringNotification":
        return airingNotification(
            this as QueryNotificationsPagenotificationsAiringNotification);

      case "RelatedMediaAdditionNotification":
        return relatedMediaAdditionNotification(this
            as QueryNotificationsPagenotificationsRelatedMediaAdditionNotification);

      case "FollowingNotification":
        return followingNotification(
            this as QueryNotificationsPagenotificationsFollowingNotification);

      case "ActivityMessageNotification":
        return activityMessageNotification(this
            as QueryNotificationsPagenotificationsActivityMessageNotification);

      case "ActivityMentionNotification":
        return activityMentionNotification(this
            as QueryNotificationsPagenotificationsActivityMentionNotification);

      case "ActivityReplyNotification":
        return activityReplyNotification(this
            as QueryNotificationsPagenotificationsActivityReplyNotification);

      case "ActivityReplySubscribedNotification":
        return activityReplySubscribedNotification(this
            as QueryNotificationsPagenotificationsActivityReplySubscribedNotification);

      case "ActivityLikeNotification":
        return activityLikeNotification(this
            as QueryNotificationsPagenotificationsActivityLikeNotification);

      case "ActivityReplyLikeNotification":
        return activityReplyLikeNotification(this
            as QueryNotificationsPagenotificationsActivityReplyLikeNotification);

      case "ThreadCommentMentionNotification":
        return threadCommentMentionNotification(this
            as QueryNotificationsPagenotificationsThreadCommentMentionNotification);

      case "ThreadCommentReplyNotification":
        return threadCommentReplyNotification(this
            as QueryNotificationsPagenotificationsThreadCommentReplyNotification);

      case "ThreadCommentSubscribedNotification":
        return threadCommentSubscribedNotification(this
            as QueryNotificationsPagenotificationsThreadCommentSubscribedNotification);

      case "ThreadCommentLikeNotification":
        return threadCommentLikeNotification(this
            as QueryNotificationsPagenotificationsThreadCommentLikeNotification);

      case "ThreadLikeNotification":
        return threadLikeNotification(
            this as QueryNotificationsPagenotificationsThreadLikeNotification);

      case "MediaDataChangeNotification":
        return mediaDataChangeNotification(this
            as QueryNotificationsPagenotificationsMediaDataChangeNotification);

      case "MediaMergeNotification":
        return mediaMergeNotification(
            this as QueryNotificationsPagenotificationsMediaMergeNotification);

      case "MediaDeletionNotification":
        return mediaDeletionNotification(this
            as QueryNotificationsPagenotificationsMediaDeletionNotification);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryNotificationsPagenotificationsAiringNotification)?
        airingNotification,
    _T Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)?
        relatedMediaAdditionNotification,
    _T Function(QueryNotificationsPagenotificationsFollowingNotification)?
        followingNotification,
    _T Function(QueryNotificationsPagenotificationsActivityMessageNotification)?
        activityMessageNotification,
    _T Function(QueryNotificationsPagenotificationsActivityMentionNotification)?
        activityMentionNotification,
    _T Function(QueryNotificationsPagenotificationsActivityReplyNotification)?
        activityReplyNotification,
    _T Function(
            QueryNotificationsPagenotificationsActivityReplySubscribedNotification)?
        activityReplySubscribedNotification,
    _T Function(QueryNotificationsPagenotificationsActivityLikeNotification)?
        activityLikeNotification,
    _T Function(
            QueryNotificationsPagenotificationsActivityReplyLikeNotification)?
        activityReplyLikeNotification,
    _T Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotification)?
        threadCommentMentionNotification,
    _T Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotification)?
        threadCommentReplyNotification,
    _T Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotification)?
        threadCommentSubscribedNotification,
    _T Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotification)?
        threadCommentLikeNotification,
    _T Function(QueryNotificationsPagenotificationsThreadLikeNotification)?
        threadLikeNotification,
    _T Function(QueryNotificationsPagenotificationsMediaDataChangeNotification)?
        mediaDataChangeNotification,
    _T Function(QueryNotificationsPagenotificationsMediaMergeNotification)?
        mediaMergeNotification,
    _T Function(QueryNotificationsPagenotificationsMediaDeletionNotification)?
        mediaDeletionNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AiringNotification":
        if (airingNotification != null) {
          return airingNotification(
              this as QueryNotificationsPagenotificationsAiringNotification);
        } else {
          return orElse();
        }

      case "RelatedMediaAdditionNotification":
        if (relatedMediaAdditionNotification != null) {
          return relatedMediaAdditionNotification(this
              as QueryNotificationsPagenotificationsRelatedMediaAdditionNotification);
        } else {
          return orElse();
        }

      case "FollowingNotification":
        if (followingNotification != null) {
          return followingNotification(
              this as QueryNotificationsPagenotificationsFollowingNotification);
        } else {
          return orElse();
        }

      case "ActivityMessageNotification":
        if (activityMessageNotification != null) {
          return activityMessageNotification(this
              as QueryNotificationsPagenotificationsActivityMessageNotification);
        } else {
          return orElse();
        }

      case "ActivityMentionNotification":
        if (activityMentionNotification != null) {
          return activityMentionNotification(this
              as QueryNotificationsPagenotificationsActivityMentionNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyNotification":
        if (activityReplyNotification != null) {
          return activityReplyNotification(this
              as QueryNotificationsPagenotificationsActivityReplyNotification);
        } else {
          return orElse();
        }

      case "ActivityReplySubscribedNotification":
        if (activityReplySubscribedNotification != null) {
          return activityReplySubscribedNotification(this
              as QueryNotificationsPagenotificationsActivityReplySubscribedNotification);
        } else {
          return orElse();
        }

      case "ActivityLikeNotification":
        if (activityLikeNotification != null) {
          return activityLikeNotification(this
              as QueryNotificationsPagenotificationsActivityLikeNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyLikeNotification":
        if (activityReplyLikeNotification != null) {
          return activityReplyLikeNotification(this
              as QueryNotificationsPagenotificationsActivityReplyLikeNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentMentionNotification":
        if (threadCommentMentionNotification != null) {
          return threadCommentMentionNotification(this
              as QueryNotificationsPagenotificationsThreadCommentMentionNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentReplyNotification":
        if (threadCommentReplyNotification != null) {
          return threadCommentReplyNotification(this
              as QueryNotificationsPagenotificationsThreadCommentReplyNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentSubscribedNotification":
        if (threadCommentSubscribedNotification != null) {
          return threadCommentSubscribedNotification(this
              as QueryNotificationsPagenotificationsThreadCommentSubscribedNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentLikeNotification":
        if (threadCommentLikeNotification != null) {
          return threadCommentLikeNotification(this
              as QueryNotificationsPagenotificationsThreadCommentLikeNotification);
        } else {
          return orElse();
        }

      case "ThreadLikeNotification":
        if (threadLikeNotification != null) {
          return threadLikeNotification(this
              as QueryNotificationsPagenotificationsThreadLikeNotification);
        } else {
          return orElse();
        }

      case "MediaDataChangeNotification":
        if (mediaDataChangeNotification != null) {
          return mediaDataChangeNotification(this
              as QueryNotificationsPagenotificationsMediaDataChangeNotification);
        } else {
          return orElse();
        }

      case "MediaMergeNotification":
        if (mediaMergeNotification != null) {
          return mediaMergeNotification(this
              as QueryNotificationsPagenotificationsMediaMergeNotification);
        } else {
          return orElse();
        }

      case "MediaDeletionNotification":
        if (mediaDeletionNotification != null) {
          return mediaDeletionNotification(this
              as QueryNotificationsPagenotificationsMediaDeletionNotification);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryNotificationsPagenotifications<TRes> {
  factory CopyWithQueryNotificationsPagenotifications(
    QueryNotificationsPagenotifications instance,
    TRes Function(QueryNotificationsPagenotifications) then,
  ) = _CopyWithImplQueryNotificationsPagenotifications;

  factory CopyWithQueryNotificationsPagenotifications.stub(TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotifications;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryNotificationsPagenotifications<TRes>
    implements CopyWithQueryNotificationsPagenotifications<TRes> {
  _CopyWithImplQueryNotificationsPagenotifications(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotifications _instance;

  final TRes Function(QueryNotificationsPagenotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryNotificationsPagenotifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryNotificationsPagenotifications<TRes>
    implements CopyWithQueryNotificationsPagenotifications<TRes> {
  _CopyWithStubImplQueryNotificationsPagenotifications(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryNotificationsPagenotificationsAiringNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsAiringNotification({
    required this.id,
    this.type,
    required this.episode,
    this.contexts,
    this.media,
    this.createdAt,
    this.$__typename = 'AiringNotification',
  });

  factory QueryNotificationsPagenotificationsAiringNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$episode = json['episode'];
    final l$contexts = json['contexts'];
    final l$media = json['media'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsAiringNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      episode: (l$episode as int),
      contexts:
          (l$contexts as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      media: l$media == null
          ? null
          : QueryNotificationsPagenotificationsAiringNotificationmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int episode;

  final List<String?>? contexts;

  final QueryNotificationsPagenotificationsAiringNotificationmedia? media;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$contexts = contexts;
    _resultData['contexts'] = l$contexts?.map((e) => e).toList();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$episode = episode;
    final l$contexts = contexts;
    final l$media = media;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$episode,
      l$contexts == null ? null : Object.hashAll(l$contexts.map((v) => v)),
      l$media,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsAiringNotification ||
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
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$contexts = contexts;
    final lOther$contexts = other.contexts;
    if (l$contexts != null && lOther$contexts != null) {
      if (l$contexts.length != lOther$contexts.length) {
        return false;
      }
      for (int i = 0; i < l$contexts.length; i++) {
        final l$contexts$entry = l$contexts[i];
        final lOther$contexts$entry = lOther$contexts[i];
        if (l$contexts$entry != lOther$contexts$entry) {
          return false;
        }
      }
    } else if (l$contexts != lOther$contexts) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsAiringNotification
    on QueryNotificationsPagenotificationsAiringNotification {
  CopyWithQueryNotificationsPagenotificationsAiringNotification<
          QueryNotificationsPagenotificationsAiringNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsAiringNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsAiringNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsAiringNotification(
    QueryNotificationsPagenotificationsAiringNotification instance,
    TRes Function(QueryNotificationsPagenotificationsAiringNotification) then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsAiringNotification;

  factory CopyWithQueryNotificationsPagenotificationsAiringNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    int? episode,
    List<String?>? contexts,
    QueryNotificationsPagenotificationsAiringNotificationmedia? media,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<TRes>
      get media;
}

class _CopyWithImplQueryNotificationsPagenotificationsAiringNotification<TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotification<TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsAiringNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsAiringNotification _instance;

  final TRes Function(QueryNotificationsPagenotificationsAiringNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? episode = _undefined,
    Object? contexts = _undefined,
    Object? media = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsAiringNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        contexts: contexts == _undefined
            ? _instance.contexts
            : (contexts as List<String?>?),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryNotificationsPagenotificationsAiringNotificationmedia?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotification<TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    int? episode,
    List<String?>? contexts,
    QueryNotificationsPagenotificationsAiringNotificationmedia? media,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<TRes>
      get media =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia
              .stub(_res);
}

class QueryNotificationsPagenotificationsAiringNotificationmedia {
  QueryNotificationsPagenotificationsAiringNotificationmedia({
    required this.id,
    this.type,
    this.bannerImage,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory QueryNotificationsPagenotificationsAiringNotificationmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsAiringNotificationmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : QueryNotificationsPagenotificationsAiringNotificationmediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryNotificationsPagenotificationsAiringNotificationmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final String? bannerImage;

  final QueryNotificationsPagenotificationsAiringNotificationmediatitle? title;

  final QueryNotificationsPagenotificationsAiringNotificationmediacoverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$bannerImage,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsAiringNotificationmedia ||
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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
    return true;
  }
}

extension UtilityExtensionQueryNotificationsPagenotificationsAiringNotificationmedia
    on QueryNotificationsPagenotificationsAiringNotificationmedia {
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<
          QueryNotificationsPagenotificationsAiringNotificationmedia>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia(
    QueryNotificationsPagenotificationsAiringNotificationmedia instance,
    TRes Function(QueryNotificationsPagenotificationsAiringNotificationmedia)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmedia;

  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsAiringNotificationmediatitle? title,
    QueryNotificationsPagenotificationsAiringNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<TRes>
      get title;
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
      TRes> get coverImage;
}

class _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmedia(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsAiringNotificationmedia _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsAiringNotificationmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsAiringNotificationmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryNotificationsPagenotificationsAiringNotificationmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryNotificationsPagenotificationsAiringNotificationmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmedia<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmedia(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsAiringNotificationmediatitle? title,
    QueryNotificationsPagenotificationsAiringNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<TRes>
      get title =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage
              .stub(_res);
}

class QueryNotificationsPagenotificationsAiringNotificationmediatitle {
  QueryNotificationsPagenotificationsAiringNotificationmediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryNotificationsPagenotificationsAiringNotificationmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsAiringNotificationmediatitle(
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
    if (other
            is! QueryNotificationsPagenotificationsAiringNotificationmediatitle ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsAiringNotificationmediatitle
    on QueryNotificationsPagenotificationsAiringNotificationmediatitle {
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<
          QueryNotificationsPagenotificationsAiringNotificationmediatitle>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle(
    QueryNotificationsPagenotificationsAiringNotificationmediatitle instance,
    TRes Function(
            QueryNotificationsPagenotificationsAiringNotificationmediatitle)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediatitle;

  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediatitle(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsAiringNotificationmediatitle
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsAiringNotificationmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsAiringNotificationmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmediatitle<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsAiringNotificationmediacoverImage {
  QueryNotificationsPagenotificationsAiringNotificationmediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryNotificationsPagenotificationsAiringNotificationmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsAiringNotificationmediacoverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsAiringNotificationmediacoverImage
    on QueryNotificationsPagenotificationsAiringNotificationmediacoverImage {
  CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
          QueryNotificationsPagenotificationsAiringNotificationmediacoverImage>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
    QueryNotificationsPagenotificationsAiringNotificationmediacoverImage
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsAiringNotificationmediacoverImage)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage;

  factory CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsAiringNotificationmediacoverImage
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsAiringNotificationmediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsAiringNotificationmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsAiringNotificationmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsRelatedMediaAdditionNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.createdAt,
    this.$__typename = 'RelatedMediaAdditionNotification',
  });

  factory QueryNotificationsPagenotificationsRelatedMediaAdditionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
              .fromJson((l$media as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia?
      media;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsRelatedMediaAdditionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsRelatedMediaAdditionNotification
    on QueryNotificationsPagenotificationsRelatedMediaAdditionNotification {
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification;

  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia?
        media,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
      TRes> get media;
}

class _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia?
        media,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
          TRes>
      get media =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
              .stub(_res);
}

class QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia {
  QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia({
    required this.id,
    this.type,
    this.bannerImage,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final String? bannerImage;

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle?
      title;

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$bannerImage,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia ||
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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
    return true;
  }
}

extension UtilityExtensionQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
    on QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia {
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia;

  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle?
        title,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
      TRes> get title;
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
      TRes> get coverImage;
}

class _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmedia(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle?
        title,
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
          TRes>
      get title =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
              .stub(_res);
}

class QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle {
  QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
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
    if (other
            is! QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
    on QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle {
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle;

  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage {
  QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
    on QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage {
  CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
    QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage;

  factory CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsRelatedMediaAdditionNotificationmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsFollowingNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsFollowingNotification({
    required this.id,
    this.type,
    this.context,
    this.user,
    this.createdAt,
    this.$__typename = 'FollowingNotification',
  });

  factory QueryNotificationsPagenotificationsFollowingNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsFollowingNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsFollowingNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final QueryNotificationsPagenotificationsFollowingNotificationuser? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsFollowingNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsFollowingNotification
    on QueryNotificationsPagenotificationsFollowingNotification {
  CopyWithQueryNotificationsPagenotificationsFollowingNotification<
          QueryNotificationsPagenotificationsFollowingNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsFollowingNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsFollowingNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsFollowingNotification(
    QueryNotificationsPagenotificationsFollowingNotification instance,
    TRes Function(QueryNotificationsPagenotificationsFollowingNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsFollowingNotification;

  factory CopyWithQueryNotificationsPagenotificationsFollowingNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsFollowingNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<TRes>
      get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsFollowingNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotification<TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsFollowingNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsFollowingNotification _instance;

  final TRes Function(QueryNotificationsPagenotificationsFollowingNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsFollowingNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsFollowingNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotification<TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsFollowingNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsFollowingNotificationuser {
  QueryNotificationsPagenotificationsFollowingNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsFollowingNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsFollowingNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsFollowingNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsFollowingNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsFollowingNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsFollowingNotificationuser
    on QueryNotificationsPagenotificationsFollowingNotificationuser {
  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<
          QueryNotificationsPagenotificationsFollowingNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser(
    QueryNotificationsPagenotificationsFollowingNotificationuser instance,
    TRes Function(QueryNotificationsPagenotificationsFollowingNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsFollowingNotificationuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsFollowingNotificationuser _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsFollowingNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsFollowingNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsFollowingNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsFollowingNotificationuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsFollowingNotificationuseravatar {
  QueryNotificationsPagenotificationsFollowingNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsFollowingNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsFollowingNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsFollowingNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsFollowingNotificationuseravatar
    on QueryNotificationsPagenotificationsFollowingNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
          QueryNotificationsPagenotificationsFollowingNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar(
    QueryNotificationsPagenotificationsFollowingNotificationuseravatar instance,
    TRes Function(
            QueryNotificationsPagenotificationsFollowingNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsFollowingNotificationuseravatar
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsFollowingNotificationuseravatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsFollowingNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsFollowingNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsFollowingNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityMessageNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityMessageNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityMessageNotification',
  });

  factory QueryNotificationsPagenotificationsActivityMessageNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMessageNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityMessageNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityMessageNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMessageNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMessageNotification
    on QueryNotificationsPagenotificationsActivityMessageNotification {
  CopyWithQueryNotificationsPagenotificationsActivityMessageNotification<
          QueryNotificationsPagenotificationsActivityMessageNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMessageNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMessageNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotification(
    QueryNotificationsPagenotificationsActivityMessageNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMessageNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityMessageNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMessageNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityMessageNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMessageNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityMessageNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityMessageNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityMessageNotificationuser {
  QueryNotificationsPagenotificationsActivityMessageNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityMessageNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMessageNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMessageNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMessageNotificationuser
    on QueryNotificationsPagenotificationsActivityMessageNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
          QueryNotificationsPagenotificationsActivityMessageNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser(
    QueryNotificationsPagenotificationsActivityMessageNotificationuser instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMessageNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMessageNotificationuser
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityMessageNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMessageNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMessageNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityMentionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityMentionNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityMentionNotification',
  });

  factory QueryNotificationsPagenotificationsActivityMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMentionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityMentionNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityMentionNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMentionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMentionNotification
    on QueryNotificationsPagenotificationsActivityMentionNotification {
  CopyWithQueryNotificationsPagenotificationsActivityMentionNotification<
          QueryNotificationsPagenotificationsActivityMentionNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMentionNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotification(
    QueryNotificationsPagenotificationsActivityMentionNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMentionNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityMentionNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMentionNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityMentionNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityMentionNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityMentionNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityMentionNotificationuser {
  QueryNotificationsPagenotificationsActivityMentionNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityMentionNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMentionNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMentionNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMentionNotificationuser
    on QueryNotificationsPagenotificationsActivityMentionNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
          QueryNotificationsPagenotificationsActivityMentionNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser(
    QueryNotificationsPagenotificationsActivityMentionNotificationuser instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMentionNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMentionNotificationuser
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityMentionNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMentionNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityMentionNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityReplyNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplyNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplyNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplyNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityReplyNotificationuser? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyNotification
    on QueryNotificationsPagenotificationsActivityReplyNotification {
  CopyWithQueryNotificationsPagenotificationsActivityReplyNotification<
          QueryNotificationsPagenotificationsActivityReplyNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotification(
    QueryNotificationsPagenotificationsActivityReplyNotification instance,
    TRes Function(QueryNotificationsPagenotificationsActivityReplyNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplyNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<TRes>
      get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyNotification _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityReplyNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityReplyNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplyNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyNotificationuser {
  QueryNotificationsPagenotificationsActivityReplyNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityReplyNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyNotificationuser
    on QueryNotificationsPagenotificationsActivityReplyNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<
          QueryNotificationsPagenotificationsActivityReplyNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser(
    QueryNotificationsPagenotificationsActivityReplyNotificationuser instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplyNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyNotificationuser
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityReplyNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityReplyNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityReplySubscribedNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplySubscribedNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplySubscribedNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplySubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplySubscribedNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplySubscribedNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplySubscribedNotification
    on QueryNotificationsPagenotificationsActivityReplySubscribedNotification {
  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
          QueryNotificationsPagenotificationsActivityReplySubscribedNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification(
    QueryNotificationsPagenotificationsActivityReplySubscribedNotification
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplySubscribedNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplySubscribedNotification
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser {
  QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
    on QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplySubscribedNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityLikeNotification',
  });

  factory QueryNotificationsPagenotificationsActivityLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityLikeNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityLikeNotificationuser? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsActivityLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityLikeNotification
    on QueryNotificationsPagenotificationsActivityLikeNotification {
  CopyWithQueryNotificationsPagenotificationsActivityLikeNotification<
          QueryNotificationsPagenotificationsActivityLikeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityLikeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotification(
    QueryNotificationsPagenotificationsActivityLikeNotification instance,
    TRes Function(QueryNotificationsPagenotificationsActivityLikeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<TRes>
      get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityLikeNotification _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityLikeNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityLikeNotificationuser {
  QueryNotificationsPagenotificationsActivityLikeNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityLikeNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityLikeNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityLikeNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityLikeNotificationuser
    on QueryNotificationsPagenotificationsActivityLikeNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<
          QueryNotificationsPagenotificationsActivityLikeNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser(
    QueryNotificationsPagenotificationsActivityLikeNotificationuser instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityLikeNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityLikeNotificationuser
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityLikeNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityLikeNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityLikeNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsActivityReplyLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplyLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplyLikeNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplyLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int activityId;

  final QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyLikeNotification
    on QueryNotificationsPagenotificationsActivityReplyLikeNotification {
  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification<
          QueryNotificationsPagenotificationsActivityReplyLikeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification(
    QueryNotificationsPagenotificationsActivityReplyLikeNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplyLikeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotification;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyLikeNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsActivityReplyLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityReplyLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? activityId,
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser {
  QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
    on QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser {
  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar {
  QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
    on QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
    QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsActivityReplyLikeNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentMentionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentMentionNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentMentionNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentMentionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int commentId;

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread?
      thread;

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentMentionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentMentionNotification
    on QueryNotificationsPagenotificationsThreadCommentMentionNotification {
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification<
          QueryNotificationsPagenotificationsThreadCommentMentionNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification(
    QueryNotificationsPagenotificationsThreadCommentMentionNotification
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotification;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
      TRes> get thread;
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentMentionNotification
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentMentionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
            local$thread, (e) => call(thread: e));
  }

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
          TRes>
      get thread =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread {
  QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
    on QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread {
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationthread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser {
  QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
    on QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser {
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar {
  QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
    on QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
    QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentMentionNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentReplyNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentReplyNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentReplyNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentReplyNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int commentId;

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread?
      thread;

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentReplyNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentReplyNotification
    on QueryNotificationsPagenotificationsThreadCommentReplyNotification {
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification<
          QueryNotificationsPagenotificationsThreadCommentReplyNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification(
    QueryNotificationsPagenotificationsThreadCommentReplyNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotification;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
      TRes> get thread;
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentReplyNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsThreadCommentReplyNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
            local$thread, (e) => call(thread: e));
  }

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
          TRes>
      get thread =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread {
  QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
    on QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread {
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationthread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser {
  QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
    on QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser {
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar {
  QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
    on QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
    QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentReplyNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentSubscribedNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentSubscribedNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentSubscribedNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentSubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int commentId;

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread?
      thread;

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentSubscribedNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentSubscribedNotification
    on QueryNotificationsPagenotificationsThreadCommentSubscribedNotification {
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotification
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
      TRes> get thread;
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotification
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
            local$thread, (e) => call(thread: e));
  }

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser?
        user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
          TRes>
      get thread =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread {
  QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
    on QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread {
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationthread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser {
  QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
    on QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser {
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar {
  QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
    on QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
    QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentSubscribedNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentLikeNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int commentId;

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread?
      thread;

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser?
      user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentLikeNotification
    on QueryNotificationsPagenotificationsThreadCommentLikeNotification {
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification<
          QueryNotificationsPagenotificationsThreadCommentLikeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification(
    QueryNotificationsPagenotificationsThreadCommentLikeNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotification;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
      TRes> get thread;
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
      TRes> get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentLikeNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsThreadCommentLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
            local$thread, (e) => call(thread: e));
  }

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    int? commentId,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread?
        thread,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
          TRes>
      get thread =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
          TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread {
  QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
    on QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread {
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationthread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser {
  QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
    on QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser {
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar {
  QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
    on QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
    QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadCommentLikeNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadLikeNotification({
    required this.id,
    this.type,
    this.context,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadLikeNotification',
  });

  factory QueryNotificationsPagenotificationsThreadLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      thread: l$thread == null
          ? null
          : QueryNotificationsPagenotificationsThreadLikeNotificationthread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : QueryNotificationsPagenotificationsThreadLikeNotificationuser
              .fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final QueryNotificationsPagenotificationsThreadLikeNotificationthread? thread;

  final QueryNotificationsPagenotificationsThreadLikeNotificationuser? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsThreadLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadLikeNotification
    on QueryNotificationsPagenotificationsThreadLikeNotification {
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotification<
          QueryNotificationsPagenotificationsThreadLikeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadLikeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotification(
    QueryNotificationsPagenotificationsThreadLikeNotification instance,
    TRes Function(QueryNotificationsPagenotificationsThreadLikeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotification;

  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsThreadLikeNotificationthread? thread,
    QueryNotificationsPagenotificationsThreadLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<TRes>
      get thread;
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<TRes>
      get user;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadLikeNotification _instance;

  final TRes Function(QueryNotificationsPagenotificationsThreadLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as QueryNotificationsPagenotificationsThreadLikeNotificationthread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as QueryNotificationsPagenotificationsThreadLikeNotificationuser?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<TRes>
      get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread(
            local$thread, (e) => call(thread: e));
  }

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsThreadLikeNotificationthread? thread,
    QueryNotificationsPagenotificationsThreadLikeNotificationuser? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<TRes>
      get thread =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<TRes>
      get user =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadLikeNotificationthread {
  QueryNotificationsPagenotificationsThreadLikeNotificationthread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory QueryNotificationsPagenotificationsThreadLikeNotificationthread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadLikeNotificationthread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    if (other
            is! QueryNotificationsPagenotificationsThreadLikeNotificationthread ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadLikeNotificationthread
    on QueryNotificationsPagenotificationsThreadLikeNotificationthread {
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<
          QueryNotificationsPagenotificationsThreadLikeNotificationthread>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread(
    QueryNotificationsPagenotificationsThreadLikeNotificationthread instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadLikeNotificationthread)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationthread;

  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationthread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationthread(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadLikeNotificationthread
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsThreadLikeNotificationthread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadLikeNotificationthread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationthread<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationthread<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationthread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadLikeNotificationuser {
  QueryNotificationsPagenotificationsThreadLikeNotificationuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryNotificationsPagenotificationsThreadLikeNotificationuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadLikeNotificationuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadLikeNotificationuser ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadLikeNotificationuser
    on QueryNotificationsPagenotificationsThreadLikeNotificationuser {
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<
          QueryNotificationsPagenotificationsThreadLikeNotificationuser>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser(
    QueryNotificationsPagenotificationsThreadLikeNotificationuser instance,
    TRes Function(QueryNotificationsPagenotificationsThreadLikeNotificationuser)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuser;

  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuser;

  TRes call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
      TRes> get avatar;
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuser(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadLikeNotificationuser _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsThreadLikeNotificationuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadLikeNotificationuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuser<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuser<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
          TRes>
      get avatar =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
              .stub(_res);
}

class QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar {
  QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
    on QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar {
  CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
          QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
    QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar;

  factory CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsThreadLikeNotificationuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaDataChangeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaDataChangeNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDataChangeNotification',
  });

  factory QueryNotificationsPagenotificationsMediaDataChangeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDataChangeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
              .fromJson((l$media as Map<String, dynamic>)),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia?
      media;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaDataChangeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaDataChangeNotification
    on QueryNotificationsPagenotificationsMediaDataChangeNotification {
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification<
          QueryNotificationsPagenotificationsMediaDataChangeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification(
    QueryNotificationsPagenotificationsMediaDataChangeNotification instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaDataChangeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotification;

  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia? media,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
      TRes> get media;
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaDataChangeNotification
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsMediaDataChangeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaDataChangeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia? media,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
          TRes>
      get media =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
              .stub(_res);
}

class QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia {
  QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia({
    required this.id,
    this.type,
    this.bannerImage,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final String? bannerImage;

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle?
      title;

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$bannerImage,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia ||
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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
    return true;
  }
}

extension UtilityExtensionQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
    on QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia {
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia;

  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle?
        title,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
      TRes> get title;
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
      TRes> get coverImage;
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmedia(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle?
        title,
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
          TRes>
      get title =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
              .stub(_res);
}

class QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle {
  QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
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
    if (other
            is! QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
    on QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle {
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle;

  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage {
  QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
    on QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage {
  CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
    QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage;

  factory CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaDataChangeNotificationmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaMergeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaMergeNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.deletedMediaTitles,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaMergeNotification',
  });

  factory QueryNotificationsPagenotificationsMediaMergeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$deletedMediaTitles = json['deletedMediaTitles'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaMergeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : QueryNotificationsPagenotificationsMediaMergeNotificationmedia
              .fromJson((l$media as Map<String, dynamic>)),
      deletedMediaTitles: (l$deletedMediaTitles as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final QueryNotificationsPagenotificationsMediaMergeNotificationmedia? media;

  final List<String?>? deletedMediaTitles;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$deletedMediaTitles = deletedMediaTitles;
    _resultData['deletedMediaTitles'] =
        l$deletedMediaTitles?.map((e) => e).toList();
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$deletedMediaTitles = deletedMediaTitles;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$deletedMediaTitles == null
          ? null
          : Object.hashAll(l$deletedMediaTitles.map((v) => v)),
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryNotificationsPagenotificationsMediaMergeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$deletedMediaTitles = deletedMediaTitles;
    final lOther$deletedMediaTitles = other.deletedMediaTitles;
    if (l$deletedMediaTitles != null && lOther$deletedMediaTitles != null) {
      if (l$deletedMediaTitles.length != lOther$deletedMediaTitles.length) {
        return false;
      }
      for (int i = 0; i < l$deletedMediaTitles.length; i++) {
        final l$deletedMediaTitles$entry = l$deletedMediaTitles[i];
        final lOther$deletedMediaTitles$entry = lOther$deletedMediaTitles[i];
        if (l$deletedMediaTitles$entry != lOther$deletedMediaTitles$entry) {
          return false;
        }
      }
    } else if (l$deletedMediaTitles != lOther$deletedMediaTitles) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaMergeNotification
    on QueryNotificationsPagenotificationsMediaMergeNotification {
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotification<
          QueryNotificationsPagenotificationsMediaMergeNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaMergeNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotification(
    QueryNotificationsPagenotificationsMediaMergeNotification instance,
    TRes Function(QueryNotificationsPagenotificationsMediaMergeNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotification;

  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsMediaMergeNotificationmedia? media,
    List<String?>? deletedMediaTitles,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<TRes>
      get media;
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaMergeNotification _instance;

  final TRes Function(QueryNotificationsPagenotificationsMediaMergeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? deletedMediaTitles = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaMergeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryNotificationsPagenotificationsMediaMergeNotificationmedia?),
        deletedMediaTitles: deletedMediaTitles == _undefined
            ? _instance.deletedMediaTitles
            : (deletedMediaTitles as List<String?>?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    QueryNotificationsPagenotificationsMediaMergeNotificationmedia? media,
    List<String?>? deletedMediaTitles,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<TRes>
      get media =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia
              .stub(_res);
}

class QueryNotificationsPagenotificationsMediaMergeNotificationmedia {
  QueryNotificationsPagenotificationsMediaMergeNotificationmedia({
    required this.id,
    this.type,
    this.bannerImage,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory QueryNotificationsPagenotificationsMediaMergeNotificationmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaMergeNotificationmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final String? bannerImage;

  final QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle?
      title;

  final QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$bannerImage,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaMergeNotificationmedia ||
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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
    return true;
  }
}

extension UtilityExtensionQueryNotificationsPagenotificationsMediaMergeNotificationmedia
    on QueryNotificationsPagenotificationsMediaMergeNotificationmedia {
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
          QueryNotificationsPagenotificationsMediaMergeNotificationmedia>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia(
    QueryNotificationsPagenotificationsMediaMergeNotificationmedia instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaMergeNotificationmedia)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia;

  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle? title,
    QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  });
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
      TRes> get title;
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
      TRes> get coverImage;
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaMergeNotificationmedia
      _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsMediaMergeNotificationmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaMergeNotificationmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmedia<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmedia(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    String? bannerImage,
    QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle? title,
    QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
          TRes>
      get title =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
              .stub(_res);

  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
              .stub(_res);
}

class QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle {
  QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
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
    if (other
            is! QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle ||
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
    on QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle {
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
          QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
    QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle;

  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage {
  QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
    on QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage {
  CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
          QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
    QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
        instance,
    TRes Function(
            QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage;

  factory CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage
      _instance;

  final TRes Function(
          QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaMergeNotificationmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaDeletionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaDeletionNotification({
    required this.id,
    this.type,
    this.context,
    this.deletedMediaTitle,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDeletionNotification',
  });

  factory QueryNotificationsPagenotificationsMediaDeletionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$deletedMediaTitle = json['deletedMediaTitle'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDeletionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      deletedMediaTitle: (l$deletedMediaTitle as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final String? deletedMediaTitle;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$deletedMediaTitle = deletedMediaTitle;
    _resultData['deletedMediaTitle'] = l$deletedMediaTitle;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$deletedMediaTitle = deletedMediaTitle;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$deletedMediaTitle,
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! QueryNotificationsPagenotificationsMediaDeletionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$deletedMediaTitle = deletedMediaTitle;
    final lOther$deletedMediaTitle = other.deletedMediaTitle;
    if (l$deletedMediaTitle != lOther$deletedMediaTitle) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtensionQueryNotificationsPagenotificationsMediaDeletionNotification
    on QueryNotificationsPagenotificationsMediaDeletionNotification {
  CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification<
          QueryNotificationsPagenotificationsMediaDeletionNotification>
      get copyWith =>
          CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification<
    TRes> {
  factory CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification(
    QueryNotificationsPagenotificationsMediaDeletionNotification instance,
    TRes Function(QueryNotificationsPagenotificationsMediaDeletionNotification)
        then,
  ) = _CopyWithImplQueryNotificationsPagenotificationsMediaDeletionNotification;

  factory CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification.stub(
          TRes res) =
      _CopyWithStubImplQueryNotificationsPagenotificationsMediaDeletionNotification;

  TRes call({
    int? id,
    EnumNotificationType? type,
    String? context,
    String? deletedMediaTitle,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
}

class _CopyWithImplQueryNotificationsPagenotificationsMediaDeletionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification<
            TRes> {
  _CopyWithImplQueryNotificationsPagenotificationsMediaDeletionNotification(
    this._instance,
    this._then,
  );

  final QueryNotificationsPagenotificationsMediaDeletionNotification _instance;

  final TRes Function(
      QueryNotificationsPagenotificationsMediaDeletionNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? deletedMediaTitle = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaDeletionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        deletedMediaTitle: deletedMediaTitle == _undefined
            ? _instance.deletedMediaTitle
            : (deletedMediaTitle as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryNotificationsPagenotificationsMediaDeletionNotification<
        TRes>
    implements
        CopyWithQueryNotificationsPagenotificationsMediaDeletionNotification<
            TRes> {
  _CopyWithStubImplQueryNotificationsPagenotificationsMediaDeletionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumNotificationType? type,
    String? context,
    String? deletedMediaTitle,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryUnreadNotificationCount {
  QueryUnreadNotificationCount({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory QueryUnreadNotificationCount.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return QueryUnreadNotificationCount(
      Viewer: l$Viewer == null
          ? null
          : QueryUnreadNotificationCountViewer.fromJson(
              (l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUnreadNotificationCountViewer? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUnreadNotificationCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtensionQueryUnreadNotificationCount
    on QueryUnreadNotificationCount {
  CopyWithQueryUnreadNotificationCount<QueryUnreadNotificationCount>
      get copyWith => CopyWithQueryUnreadNotificationCount(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUnreadNotificationCount<TRes> {
  factory CopyWithQueryUnreadNotificationCount(
    QueryUnreadNotificationCount instance,
    TRes Function(QueryUnreadNotificationCount) then,
  ) = _CopyWithImplQueryUnreadNotificationCount;

  factory CopyWithQueryUnreadNotificationCount.stub(TRes res) =
      _CopyWithStubImplQueryUnreadNotificationCount;

  TRes call({
    QueryUnreadNotificationCountViewer? Viewer,
    String? $__typename,
  });
  CopyWithQueryUnreadNotificationCountViewer<TRes> get Viewer;
}

class _CopyWithImplQueryUnreadNotificationCount<TRes>
    implements CopyWithQueryUnreadNotificationCount<TRes> {
  _CopyWithImplQueryUnreadNotificationCount(
    this._instance,
    this._then,
  );

  final QueryUnreadNotificationCount _instance;

  final TRes Function(QueryUnreadNotificationCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUnreadNotificationCount(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as QueryUnreadNotificationCountViewer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUnreadNotificationCountViewer<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWithQueryUnreadNotificationCountViewer.stub(_then(_instance))
        : CopyWithQueryUnreadNotificationCountViewer(
            local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImplQueryUnreadNotificationCount<TRes>
    implements CopyWithQueryUnreadNotificationCount<TRes> {
  _CopyWithStubImplQueryUnreadNotificationCount(this._res);

  TRes _res;

  call({
    QueryUnreadNotificationCountViewer? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUnreadNotificationCountViewer<TRes> get Viewer =>
      CopyWithQueryUnreadNotificationCountViewer.stub(_res);
}

const documentNodeQueryUnreadNotificationCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UnreadNotificationCount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
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
            name: NameNode(value: 'unreadNotificationCount'),
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

class QueryUnreadNotificationCountViewer {
  QueryUnreadNotificationCountViewer({
    required this.id,
    this.unreadNotificationCount,
    this.$__typename = 'User',
  });

  factory QueryUnreadNotificationCountViewer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unreadNotificationCount = json['unreadNotificationCount'];
    final l$$__typename = json['__typename'];
    return QueryUnreadNotificationCountViewer(
      id: (l$id as int),
      unreadNotificationCount: (l$unreadNotificationCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? unreadNotificationCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unreadNotificationCount = unreadNotificationCount;
    _resultData['unreadNotificationCount'] = l$unreadNotificationCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unreadNotificationCount = unreadNotificationCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$unreadNotificationCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUnreadNotificationCountViewer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unreadNotificationCount = unreadNotificationCount;
    final lOther$unreadNotificationCount = other.unreadNotificationCount;
    if (l$unreadNotificationCount != lOther$unreadNotificationCount) {
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

extension UtilityExtensionQueryUnreadNotificationCountViewer
    on QueryUnreadNotificationCountViewer {
  CopyWithQueryUnreadNotificationCountViewer<QueryUnreadNotificationCountViewer>
      get copyWith => CopyWithQueryUnreadNotificationCountViewer(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUnreadNotificationCountViewer<TRes> {
  factory CopyWithQueryUnreadNotificationCountViewer(
    QueryUnreadNotificationCountViewer instance,
    TRes Function(QueryUnreadNotificationCountViewer) then,
  ) = _CopyWithImplQueryUnreadNotificationCountViewer;

  factory CopyWithQueryUnreadNotificationCountViewer.stub(TRes res) =
      _CopyWithStubImplQueryUnreadNotificationCountViewer;

  TRes call({
    int? id,
    int? unreadNotificationCount,
    String? $__typename,
  });
}

class _CopyWithImplQueryUnreadNotificationCountViewer<TRes>
    implements CopyWithQueryUnreadNotificationCountViewer<TRes> {
  _CopyWithImplQueryUnreadNotificationCountViewer(
    this._instance,
    this._then,
  );

  final QueryUnreadNotificationCountViewer _instance;

  final TRes Function(QueryUnreadNotificationCountViewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unreadNotificationCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUnreadNotificationCountViewer(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        unreadNotificationCount: unreadNotificationCount == _undefined
            ? _instance.unreadNotificationCount
            : (unreadNotificationCount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUnreadNotificationCountViewer<TRes>
    implements CopyWithQueryUnreadNotificationCountViewer<TRes> {
  _CopyWithStubImplQueryUnreadNotificationCountViewer(this._res);

  TRes _res;

  call({
    int? id,
    int? unreadNotificationCount,
    String? $__typename,
  }) =>
      _res;
}
