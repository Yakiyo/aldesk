import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesQueryUser {
  factory VariablesQueryUser({
    int? id,
    String? search,
  }) =>
      VariablesQueryUser._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  VariablesQueryUser._(this._$data);

  factory VariablesQueryUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryUser._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWithVariablesQueryUser<VariablesQueryUser> get copyWith =>
      CopyWithVariablesQueryUser(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryUser || runtimeType != other.runtimeType) {
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
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUser<TRes> {
  factory CopyWithVariablesQueryUser(
    VariablesQueryUser instance,
    TRes Function(VariablesQueryUser) then,
  ) = _CopyWithImplVariablesQueryUser;

  factory CopyWithVariablesQueryUser.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUser;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImplVariablesQueryUser<TRes>
    implements CopyWithVariablesQueryUser<TRes> {
  _CopyWithImplVariablesQueryUser(
    this._instance,
    this._then,
  );

  final VariablesQueryUser _instance;

  final TRes Function(VariablesQueryUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryUser._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryUser<TRes>
    implements CopyWithVariablesQueryUser<TRes> {
  _CopyWithStubImplVariablesQueryUser(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class QueryUser {
  QueryUser({
    this.User,
    this.$__typename = 'Query',
  });

  factory QueryUser.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return QueryUser(
      User: l$User == null
          ? null
          : QueryUserUser.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserUser? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtensionQueryUser on QueryUser {
  CopyWithQueryUser<QueryUser> get copyWith => CopyWithQueryUser(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUser<TRes> {
  factory CopyWithQueryUser(
    QueryUser instance,
    TRes Function(QueryUser) then,
  ) = _CopyWithImplQueryUser;

  factory CopyWithQueryUser.stub(TRes res) = _CopyWithStubImplQueryUser;

  TRes call({
    QueryUserUser? User,
    String? $__typename,
  });
  CopyWithQueryUserUser<TRes> get User;
}

class _CopyWithImplQueryUser<TRes> implements CopyWithQueryUser<TRes> {
  _CopyWithImplQueryUser(
    this._instance,
    this._then,
  );

  final QueryUser _instance;

  final TRes Function(QueryUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUser(
        User: User == _undefined ? _instance.User : (User as QueryUserUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserUser<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWithQueryUserUser.stub(_then(_instance))
        : CopyWithQueryUserUser(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImplQueryUser<TRes> implements CopyWithQueryUser<TRes> {
  _CopyWithStubImplQueryUser(this._res);

  TRes _res;

  call({
    QueryUserUser? User,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserUser<TRes> get User => CopyWithQueryUserUser.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserMin'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserSocials'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserSettings'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'about'),
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
            name: NameNode(value: 'bannerImage'),
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
  fragmentDefinitionUserSocials,
  fragmentDefinitionUserSettings,
]);

class QueryUserUser
    implements FragmentUserMin, FragmentUserSocials, FragmentUserSettings {
  QueryUserUser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
    this.isFollowing,
    this.isFollower,
    this.isBlocked,
    this.options,
    this.mediaListOptions,
    this.about,
    this.bannerImage,
    this.siteUrl,
  });

  factory QueryUserUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    final l$isFollowing = json['isFollowing'];
    final l$isFollower = json['isFollower'];
    final l$isBlocked = json['isBlocked'];
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$about = json['about'];
    final l$bannerImage = json['bannerImage'];
    final l$siteUrl = json['siteUrl'];
    return QueryUserUser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryUserUseravatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      isFollowing: (l$isFollowing as bool?),
      isFollower: (l$isFollower as bool?),
      isBlocked: (l$isBlocked as bool?),
      options: l$options == null
          ? null
          : QueryUserUseroptions.fromJson((l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : QueryUserUsermediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      about: (l$about as String?),
      bannerImage: (l$bannerImage as String?),
      siteUrl: (l$siteUrl as String?),
    );
  }

  final int id;

  final String name;

  final QueryUserUseravatar? avatar;

  final String $__typename;

  final bool? isFollowing;

  final bool? isFollower;

  final bool? isBlocked;

  final QueryUserUseroptions? options;

  final QueryUserUsermediaListOptions? mediaListOptions;

  final String? about;

  final String? bannerImage;

  final String? siteUrl;

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
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$isFollower = isFollower;
    _resultData['isFollower'] = l$isFollower;
    final l$isBlocked = isBlocked;
    _resultData['isBlocked'] = l$isBlocked;
    final l$options = options;
    _resultData['options'] = l$options?.toJson();
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$about = about;
    _resultData['about'] = l$about;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    final l$isFollowing = isFollowing;
    final l$isFollower = isFollower;
    final l$isBlocked = isBlocked;
    final l$options = options;
    final l$mediaListOptions = mediaListOptions;
    final l$about = about;
    final l$bannerImage = bannerImage;
    final l$siteUrl = siteUrl;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
      l$isFollowing,
      l$isFollower,
      l$isBlocked,
      l$options,
      l$mediaListOptions,
      l$about,
      l$bannerImage,
      l$siteUrl,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUser || runtimeType != other.runtimeType) {
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
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    final l$isFollower = isFollower;
    final lOther$isFollower = other.isFollower;
    if (l$isFollower != lOther$isFollower) {
      return false;
    }
    final l$isBlocked = isBlocked;
    final lOther$isBlocked = other.isBlocked;
    if (l$isBlocked != lOther$isBlocked) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryUserUser on QueryUserUser {
  CopyWithQueryUserUser<QueryUserUser> get copyWith => CopyWithQueryUserUser(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserUser<TRes> {
  factory CopyWithQueryUserUser(
    QueryUserUser instance,
    TRes Function(QueryUserUser) then,
  ) = _CopyWithImplQueryUserUser;

  factory CopyWithQueryUserUser.stub(TRes res) = _CopyWithStubImplQueryUserUser;

  TRes call({
    int? id,
    String? name,
    QueryUserUseravatar? avatar,
    String? $__typename,
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    QueryUserUseroptions? options,
    QueryUserUsermediaListOptions? mediaListOptions,
    String? about,
    String? bannerImage,
    String? siteUrl,
  });
  CopyWithQueryUserUseravatar<TRes> get avatar;
  CopyWithQueryUserUseroptions<TRes> get options;
  CopyWithQueryUserUsermediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImplQueryUserUser<TRes> implements CopyWithQueryUserUser<TRes> {
  _CopyWithImplQueryUserUser(
    this._instance,
    this._then,
  );

  final QueryUserUser _instance;

  final TRes Function(QueryUserUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
    Object? isFollowing = _undefined,
    Object? isFollower = _undefined,
    Object? isBlocked = _undefined,
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
    Object? about = _undefined,
    Object? bannerImage = _undefined,
    Object? siteUrl = _undefined,
  }) =>
      _then(QueryUserUser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as QueryUserUseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        isFollower: isFollower == _undefined
            ? _instance.isFollower
            : (isFollower as bool?),
        isBlocked: isBlocked == _undefined
            ? _instance.isBlocked
            : (isBlocked as bool?),
        options: options == _undefined
            ? _instance.options
            : (options as QueryUserUseroptions?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as QueryUserUsermediaListOptions?),
        about: about == _undefined ? _instance.about : (about as String?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
      ));

  CopyWithQueryUserUseravatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryUserUseravatar.stub(_then(_instance))
        : CopyWithQueryUserUseravatar(local$avatar, (e) => call(avatar: e));
  }

  CopyWithQueryUserUseroptions<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWithQueryUserUseroptions.stub(_then(_instance))
        : CopyWithQueryUserUseroptions(local$options, (e) => call(options: e));
  }

  CopyWithQueryUserUsermediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWithQueryUserUsermediaListOptions.stub(_then(_instance))
        : CopyWithQueryUserUsermediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImplQueryUserUser<TRes>
    implements CopyWithQueryUserUser<TRes> {
  _CopyWithStubImplQueryUserUser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryUserUseravatar? avatar,
    String? $__typename,
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    QueryUserUseroptions? options,
    QueryUserUsermediaListOptions? mediaListOptions,
    String? about,
    String? bannerImage,
    String? siteUrl,
  }) =>
      _res;

  CopyWithQueryUserUseravatar<TRes> get avatar =>
      CopyWithQueryUserUseravatar.stub(_res);

  CopyWithQueryUserUseroptions<TRes> get options =>
      CopyWithQueryUserUseroptions.stub(_res);

  CopyWithQueryUserUsermediaListOptions<TRes> get mediaListOptions =>
      CopyWithQueryUserUsermediaListOptions.stub(_res);
}

class QueryUserUseravatar implements FragmentUserMinavatar {
  QueryUserUseravatar({
    this.large,
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory QueryUserUseravatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return QueryUserUseravatar(
      large: (l$large as String?),
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUseravatar || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryUserUseravatar on QueryUserUseravatar {
  CopyWithQueryUserUseravatar<QueryUserUseravatar> get copyWith =>
      CopyWithQueryUserUseravatar(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserUseravatar<TRes> {
  factory CopyWithQueryUserUseravatar(
    QueryUserUseravatar instance,
    TRes Function(QueryUserUseravatar) then,
  ) = _CopyWithImplQueryUserUseravatar;

  factory CopyWithQueryUserUseravatar.stub(TRes res) =
      _CopyWithStubImplQueryUserUseravatar;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserUseravatar<TRes>
    implements CopyWithQueryUserUseravatar<TRes> {
  _CopyWithImplQueryUserUseravatar(
    this._instance,
    this._then,
  );

  final QueryUserUseravatar _instance;

  final TRes Function(QueryUserUseravatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserUseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserUseravatar<TRes>
    implements CopyWithQueryUserUseravatar<TRes> {
  _CopyWithStubImplQueryUserUseravatar(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserUseroptions implements FragmentUserSettingsoptions {
  QueryUserUseroptions({
    this.titleLanguage,
    this.displayAdultContent,
    this.airingNotifications,
    this.profileColor,
    this.timezone,
    this.activityMergeTime,
    this.staffNameLanguage,
    this.restrictMessagesToFollowing,
    this.$__typename = 'UserOptions',
  });

  factory QueryUserUseroptions.fromJson(Map<String, dynamic> json) {
    final l$titleLanguage = json['titleLanguage'];
    final l$displayAdultContent = json['displayAdultContent'];
    final l$airingNotifications = json['airingNotifications'];
    final l$profileColor = json['profileColor'];
    final l$timezone = json['timezone'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$$__typename = json['__typename'];
    return QueryUserUseroptions(
      titleLanguage: l$titleLanguage == null
          ? null
          : fromJsonEnumUserTitleLanguage((l$titleLanguage as String)),
      displayAdultContent: (l$displayAdultContent as bool?),
      airingNotifications: (l$airingNotifications as bool?),
      profileColor: (l$profileColor as String?),
      timezone: (l$timezone as String?),
      activityMergeTime: (l$activityMergeTime as int?),
      staffNameLanguage: l$staffNameLanguage == null
          ? null
          : fromJsonEnumUserStaffNameLanguage((l$staffNameLanguage as String)),
      restrictMessagesToFollowing: (l$restrictMessagesToFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumUserTitleLanguage? titleLanguage;

  final bool? displayAdultContent;

  final bool? airingNotifications;

  final String? profileColor;

  final String? timezone;

  final int? activityMergeTime;

  final EnumUserStaffNameLanguage? staffNameLanguage;

  final bool? restrictMessagesToFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$titleLanguage = titleLanguage;
    _resultData['titleLanguage'] = l$titleLanguage == null
        ? null
        : toJsonEnumUserTitleLanguage(l$titleLanguage);
    final l$displayAdultContent = displayAdultContent;
    _resultData['displayAdultContent'] = l$displayAdultContent;
    final l$airingNotifications = airingNotifications;
    _resultData['airingNotifications'] = l$airingNotifications;
    final l$profileColor = profileColor;
    _resultData['profileColor'] = l$profileColor;
    final l$timezone = timezone;
    _resultData['timezone'] = l$timezone;
    final l$activityMergeTime = activityMergeTime;
    _resultData['activityMergeTime'] = l$activityMergeTime;
    final l$staffNameLanguage = staffNameLanguage;
    _resultData['staffNameLanguage'] = l$staffNameLanguage == null
        ? null
        : toJsonEnumUserStaffNameLanguage(l$staffNameLanguage);
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    _resultData['restrictMessagesToFollowing'] = l$restrictMessagesToFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$titleLanguage = titleLanguage;
    final l$displayAdultContent = displayAdultContent;
    final l$airingNotifications = airingNotifications;
    final l$profileColor = profileColor;
    final l$timezone = timezone;
    final l$activityMergeTime = activityMergeTime;
    final l$staffNameLanguage = staffNameLanguage;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$titleLanguage,
      l$displayAdultContent,
      l$airingNotifications,
      l$profileColor,
      l$timezone,
      l$activityMergeTime,
      l$staffNameLanguage,
      l$restrictMessagesToFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUseroptions || runtimeType != other.runtimeType) {
      return false;
    }
    final l$titleLanguage = titleLanguage;
    final lOther$titleLanguage = other.titleLanguage;
    if (l$titleLanguage != lOther$titleLanguage) {
      return false;
    }
    final l$displayAdultContent = displayAdultContent;
    final lOther$displayAdultContent = other.displayAdultContent;
    if (l$displayAdultContent != lOther$displayAdultContent) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (l$airingNotifications != lOther$airingNotifications) {
      return false;
    }
    final l$profileColor = profileColor;
    final lOther$profileColor = other.profileColor;
    if (l$profileColor != lOther$profileColor) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$activityMergeTime = activityMergeTime;
    final lOther$activityMergeTime = other.activityMergeTime;
    if (l$activityMergeTime != lOther$activityMergeTime) {
      return false;
    }
    final l$staffNameLanguage = staffNameLanguage;
    final lOther$staffNameLanguage = other.staffNameLanguage;
    if (l$staffNameLanguage != lOther$staffNameLanguage) {
      return false;
    }
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final lOther$restrictMessagesToFollowing =
        other.restrictMessagesToFollowing;
    if (l$restrictMessagesToFollowing != lOther$restrictMessagesToFollowing) {
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

extension UtilityExtensionQueryUserUseroptions on QueryUserUseroptions {
  CopyWithQueryUserUseroptions<QueryUserUseroptions> get copyWith =>
      CopyWithQueryUserUseroptions(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserUseroptions<TRes> {
  factory CopyWithQueryUserUseroptions(
    QueryUserUseroptions instance,
    TRes Function(QueryUserUseroptions) then,
  ) = _CopyWithImplQueryUserUseroptions;

  factory CopyWithQueryUserUseroptions.stub(TRes res) =
      _CopyWithStubImplQueryUserUseroptions;

  TRes call({
    EnumUserTitleLanguage? titleLanguage,
    bool? displayAdultContent,
    bool? airingNotifications,
    String? profileColor,
    String? timezone,
    int? activityMergeTime,
    EnumUserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserUseroptions<TRes>
    implements CopyWithQueryUserUseroptions<TRes> {
  _CopyWithImplQueryUserUseroptions(
    this._instance,
    this._then,
  );

  final QueryUserUseroptions _instance;

  final TRes Function(QueryUserUseroptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? titleLanguage = _undefined,
    Object? displayAdultContent = _undefined,
    Object? airingNotifications = _undefined,
    Object? profileColor = _undefined,
    Object? timezone = _undefined,
    Object? activityMergeTime = _undefined,
    Object? staffNameLanguage = _undefined,
    Object? restrictMessagesToFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserUseroptions(
        titleLanguage: titleLanguage == _undefined
            ? _instance.titleLanguage
            : (titleLanguage as EnumUserTitleLanguage?),
        displayAdultContent: displayAdultContent == _undefined
            ? _instance.displayAdultContent
            : (displayAdultContent as bool?),
        airingNotifications: airingNotifications == _undefined
            ? _instance.airingNotifications
            : (airingNotifications as bool?),
        profileColor: profileColor == _undefined
            ? _instance.profileColor
            : (profileColor as String?),
        timezone:
            timezone == _undefined ? _instance.timezone : (timezone as String?),
        activityMergeTime: activityMergeTime == _undefined
            ? _instance.activityMergeTime
            : (activityMergeTime as int?),
        staffNameLanguage: staffNameLanguage == _undefined
            ? _instance.staffNameLanguage
            : (staffNameLanguage as EnumUserStaffNameLanguage?),
        restrictMessagesToFollowing: restrictMessagesToFollowing == _undefined
            ? _instance.restrictMessagesToFollowing
            : (restrictMessagesToFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserUseroptions<TRes>
    implements CopyWithQueryUserUseroptions<TRes> {
  _CopyWithStubImplQueryUserUseroptions(this._res);

  TRes _res;

  call({
    EnumUserTitleLanguage? titleLanguage,
    bool? displayAdultContent,
    bool? airingNotifications,
    String? profileColor,
    String? timezone,
    int? activityMergeTime,
    EnumUserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserUsermediaListOptions
    implements FragmentUserSettingsmediaListOptions {
  QueryUserUsermediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory QueryUserUsermediaListOptions.fromJson(Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return QueryUserUsermediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJsonEnumScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : QueryUserUsermediaListOptionsanimeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : QueryUserUsermediaListOptionsmangaList.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumScoreFormat? scoreFormat;

  final String? rowOrder;

  final QueryUserUsermediaListOptionsanimeList? animeList;

  final QueryUserUsermediaListOptionsmangaList? mangaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJsonEnumScoreFormat(l$scoreFormat);
    final l$rowOrder = rowOrder;
    _resultData['rowOrder'] = l$rowOrder;
    final l$animeList = animeList;
    _resultData['animeList'] = l$animeList?.toJson();
    final l$mangaList = mangaList;
    _resultData['mangaList'] = l$mangaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$animeList = animeList;
    final l$mangaList = mangaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$rowOrder,
      l$animeList,
      l$mangaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUsermediaListOptions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$animeList = animeList;
    final lOther$animeList = other.animeList;
    if (l$animeList != lOther$animeList) {
      return false;
    }
    final l$mangaList = mangaList;
    final lOther$mangaList = other.mangaList;
    if (l$mangaList != lOther$mangaList) {
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

extension UtilityExtensionQueryUserUsermediaListOptions
    on QueryUserUsermediaListOptions {
  CopyWithQueryUserUsermediaListOptions<QueryUserUsermediaListOptions>
      get copyWith => CopyWithQueryUserUsermediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserUsermediaListOptions<TRes> {
  factory CopyWithQueryUserUsermediaListOptions(
    QueryUserUsermediaListOptions instance,
    TRes Function(QueryUserUsermediaListOptions) then,
  ) = _CopyWithImplQueryUserUsermediaListOptions;

  factory CopyWithQueryUserUsermediaListOptions.stub(TRes res) =
      _CopyWithStubImplQueryUserUsermediaListOptions;

  TRes call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    QueryUserUsermediaListOptionsanimeList? animeList,
    QueryUserUsermediaListOptionsmangaList? mangaList,
    String? $__typename,
  });
  CopyWithQueryUserUsermediaListOptionsanimeList<TRes> get animeList;
  CopyWithQueryUserUsermediaListOptionsmangaList<TRes> get mangaList;
}

class _CopyWithImplQueryUserUsermediaListOptions<TRes>
    implements CopyWithQueryUserUsermediaListOptions<TRes> {
  _CopyWithImplQueryUserUsermediaListOptions(
    this._instance,
    this._then,
  );

  final QueryUserUsermediaListOptions _instance;

  final TRes Function(QueryUserUsermediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserUsermediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as EnumScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as QueryUserUsermediaListOptionsanimeList?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as QueryUserUsermediaListOptionsmangaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserUsermediaListOptionsanimeList<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWithQueryUserUsermediaListOptionsanimeList.stub(_then(_instance))
        : CopyWithQueryUserUsermediaListOptionsanimeList(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWithQueryUserUsermediaListOptionsmangaList<TRes> get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWithQueryUserUsermediaListOptionsmangaList.stub(_then(_instance))
        : CopyWithQueryUserUsermediaListOptionsmangaList(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImplQueryUserUsermediaListOptions<TRes>
    implements CopyWithQueryUserUsermediaListOptions<TRes> {
  _CopyWithStubImplQueryUserUsermediaListOptions(this._res);

  TRes _res;

  call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    QueryUserUsermediaListOptionsanimeList? animeList,
    QueryUserUsermediaListOptionsmangaList? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserUsermediaListOptionsanimeList<TRes> get animeList =>
      CopyWithQueryUserUsermediaListOptionsanimeList.stub(_res);

  CopyWithQueryUserUsermediaListOptionsmangaList<TRes> get mangaList =>
      CopyWithQueryUserUsermediaListOptionsmangaList.stub(_res);
}

class QueryUserUsermediaListOptionsanimeList
    implements FragmentUserSettingsmediaListOptionsanimeList {
  QueryUserUsermediaListOptionsanimeList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory QueryUserUsermediaListOptionsanimeList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return QueryUserUsermediaListOptionsanimeList(
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      splitCompletedSectionByFormat: (l$splitCompletedSectionByFormat as bool?),
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoring: (l$advancedScoring as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoringEnabled: (l$advancedScoringEnabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? sectionOrder;

  final bool? splitCompletedSectionByFormat;

  final List<String?>? customLists;

  final List<String?>? advancedScoring;

  final bool? advancedScoringEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    _resultData['splitCompletedSectionByFormat'] =
        l$splitCompletedSectionByFormat;
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$advancedScoring = advancedScoring;
    _resultData['advancedScoring'] = l$advancedScoring?.map((e) => e).toList();
    final l$advancedScoringEnabled = advancedScoringEnabled;
    _resultData['advancedScoringEnabled'] = l$advancedScoringEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final l$customLists = customLists;
    final l$advancedScoring = advancedScoring;
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$splitCompletedSectionByFormat,
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$advancedScoring == null
          ? null
          : Object.hashAll(l$advancedScoring.map((v) => v)),
      l$advancedScoringEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUsermediaListOptionsanimeList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final lOther$splitCompletedSectionByFormat =
        other.splitCompletedSectionByFormat;
    if (l$splitCompletedSectionByFormat !=
        lOther$splitCompletedSectionByFormat) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$advancedScoring = advancedScoring;
    final lOther$advancedScoring = other.advancedScoring;
    if (l$advancedScoring != null && lOther$advancedScoring != null) {
      if (l$advancedScoring.length != lOther$advancedScoring.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScoring.length; i++) {
        final l$advancedScoring$entry = l$advancedScoring[i];
        final lOther$advancedScoring$entry = lOther$advancedScoring[i];
        if (l$advancedScoring$entry != lOther$advancedScoring$entry) {
          return false;
        }
      }
    } else if (l$advancedScoring != lOther$advancedScoring) {
      return false;
    }
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final lOther$advancedScoringEnabled = other.advancedScoringEnabled;
    if (l$advancedScoringEnabled != lOther$advancedScoringEnabled) {
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

extension UtilityExtensionQueryUserUsermediaListOptionsanimeList
    on QueryUserUsermediaListOptionsanimeList {
  CopyWithQueryUserUsermediaListOptionsanimeList<
          QueryUserUsermediaListOptionsanimeList>
      get copyWith => CopyWithQueryUserUsermediaListOptionsanimeList(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserUsermediaListOptionsanimeList<TRes> {
  factory CopyWithQueryUserUsermediaListOptionsanimeList(
    QueryUserUsermediaListOptionsanimeList instance,
    TRes Function(QueryUserUsermediaListOptionsanimeList) then,
  ) = _CopyWithImplQueryUserUsermediaListOptionsanimeList;

  factory CopyWithQueryUserUsermediaListOptionsanimeList.stub(TRes res) =
      _CopyWithStubImplQueryUserUsermediaListOptionsanimeList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserUsermediaListOptionsanimeList<TRes>
    implements CopyWithQueryUserUsermediaListOptionsanimeList<TRes> {
  _CopyWithImplQueryUserUsermediaListOptionsanimeList(
    this._instance,
    this._then,
  );

  final QueryUserUsermediaListOptionsanimeList _instance;

  final TRes Function(QueryUserUsermediaListOptionsanimeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserUsermediaListOptionsanimeList(
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        splitCompletedSectionByFormat:
            splitCompletedSectionByFormat == _undefined
                ? _instance.splitCompletedSectionByFormat
                : (splitCompletedSectionByFormat as bool?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        advancedScoring: advancedScoring == _undefined
            ? _instance.advancedScoring
            : (advancedScoring as List<String?>?),
        advancedScoringEnabled: advancedScoringEnabled == _undefined
            ? _instance.advancedScoringEnabled
            : (advancedScoringEnabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserUsermediaListOptionsanimeList<TRes>
    implements CopyWithQueryUserUsermediaListOptionsanimeList<TRes> {
  _CopyWithStubImplQueryUserUsermediaListOptionsanimeList(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserUsermediaListOptionsmangaList
    implements FragmentUserSettingsmediaListOptionsmangaList {
  QueryUserUsermediaListOptionsmangaList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory QueryUserUsermediaListOptionsmangaList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return QueryUserUsermediaListOptionsmangaList(
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      splitCompletedSectionByFormat: (l$splitCompletedSectionByFormat as bool?),
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoring: (l$advancedScoring as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoringEnabled: (l$advancedScoringEnabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? sectionOrder;

  final bool? splitCompletedSectionByFormat;

  final List<String?>? customLists;

  final List<String?>? advancedScoring;

  final bool? advancedScoringEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    _resultData['splitCompletedSectionByFormat'] =
        l$splitCompletedSectionByFormat;
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$advancedScoring = advancedScoring;
    _resultData['advancedScoring'] = l$advancedScoring?.map((e) => e).toList();
    final l$advancedScoringEnabled = advancedScoringEnabled;
    _resultData['advancedScoringEnabled'] = l$advancedScoringEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final l$customLists = customLists;
    final l$advancedScoring = advancedScoring;
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$splitCompletedSectionByFormat,
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$advancedScoring == null
          ? null
          : Object.hashAll(l$advancedScoring.map((v) => v)),
      l$advancedScoringEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserUsermediaListOptionsmangaList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final lOther$splitCompletedSectionByFormat =
        other.splitCompletedSectionByFormat;
    if (l$splitCompletedSectionByFormat !=
        lOther$splitCompletedSectionByFormat) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$advancedScoring = advancedScoring;
    final lOther$advancedScoring = other.advancedScoring;
    if (l$advancedScoring != null && lOther$advancedScoring != null) {
      if (l$advancedScoring.length != lOther$advancedScoring.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScoring.length; i++) {
        final l$advancedScoring$entry = l$advancedScoring[i];
        final lOther$advancedScoring$entry = lOther$advancedScoring[i];
        if (l$advancedScoring$entry != lOther$advancedScoring$entry) {
          return false;
        }
      }
    } else if (l$advancedScoring != lOther$advancedScoring) {
      return false;
    }
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final lOther$advancedScoringEnabled = other.advancedScoringEnabled;
    if (l$advancedScoringEnabled != lOther$advancedScoringEnabled) {
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

extension UtilityExtensionQueryUserUsermediaListOptionsmangaList
    on QueryUserUsermediaListOptionsmangaList {
  CopyWithQueryUserUsermediaListOptionsmangaList<
          QueryUserUsermediaListOptionsmangaList>
      get copyWith => CopyWithQueryUserUsermediaListOptionsmangaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserUsermediaListOptionsmangaList<TRes> {
  factory CopyWithQueryUserUsermediaListOptionsmangaList(
    QueryUserUsermediaListOptionsmangaList instance,
    TRes Function(QueryUserUsermediaListOptionsmangaList) then,
  ) = _CopyWithImplQueryUserUsermediaListOptionsmangaList;

  factory CopyWithQueryUserUsermediaListOptionsmangaList.stub(TRes res) =
      _CopyWithStubImplQueryUserUsermediaListOptionsmangaList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserUsermediaListOptionsmangaList<TRes>
    implements CopyWithQueryUserUsermediaListOptionsmangaList<TRes> {
  _CopyWithImplQueryUserUsermediaListOptionsmangaList(
    this._instance,
    this._then,
  );

  final QueryUserUsermediaListOptionsmangaList _instance;

  final TRes Function(QueryUserUsermediaListOptionsmangaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserUsermediaListOptionsmangaList(
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        splitCompletedSectionByFormat:
            splitCompletedSectionByFormat == _undefined
                ? _instance.splitCompletedSectionByFormat
                : (splitCompletedSectionByFormat as bool?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        advancedScoring: advancedScoring == _undefined
            ? _instance.advancedScoring
            : (advancedScoring as List<String?>?),
        advancedScoringEnabled: advancedScoringEnabled == _undefined
            ? _instance.advancedScoringEnabled
            : (advancedScoringEnabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserUsermediaListOptionsmangaList<TRes>
    implements CopyWithQueryUserUsermediaListOptionsmangaList<TRes> {
  _CopyWithStubImplQueryUserUsermediaListOptionsmangaList(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryUserMin {
  factory VariablesQueryUserMin({
    int? id,
    String? search,
  }) =>
      VariablesQueryUserMin._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  VariablesQueryUserMin._(this._$data);

  factory VariablesQueryUserMin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryUserMin._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWithVariablesQueryUserMin<VariablesQueryUserMin> get copyWith =>
      CopyWithVariablesQueryUserMin(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryUserMin || runtimeType != other.runtimeType) {
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
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUserMin<TRes> {
  factory CopyWithVariablesQueryUserMin(
    VariablesQueryUserMin instance,
    TRes Function(VariablesQueryUserMin) then,
  ) = _CopyWithImplVariablesQueryUserMin;

  factory CopyWithVariablesQueryUserMin.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUserMin;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImplVariablesQueryUserMin<TRes>
    implements CopyWithVariablesQueryUserMin<TRes> {
  _CopyWithImplVariablesQueryUserMin(
    this._instance,
    this._then,
  );

  final VariablesQueryUserMin _instance;

  final TRes Function(VariablesQueryUserMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryUserMin._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryUserMin<TRes>
    implements CopyWithVariablesQueryUserMin<TRes> {
  _CopyWithStubImplVariablesQueryUserMin(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class QueryUserMin {
  QueryUserMin({
    this.User,
    this.$__typename = 'Query',
  });

  factory QueryUserMin.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return QueryUserMin(
      User: l$User == null
          ? null
          : FragmentUserMin.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserMin? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserMin || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtensionQueryUserMin on QueryUserMin {
  CopyWithQueryUserMin<QueryUserMin> get copyWith => CopyWithQueryUserMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserMin<TRes> {
  factory CopyWithQueryUserMin(
    QueryUserMin instance,
    TRes Function(QueryUserMin) then,
  ) = _CopyWithImplQueryUserMin;

  factory CopyWithQueryUserMin.stub(TRes res) = _CopyWithStubImplQueryUserMin;

  TRes call({
    FragmentUserMin? User,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get User;
}

class _CopyWithImplQueryUserMin<TRes> implements CopyWithQueryUserMin<TRes> {
  _CopyWithImplQueryUserMin(
    this._instance,
    this._then,
  );

  final QueryUserMin _instance;

  final TRes Function(QueryUserMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserMin(
        User: User == _undefined ? _instance.User : (User as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMin<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImplQueryUserMin<TRes>
    implements CopyWithQueryUserMin<TRes> {
  _CopyWithStubImplQueryUserMin(this._res);

  TRes _res;

  call({
    FragmentUserMin? User,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get User => CopyWithFragmentUserMin.stub(_res);
}

const documentNodeQueryUserMin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserMin'),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
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
  fragmentDefinitionUserMin,
]);

class QueryViewer {
  QueryViewer({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory QueryViewer.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return QueryViewer(
      Viewer: l$Viewer == null
          ? null
          : FragmentUserMin.fromJson((l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserMin? Viewer;

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
    if (other is! QueryViewer || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryViewer on QueryViewer {
  CopyWithQueryViewer<QueryViewer> get copyWith => CopyWithQueryViewer(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryViewer<TRes> {
  factory CopyWithQueryViewer(
    QueryViewer instance,
    TRes Function(QueryViewer) then,
  ) = _CopyWithImplQueryViewer;

  factory CopyWithQueryViewer.stub(TRes res) = _CopyWithStubImplQueryViewer;

  TRes call({
    FragmentUserMin? Viewer,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get Viewer;
}

class _CopyWithImplQueryViewer<TRes> implements CopyWithQueryViewer<TRes> {
  _CopyWithImplQueryViewer(
    this._instance,
    this._then,
  );

  final QueryViewer _instance;

  final TRes Function(QueryViewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryViewer(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMin<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImplQueryViewer<TRes> implements CopyWithQueryViewer<TRes> {
  _CopyWithStubImplQueryViewer(this._res);

  TRes _res;

  call({
    FragmentUserMin? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get Viewer =>
      CopyWithFragmentUserMin.stub(_res);
}

const documentNodeQueryViewer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Viewer'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
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
  fragmentDefinitionUserMin,
]);

class VariablesQueryUserStatisticsMin {
  factory VariablesQueryUserStatisticsMin({
    int? id,
    String? search,
  }) =>
      VariablesQueryUserStatisticsMin._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  VariablesQueryUserStatisticsMin._(this._$data);

  factory VariablesQueryUserStatisticsMin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryUserStatisticsMin._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWithVariablesQueryUserStatisticsMin<VariablesQueryUserStatisticsMin>
      get copyWith => CopyWithVariablesQueryUserStatisticsMin(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryUserStatisticsMin ||
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
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUserStatisticsMin<TRes> {
  factory CopyWithVariablesQueryUserStatisticsMin(
    VariablesQueryUserStatisticsMin instance,
    TRes Function(VariablesQueryUserStatisticsMin) then,
  ) = _CopyWithImplVariablesQueryUserStatisticsMin;

  factory CopyWithVariablesQueryUserStatisticsMin.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUserStatisticsMin;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImplVariablesQueryUserStatisticsMin<TRes>
    implements CopyWithVariablesQueryUserStatisticsMin<TRes> {
  _CopyWithImplVariablesQueryUserStatisticsMin(
    this._instance,
    this._then,
  );

  final VariablesQueryUserStatisticsMin _instance;

  final TRes Function(VariablesQueryUserStatisticsMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryUserStatisticsMin._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryUserStatisticsMin<TRes>
    implements CopyWithVariablesQueryUserStatisticsMin<TRes> {
  _CopyWithStubImplVariablesQueryUserStatisticsMin(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class QueryUserStatisticsMin {
  QueryUserStatisticsMin({
    this.User,
    this.$__typename = 'Query',
  });

  factory QueryUserStatisticsMin.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return QueryUserStatisticsMin(
      User: l$User == null
          ? null
          : QueryUserStatisticsMinUser.fromJson(
              (l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserStatisticsMinUser? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserStatisticsMin || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtensionQueryUserStatisticsMin on QueryUserStatisticsMin {
  CopyWithQueryUserStatisticsMin<QueryUserStatisticsMin> get copyWith =>
      CopyWithQueryUserStatisticsMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserStatisticsMin<TRes> {
  factory CopyWithQueryUserStatisticsMin(
    QueryUserStatisticsMin instance,
    TRes Function(QueryUserStatisticsMin) then,
  ) = _CopyWithImplQueryUserStatisticsMin;

  factory CopyWithQueryUserStatisticsMin.stub(TRes res) =
      _CopyWithStubImplQueryUserStatisticsMin;

  TRes call({
    QueryUserStatisticsMinUser? User,
    String? $__typename,
  });
  CopyWithQueryUserStatisticsMinUser<TRes> get User;
}

class _CopyWithImplQueryUserStatisticsMin<TRes>
    implements CopyWithQueryUserStatisticsMin<TRes> {
  _CopyWithImplQueryUserStatisticsMin(
    this._instance,
    this._then,
  );

  final QueryUserStatisticsMin _instance;

  final TRes Function(QueryUserStatisticsMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserStatisticsMin(
        User: User == _undefined
            ? _instance.User
            : (User as QueryUserStatisticsMinUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserStatisticsMinUser<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWithQueryUserStatisticsMinUser.stub(_then(_instance))
        : CopyWithQueryUserStatisticsMinUser(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImplQueryUserStatisticsMin<TRes>
    implements CopyWithQueryUserStatisticsMin<TRes> {
  _CopyWithStubImplQueryUserStatisticsMin(this._res);

  TRes _res;

  call({
    QueryUserStatisticsMinUser? User,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserStatisticsMinUser<TRes> get User =>
      CopyWithQueryUserStatisticsMinUser.stub(_res);
}

const documentNodeQueryUserStatisticsMin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserStatisticsMin'),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'statistics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStatistics'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStatistics'),
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
  fragmentDefinitionUserStatistics,
]);

class QueryUserStatisticsMinUser {
  QueryUserStatisticsMinUser({
    this.statistics,
    this.$__typename = 'User',
  });

  factory QueryUserStatisticsMinUser.fromJson(Map<String, dynamic> json) {
    final l$statistics = json['statistics'];
    final l$$__typename = json['__typename'];
    return QueryUserStatisticsMinUser(
      statistics: l$statistics == null
          ? null
          : QueryUserStatisticsMinUserstatistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserStatisticsMinUserstatistics? statistics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$statistics = statistics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$statistics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserStatisticsMinUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
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

extension UtilityExtensionQueryUserStatisticsMinUser
    on QueryUserStatisticsMinUser {
  CopyWithQueryUserStatisticsMinUser<QueryUserStatisticsMinUser> get copyWith =>
      CopyWithQueryUserStatisticsMinUser(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserStatisticsMinUser<TRes> {
  factory CopyWithQueryUserStatisticsMinUser(
    QueryUserStatisticsMinUser instance,
    TRes Function(QueryUserStatisticsMinUser) then,
  ) = _CopyWithImplQueryUserStatisticsMinUser;

  factory CopyWithQueryUserStatisticsMinUser.stub(TRes res) =
      _CopyWithStubImplQueryUserStatisticsMinUser;

  TRes call({
    QueryUserStatisticsMinUserstatistics? statistics,
    String? $__typename,
  });
  CopyWithQueryUserStatisticsMinUserstatistics<TRes> get statistics;
}

class _CopyWithImplQueryUserStatisticsMinUser<TRes>
    implements CopyWithQueryUserStatisticsMinUser<TRes> {
  _CopyWithImplQueryUserStatisticsMinUser(
    this._instance,
    this._then,
  );

  final QueryUserStatisticsMinUser _instance;

  final TRes Function(QueryUserStatisticsMinUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? statistics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserStatisticsMinUser(
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as QueryUserStatisticsMinUserstatistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserStatisticsMinUserstatistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWithQueryUserStatisticsMinUserstatistics.stub(_then(_instance))
        : CopyWithQueryUserStatisticsMinUserstatistics(
            local$statistics, (e) => call(statistics: e));
  }
}

class _CopyWithStubImplQueryUserStatisticsMinUser<TRes>
    implements CopyWithQueryUserStatisticsMinUser<TRes> {
  _CopyWithStubImplQueryUserStatisticsMinUser(this._res);

  TRes _res;

  call({
    QueryUserStatisticsMinUserstatistics? statistics,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserStatisticsMinUserstatistics<TRes> get statistics =>
      CopyWithQueryUserStatisticsMinUserstatistics.stub(_res);
}

class QueryUserStatisticsMinUserstatistics {
  QueryUserStatisticsMinUserstatistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory QueryUserStatisticsMinUserstatistics.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return QueryUserStatisticsMinUserstatistics(
      anime: l$anime == null
          ? null
          : FragmentUserStatistics.fromJson((l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : FragmentUserStatistics.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserStatistics? anime;

  final FragmentUserStatistics? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryUserStatisticsMinUserstatistics ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtensionQueryUserStatisticsMinUserstatistics
    on QueryUserStatisticsMinUserstatistics {
  CopyWithQueryUserStatisticsMinUserstatistics<
          QueryUserStatisticsMinUserstatistics>
      get copyWith => CopyWithQueryUserStatisticsMinUserstatistics(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserStatisticsMinUserstatistics<TRes> {
  factory CopyWithQueryUserStatisticsMinUserstatistics(
    QueryUserStatisticsMinUserstatistics instance,
    TRes Function(QueryUserStatisticsMinUserstatistics) then,
  ) = _CopyWithImplQueryUserStatisticsMinUserstatistics;

  factory CopyWithQueryUserStatisticsMinUserstatistics.stub(TRes res) =
      _CopyWithStubImplQueryUserStatisticsMinUserstatistics;

  TRes call({
    FragmentUserStatistics? anime,
    FragmentUserStatistics? manga,
    String? $__typename,
  });
  CopyWithFragmentUserStatistics<TRes> get anime;
  CopyWithFragmentUserStatistics<TRes> get manga;
}

class _CopyWithImplQueryUserStatisticsMinUserstatistics<TRes>
    implements CopyWithQueryUserStatisticsMinUserstatistics<TRes> {
  _CopyWithImplQueryUserStatisticsMinUserstatistics(
    this._instance,
    this._then,
  );

  final QueryUserStatisticsMinUserstatistics _instance;

  final TRes Function(QueryUserStatisticsMinUserstatistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserStatisticsMinUserstatistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as FragmentUserStatistics?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as FragmentUserStatistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserStatistics<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWithFragmentUserStatistics.stub(_then(_instance))
        : CopyWithFragmentUserStatistics(local$anime, (e) => call(anime: e));
  }

  CopyWithFragmentUserStatistics<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWithFragmentUserStatistics.stub(_then(_instance))
        : CopyWithFragmentUserStatistics(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImplQueryUserStatisticsMinUserstatistics<TRes>
    implements CopyWithQueryUserStatisticsMinUserstatistics<TRes> {
  _CopyWithStubImplQueryUserStatisticsMinUserstatistics(this._res);

  TRes _res;

  call({
    FragmentUserStatistics? anime,
    FragmentUserStatistics? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserStatistics<TRes> get anime =>
      CopyWithFragmentUserStatistics.stub(_res);

  CopyWithFragmentUserStatistics<TRes> get manga =>
      CopyWithFragmentUserStatistics.stub(_res);
}
