import 'fragments.graphql.dart';
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
    if (!(other is VariablesQueryNotifications) ||
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
    if (!(other is QueryNotifications) || runtimeType != other.runtimeType) {
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
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'resetNotificationCount'),
                value: VariableNode(
                    name: NameNode(value: 'resetNotificationCount')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'typeIn')),
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
                    name: NameNode(value: 'animeId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'activityId'),
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
                    name: NameNode(value: 'createdAt'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'commentId'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'commentId'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'commentId'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'commentId'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'threadId'),
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
                    name: NameNode(value: 'mediaId'),
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
                    name: NameNode(value: 'mediaId'),
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
                    name: NameNode(value: 'mediaId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deletedMediaTitles'),
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
                    name: NameNode(value: 'deletedMediaTitle'),
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
  fragmentDefinitionMediaMin,
  fragmentDefinitionUserMin,
]);

class QueryNotificationsPage {
  QueryNotificationsPage({
    this.notifications,
    this.$__typename = 'Page',
  });

  factory QueryNotificationsPage.fromJson(Map<String, dynamic> json) {
    final l$notifications = json['notifications'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPage(
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryNotificationsPagenotifications.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryNotificationsPagenotifications?>? notifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is QueryNotificationsPage) ||
        runtimeType != other.runtimeType) {
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
    List<QueryNotificationsPagenotifications?>? notifications,
    String? $__typename,
  });
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
    Object? notifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPage(
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications as List<QueryNotificationsPagenotifications?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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
    List<QueryNotificationsPagenotifications?>? notifications,
    String? $__typename,
  }) =>
      _res;

  notifications(_fn) => _res;
}

class QueryNotificationsPagenotifications {
  QueryNotificationsPagenotifications({required this.$__typename});

  factory QueryNotificationsPagenotifications.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AiringNotification":
        return QueryNotificationsPagenotificationsAiringNotification.fromJson(
            json);

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

      case "RelatedMediaAdditionNotification":
        return QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
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
    if (!(other is QueryNotificationsPagenotifications) ||
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
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)
        relatedMediaAdditionNotification,
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

      case "RelatedMediaAdditionNotification":
        return relatedMediaAdditionNotification(this
            as QueryNotificationsPagenotificationsRelatedMediaAdditionNotification);

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
    _T Function(
            QueryNotificationsPagenotificationsRelatedMediaAdditionNotification)?
        relatedMediaAdditionNotification,
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

      case "RelatedMediaAdditionNotification":
        if (relatedMediaAdditionNotification != null) {
          return relatedMediaAdditionNotification(this
              as QueryNotificationsPagenotificationsRelatedMediaAdditionNotification);
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
    required this.animeId,
    required this.episode,
    this.contexts,
    this.createdAt,
    this.media,
    this.$__typename = 'AiringNotification',
  });

  factory QueryNotificationsPagenotificationsAiringNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$animeId = json['animeId'];
    final l$episode = json['episode'];
    final l$contexts = json['contexts'];
    final l$createdAt = json['createdAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsAiringNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      animeId: (l$animeId as int),
      episode: (l$episode as int),
      contexts:
          (l$contexts as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      createdAt: (l$createdAt as int?),
      media: l$media == null
          ? null
          : FragmentMediaMin.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int animeId;

  final int episode;

  final List<String?>? contexts;

  final int? createdAt;

  final FragmentMediaMin? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$animeId = animeId;
    _resultData['animeId'] = l$animeId;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$contexts = contexts;
    _resultData['contexts'] = l$contexts?.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$animeId = animeId;
    final l$episode = episode;
    final l$contexts = contexts;
    final l$createdAt = createdAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$animeId,
      l$episode,
      l$contexts == null ? null : Object.hashAll(l$contexts.map((v) => v)),
      l$createdAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryNotificationsPagenotificationsAiringNotification) ||
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
    final l$animeId = animeId;
    final lOther$animeId = other.animeId;
    if (l$animeId != lOther$animeId) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? animeId,
    int? episode,
    List<String?>? contexts,
    int? createdAt,
    FragmentMediaMin? media,
    String? $__typename,
  });
  CopyWithFragmentMediaMin<TRes> get media;
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
    Object? animeId = _undefined,
    Object? episode = _undefined,
    Object? contexts = _undefined,
    Object? createdAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsAiringNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        animeId: animeId == _undefined || animeId == null
            ? _instance.animeId
            : (animeId as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        contexts: contexts == _undefined
            ? _instance.contexts
            : (contexts as List<String?>?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMin<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$media, (e) => call(media: e));
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
    int? animeId,
    int? episode,
    List<String?>? contexts,
    int? createdAt,
    FragmentMediaMin? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);
}

class QueryNotificationsPagenotificationsFollowingNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsFollowingNotification({
    required this.id,
    this.type,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'FollowingNotification',
  });

  factory QueryNotificationsPagenotificationsFollowingNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsFollowingNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

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
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryNotificationsPagenotificationsFollowingNotification) ||
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsFollowingNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityMessageNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityMessageNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityMessageNotification',
  });

  factory QueryNotificationsPagenotificationsActivityMessageNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMessageNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityMessageNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? userId,
    EnumNotificationType? type,
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMessageNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? userId,
    EnumNotificationType? type,
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityMentionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityMentionNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityMentionNotification',
  });

  factory QueryNotificationsPagenotificationsActivityMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityMentionNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityMentionNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? userId,
    EnumNotificationType? type,
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? userId,
    EnumNotificationType? type,
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplyNotification({
    required this.id,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityReplyNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityReplyNotification) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplySubscribedNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplySubscribedNotification({
    required this.id,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityReplySubscribedNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplySubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplySubscribedNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityReplySubscribedNotification) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsActivityReplySubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityLikeNotification({
    required this.id,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityLikeNotification',
  });

  factory QueryNotificationsPagenotificationsActivityLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityLikeNotification) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsActivityReplyLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsActivityReplyLikeNotification({
    required this.id,
    this.type,
    required this.activityId,
    this.context,
    this.createdAt,
    this.user,
    this.$__typename = 'ActivityReplyLikeNotification',
  });

  factory QueryNotificationsPagenotificationsActivityReplyLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$activityId = json['activityId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsActivityReplyLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      activityId: (l$activityId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int activityId;

  final String? context;

  final int? createdAt;

  final FragmentUserMin? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$activityId = activityId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$activityId,
      l$context,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsActivityReplyLikeNotification) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    Object? activityId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsActivityReplyLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
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
    int? activityId,
    String? context,
    int? createdAt,
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryNotificationsPagenotificationsThreadCommentMentionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentMentionNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.commentId,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentMentionNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$commentId = json['commentId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentMentionNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      commentId: (l$commentId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int commentId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$type = type;
    final l$commentId = commentId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$commentId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsThreadCommentMentionNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? commentId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentReplyNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentReplyNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.commentId,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentReplyNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$commentId = json['commentId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentReplyNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      commentId: (l$commentId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int commentId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$type = type;
    final l$commentId = commentId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$commentId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsThreadCommentReplyNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? commentId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentSubscribedNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentSubscribedNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.commentId,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentSubscribedNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentSubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$commentId = json['commentId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      commentId: (l$commentId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int commentId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$type = type;
    final l$commentId = commentId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$commentId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsThreadCommentSubscribedNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? commentId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          QueryNotificationsPagenotificationsThreadCommentSubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadCommentLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadCommentLikeNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.commentId,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentLikeNotification',
  });

  factory QueryNotificationsPagenotificationsThreadCommentLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$commentId = json['commentId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadCommentLikeNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      commentId: (l$commentId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int commentId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$type = type;
    final l$commentId = commentId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$commentId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsThreadCommentLikeNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? commentId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadCommentLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? userId,
    EnumNotificationType? type,
    int? commentId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsThreadLikeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsThreadLikeNotification({
    required this.id,
    required this.userId,
    this.type,
    required this.threadId,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadLikeNotification',
  });

  factory QueryNotificationsPagenotificationsThreadLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$threadId = json['threadId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsThreadLikeNotification(
      id: (l$id as int),
      userId: (l$userId as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      threadId: (l$threadId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final EnumNotificationType? type;

  final int threadId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$threadId = threadId;
    _resultData['threadId'] = l$threadId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$type = type;
    final l$threadId = threadId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$threadId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryNotificationsPagenotificationsThreadLikeNotification) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (l$threadId != lOther$threadId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? userId,
    EnumNotificationType? type,
    int? threadId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? threadId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsThreadLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        threadId: threadId == _undefined || threadId == null
            ? _instance.threadId
            : (threadId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? userId,
    EnumNotificationType? type,
    int? threadId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsRelatedMediaAdditionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsRelatedMediaAdditionNotification({
    required this.id,
    this.type,
    required this.mediaId,
    this.context,
    this.createdAt,
    this.$__typename = 'RelatedMediaAdditionNotification',
  });

  factory QueryNotificationsPagenotificationsRelatedMediaAdditionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$mediaId = json['mediaId'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      mediaId: (l$mediaId as int),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int mediaId;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumNotificationType(l$type);
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$mediaId = mediaId;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$mediaId,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is QueryNotificationsPagenotificationsRelatedMediaAdditionNotification) ||
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
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? mediaId,
    String? context,
    int? createdAt,
    String? $__typename,
  });
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
    Object? mediaId = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsRelatedMediaAdditionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? mediaId,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaDataChangeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaDataChangeNotification({
    required this.id,
    this.type,
    required this.mediaId,
    this.context,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDataChangeNotification',
  });

  factory QueryNotificationsPagenotificationsMediaDataChangeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$mediaId = json['mediaId'];
    final l$context = json['context'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDataChangeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      mediaId: (l$mediaId as int),
      context: (l$context as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int mediaId;

  final String? context;

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
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$mediaId = mediaId;
    final l$context = context;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$mediaId,
      l$context,
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
    if (!(other
            is QueryNotificationsPagenotificationsMediaDataChangeNotification) ||
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
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? mediaId,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
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
    Object? mediaId = _undefined,
    Object? context = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaDataChangeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        context:
            context == _undefined ? _instance.context : (context as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? mediaId,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaMergeNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaMergeNotification({
    required this.id,
    this.type,
    required this.mediaId,
    this.deletedMediaTitles,
    this.context,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaMergeNotification',
  });

  factory QueryNotificationsPagenotificationsMediaMergeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$mediaId = json['mediaId'];
    final l$deletedMediaTitles = json['deletedMediaTitles'];
    final l$context = json['context'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaMergeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      mediaId: (l$mediaId as int),
      deletedMediaTitles: (l$deletedMediaTitles as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      context: (l$context as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final int mediaId;

  final List<String?>? deletedMediaTitles;

  final String? context;

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
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$deletedMediaTitles = deletedMediaTitles;
    _resultData['deletedMediaTitles'] =
        l$deletedMediaTitles?.map((e) => e).toList();
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$mediaId = mediaId;
    final l$deletedMediaTitles = deletedMediaTitles;
    final l$context = context;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$mediaId,
      l$deletedMediaTitles == null
          ? null
          : Object.hashAll(l$deletedMediaTitles.map((v) => v)),
      l$context,
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
    if (!(other is QueryNotificationsPagenotificationsMediaMergeNotification) ||
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
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    int? mediaId,
    List<String?>? deletedMediaTitles,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
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
    Object? mediaId = _undefined,
    Object? deletedMediaTitles = _undefined,
    Object? context = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaMergeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        deletedMediaTitles: deletedMediaTitles == _undefined
            ? _instance.deletedMediaTitles
            : (deletedMediaTitles as List<String?>?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    int? mediaId,
    List<String?>? deletedMediaTitles,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class QueryNotificationsPagenotificationsMediaDeletionNotification
    implements QueryNotificationsPagenotifications {
  QueryNotificationsPagenotificationsMediaDeletionNotification({
    required this.id,
    this.type,
    this.deletedMediaTitle,
    this.context,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDeletionNotification',
  });

  factory QueryNotificationsPagenotificationsMediaDeletionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$deletedMediaTitle = json['deletedMediaTitle'];
    final l$context = json['context'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return QueryNotificationsPagenotificationsMediaDeletionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJsonEnumNotificationType((l$type as String)),
      deletedMediaTitle: (l$deletedMediaTitle as String?),
      context: (l$context as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumNotificationType? type;

  final String? deletedMediaTitle;

  final String? context;

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
    final l$deletedMediaTitle = deletedMediaTitle;
    _resultData['deletedMediaTitle'] = l$deletedMediaTitle;
    final l$context = context;
    _resultData['context'] = l$context;
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
    final l$deletedMediaTitle = deletedMediaTitle;
    final l$context = context;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$deletedMediaTitle,
      l$context,
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
    if (!(other
            is QueryNotificationsPagenotificationsMediaDeletionNotification) ||
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
    final l$deletedMediaTitle = deletedMediaTitle;
    final lOther$deletedMediaTitle = other.deletedMediaTitle;
    if (l$deletedMediaTitle != lOther$deletedMediaTitle) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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
    String? deletedMediaTitle,
    String? context,
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
    Object? deletedMediaTitle = _undefined,
    Object? context = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryNotificationsPagenotificationsMediaDeletionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as EnumNotificationType?),
        deletedMediaTitle: deletedMediaTitle == _undefined
            ? _instance.deletedMediaTitle
            : (deletedMediaTitle as String?),
        context:
            context == _undefined ? _instance.context : (context as String?),
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
    String? deletedMediaTitle,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}
