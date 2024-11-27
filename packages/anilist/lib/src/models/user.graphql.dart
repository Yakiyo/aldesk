import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentUserMinimalFrag {
  FragmentUserMinimalFrag({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory FragmentUserMinimalFrag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return FragmentUserMinimalFrag(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : FragmentUserMinimalFragavatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final FragmentUserMinimalFragavatar? avatar;

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
    if (!(other is FragmentUserMinimalFrag) ||
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

extension UtilityExtensionFragmentUserMinimalFrag on FragmentUserMinimalFrag {
  CopyWithFragmentUserMinimalFrag<FragmentUserMinimalFrag> get copyWith =>
      CopyWithFragmentUserMinimalFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserMinimalFrag<TRes> {
  factory CopyWithFragmentUserMinimalFrag(
    FragmentUserMinimalFrag instance,
    TRes Function(FragmentUserMinimalFrag) then,
  ) = _CopyWithImplFragmentUserMinimalFrag;

  factory CopyWithFragmentUserMinimalFrag.stub(TRes res) =
      _CopyWithStubImplFragmentUserMinimalFrag;

  TRes call({
    int? id,
    String? name,
    FragmentUserMinimalFragavatar? avatar,
    String? $__typename,
  });
  CopyWithFragmentUserMinimalFragavatar<TRes> get avatar;
}

class _CopyWithImplFragmentUserMinimalFrag<TRes>
    implements CopyWithFragmentUserMinimalFrag<TRes> {
  _CopyWithImplFragmentUserMinimalFrag(
    this._instance,
    this._then,
  );

  final FragmentUserMinimalFrag _instance;

  final TRes Function(FragmentUserMinimalFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMinimalFrag(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as FragmentUserMinimalFragavatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinimalFragavatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithFragmentUserMinimalFragavatar.stub(_then(_instance))
        : CopyWithFragmentUserMinimalFragavatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplFragmentUserMinimalFrag<TRes>
    implements CopyWithFragmentUserMinimalFrag<TRes> {
  _CopyWithStubImplFragmentUserMinimalFrag(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    FragmentUserMinimalFragavatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinimalFragavatar<TRes> get avatar =>
      CopyWithFragmentUserMinimalFragavatar.stub(_res);
}

const fragmentDefinitionUserMinimalFrag = FragmentDefinitionNode(
  name: NameNode(value: 'UserMinimalFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
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
          name: NameNode(value: 'medium'),
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
const documentNodeFragmentUserMinimalFrag = DocumentNode(definitions: [
  fragmentDefinitionUserMinimalFrag,
]);

class FragmentUserMinimalFragavatar {
  FragmentUserMinimalFragavatar({
    this.large,
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory FragmentUserMinimalFragavatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return FragmentUserMinimalFragavatar(
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
    if (!(other is FragmentUserMinimalFragavatar) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserMinimalFragavatar
    on FragmentUserMinimalFragavatar {
  CopyWithFragmentUserMinimalFragavatar<FragmentUserMinimalFragavatar>
      get copyWith => CopyWithFragmentUserMinimalFragavatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserMinimalFragavatar<TRes> {
  factory CopyWithFragmentUserMinimalFragavatar(
    FragmentUserMinimalFragavatar instance,
    TRes Function(FragmentUserMinimalFragavatar) then,
  ) = _CopyWithImplFragmentUserMinimalFragavatar;

  factory CopyWithFragmentUserMinimalFragavatar.stub(TRes res) =
      _CopyWithStubImplFragmentUserMinimalFragavatar;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserMinimalFragavatar<TRes>
    implements CopyWithFragmentUserMinimalFragavatar<TRes> {
  _CopyWithImplFragmentUserMinimalFragavatar(
    this._instance,
    this._then,
  );

  final FragmentUserMinimalFragavatar _instance;

  final TRes Function(FragmentUserMinimalFragavatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMinimalFragavatar(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentUserMinimalFragavatar<TRes>
    implements CopyWithFragmentUserMinimalFragavatar<TRes> {
  _CopyWithStubImplFragmentUserMinimalFragavatar(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class FragmentUserSocialsFrag {
  FragmentUserSocialsFrag({
    this.isFollowing,
    this.isFollower,
    this.isBlocked,
    this.$__typename = 'User',
  });

  factory FragmentUserSocialsFrag.fromJson(Map<String, dynamic> json) {
    final l$isFollowing = json['isFollowing'];
    final l$isFollower = json['isFollower'];
    final l$isBlocked = json['isBlocked'];
    final l$$__typename = json['__typename'];
    return FragmentUserSocialsFrag(
      isFollowing: (l$isFollowing as bool?),
      isFollower: (l$isFollower as bool?),
      isBlocked: (l$isBlocked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isFollowing;

  final bool? isFollower;

  final bool? isBlocked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$isFollower = isFollower;
    _resultData['isFollower'] = l$isFollower;
    final l$isBlocked = isBlocked;
    _resultData['isBlocked'] = l$isBlocked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isFollowing = isFollowing;
    final l$isFollower = isFollower;
    final l$isBlocked = isBlocked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isFollowing,
      l$isFollower,
      l$isBlocked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentUserSocialsFrag) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentUserSocialsFrag on FragmentUserSocialsFrag {
  CopyWithFragmentUserSocialsFrag<FragmentUserSocialsFrag> get copyWith =>
      CopyWithFragmentUserSocialsFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSocialsFrag<TRes> {
  factory CopyWithFragmentUserSocialsFrag(
    FragmentUserSocialsFrag instance,
    TRes Function(FragmentUserSocialsFrag) then,
  ) = _CopyWithImplFragmentUserSocialsFrag;

  factory CopyWithFragmentUserSocialsFrag.stub(TRes res) =
      _CopyWithStubImplFragmentUserSocialsFrag;

  TRes call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSocialsFrag<TRes>
    implements CopyWithFragmentUserSocialsFrag<TRes> {
  _CopyWithImplFragmentUserSocialsFrag(
    this._instance,
    this._then,
  );

  final FragmentUserSocialsFrag _instance;

  final TRes Function(FragmentUserSocialsFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFollowing = _undefined,
    Object? isFollower = _undefined,
    Object? isBlocked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSocialsFrag(
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        isFollower: isFollower == _undefined
            ? _instance.isFollower
            : (isFollower as bool?),
        isBlocked: isBlocked == _undefined
            ? _instance.isBlocked
            : (isBlocked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentUserSocialsFrag<TRes>
    implements CopyWithFragmentUserSocialsFrag<TRes> {
  _CopyWithStubImplFragmentUserSocialsFrag(this._res);

  TRes _res;

  call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserSocialsFrag = FragmentDefinitionNode(
  name: NameNode(value: 'UserSocialsFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'isFollowing'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isFollower'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isBlocked'),
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
);
const documentNodeFragmentUserSocialsFrag = DocumentNode(definitions: [
  fragmentDefinitionUserSocialsFrag,
]);

class FragmentUserSettingsFrag {
  FragmentUserSettingsFrag({
    this.options,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory FragmentUserSettingsFrag.fromJson(Map<String, dynamic> json) {
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFrag(
      options: l$options == null
          ? null
          : FragmentUserSettingsFragoptions.fromJson(
              (l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : FragmentUserSettingsFragmediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserSettingsFragoptions? options;

  final FragmentUserSettingsFragmediaListOptions? mediaListOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$options = options;
    _resultData['options'] = l$options?.toJson();
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$options = options;
    final l$mediaListOptions = mediaListOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$options,
      l$mediaListOptions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentUserSettingsFrag) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentUserSettingsFrag on FragmentUserSettingsFrag {
  CopyWithFragmentUserSettingsFrag<FragmentUserSettingsFrag> get copyWith =>
      CopyWithFragmentUserSettingsFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSettingsFrag<TRes> {
  factory CopyWithFragmentUserSettingsFrag(
    FragmentUserSettingsFrag instance,
    TRes Function(FragmentUserSettingsFrag) then,
  ) = _CopyWithImplFragmentUserSettingsFrag;

  factory CopyWithFragmentUserSettingsFrag.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsFrag;

  TRes call({
    FragmentUserSettingsFragoptions? options,
    FragmentUserSettingsFragmediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsFragoptions<TRes> get options;
  CopyWithFragmentUserSettingsFragmediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImplFragmentUserSettingsFrag<TRes>
    implements CopyWithFragmentUserSettingsFrag<TRes> {
  _CopyWithImplFragmentUserSettingsFrag(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFrag _instance;

  final TRes Function(FragmentUserSettingsFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFrag(
        options: options == _undefined
            ? _instance.options
            : (options as FragmentUserSettingsFragoptions?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as FragmentUserSettingsFragmediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsFragoptions<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWithFragmentUserSettingsFragoptions.stub(_then(_instance))
        : CopyWithFragmentUserSettingsFragoptions(
            local$options, (e) => call(options: e));
  }

  CopyWithFragmentUserSettingsFragmediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWithFragmentUserSettingsFragmediaListOptions.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsFragmediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImplFragmentUserSettingsFrag<TRes>
    implements CopyWithFragmentUserSettingsFrag<TRes> {
  _CopyWithStubImplFragmentUserSettingsFrag(this._res);

  TRes _res;

  call({
    FragmentUserSettingsFragoptions? options,
    FragmentUserSettingsFragmediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsFragoptions<TRes> get options =>
      CopyWithFragmentUserSettingsFragoptions.stub(_res);

  CopyWithFragmentUserSettingsFragmediaListOptions<TRes> get mediaListOptions =>
      CopyWithFragmentUserSettingsFragmediaListOptions.stub(_res);
}

const fragmentDefinitionUserSettingsFrag = FragmentDefinitionNode(
  name: NameNode(value: 'UserSettingsFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'options'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'titleLanguage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'displayAdultContent'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'airingNotifications'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'profileColor'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'timezone'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'activityMergeTime'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'staffNameLanguage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'restrictMessagesToFollowing'),
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
      name: NameNode(value: 'mediaListOptions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'scoreFormat'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'rowOrder'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'animeList'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'sectionOrder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'splitCompletedSectionByFormat'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'customLists'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'advancedScoring'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'advancedScoringEnabled'),
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
          name: NameNode(value: 'mangaList'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'sectionOrder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'splitCompletedSectionByFormat'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'customLists'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'advancedScoring'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'advancedScoringEnabled'),
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
const documentNodeFragmentUserSettingsFrag = DocumentNode(definitions: [
  fragmentDefinitionUserSettingsFrag,
]);

class FragmentUserSettingsFragoptions {
  FragmentUserSettingsFragoptions({
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

  factory FragmentUserSettingsFragoptions.fromJson(Map<String, dynamic> json) {
    final l$titleLanguage = json['titleLanguage'];
    final l$displayAdultContent = json['displayAdultContent'];
    final l$airingNotifications = json['airingNotifications'];
    final l$profileColor = json['profileColor'];
    final l$timezone = json['timezone'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFragoptions(
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
    if (!(other is FragmentUserSettingsFragoptions) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserSettingsFragoptions
    on FragmentUserSettingsFragoptions {
  CopyWithFragmentUserSettingsFragoptions<FragmentUserSettingsFragoptions>
      get copyWith => CopyWithFragmentUserSettingsFragoptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFragoptions<TRes> {
  factory CopyWithFragmentUserSettingsFragoptions(
    FragmentUserSettingsFragoptions instance,
    TRes Function(FragmentUserSettingsFragoptions) then,
  ) = _CopyWithImplFragmentUserSettingsFragoptions;

  factory CopyWithFragmentUserSettingsFragoptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsFragoptions;

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

class _CopyWithImplFragmentUserSettingsFragoptions<TRes>
    implements CopyWithFragmentUserSettingsFragoptions<TRes> {
  _CopyWithImplFragmentUserSettingsFragoptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFragoptions _instance;

  final TRes Function(FragmentUserSettingsFragoptions) _then;

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
      _then(FragmentUserSettingsFragoptions(
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

class _CopyWithStubImplFragmentUserSettingsFragoptions<TRes>
    implements CopyWithFragmentUserSettingsFragoptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsFragoptions(this._res);

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

class FragmentUserSettingsFragmediaListOptions {
  FragmentUserSettingsFragmediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory FragmentUserSettingsFragmediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFragmediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJsonEnumScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : FragmentUserSettingsFragmediaListOptionsanimeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : FragmentUserSettingsFragmediaListOptionsmangaList.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumScoreFormat? scoreFormat;

  final String? rowOrder;

  final FragmentUserSettingsFragmediaListOptionsanimeList? animeList;

  final FragmentUserSettingsFragmediaListOptionsmangaList? mangaList;

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
    if (!(other is FragmentUserSettingsFragmediaListOptions) ||
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

extension UtilityExtensionFragmentUserSettingsFragmediaListOptions
    on FragmentUserSettingsFragmediaListOptions {
  CopyWithFragmentUserSettingsFragmediaListOptions<
          FragmentUserSettingsFragmediaListOptions>
      get copyWith => CopyWithFragmentUserSettingsFragmediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFragmediaListOptions<TRes> {
  factory CopyWithFragmentUserSettingsFragmediaListOptions(
    FragmentUserSettingsFragmediaListOptions instance,
    TRes Function(FragmentUserSettingsFragmediaListOptions) then,
  ) = _CopyWithImplFragmentUserSettingsFragmediaListOptions;

  factory CopyWithFragmentUserSettingsFragmediaListOptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsFragmediaListOptions;

  TRes call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsFragmediaListOptionsanimeList? animeList,
    FragmentUserSettingsFragmediaListOptionsmangaList? mangaList,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes> get animeList;
  CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes> get mangaList;
}

class _CopyWithImplFragmentUserSettingsFragmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptions<TRes> {
  _CopyWithImplFragmentUserSettingsFragmediaListOptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFragmediaListOptions _instance;

  final TRes Function(FragmentUserSettingsFragmediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFragmediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as EnumScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as FragmentUserSettingsFragmediaListOptionsanimeList?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as FragmentUserSettingsFragmediaListOptionsmangaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes>
      get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWithFragmentUserSettingsFragmediaListOptionsanimeList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsFragmediaListOptionsanimeList(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes>
      get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWithFragmentUserSettingsFragmediaListOptionsmangaList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsFragmediaListOptionsmangaList(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImplFragmentUserSettingsFragmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsFragmediaListOptions(this._res);

  TRes _res;

  call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsFragmediaListOptionsanimeList? animeList,
    FragmentUserSettingsFragmediaListOptionsmangaList? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes>
      get animeList =>
          CopyWithFragmentUserSettingsFragmediaListOptionsanimeList.stub(_res);

  CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes>
      get mangaList =>
          CopyWithFragmentUserSettingsFragmediaListOptionsmangaList.stub(_res);
}

class FragmentUserSettingsFragmediaListOptionsanimeList {
  FragmentUserSettingsFragmediaListOptionsanimeList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsFragmediaListOptionsanimeList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFragmediaListOptionsanimeList(
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
    if (!(other is FragmentUserSettingsFragmediaListOptionsanimeList) ||
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

extension UtilityExtensionFragmentUserSettingsFragmediaListOptionsanimeList
    on FragmentUserSettingsFragmediaListOptionsanimeList {
  CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<
          FragmentUserSettingsFragmediaListOptionsanimeList>
      get copyWith => CopyWithFragmentUserSettingsFragmediaListOptionsanimeList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes> {
  factory CopyWithFragmentUserSettingsFragmediaListOptionsanimeList(
    FragmentUserSettingsFragmediaListOptionsanimeList instance,
    TRes Function(FragmentUserSettingsFragmediaListOptionsanimeList) then,
  ) = _CopyWithImplFragmentUserSettingsFragmediaListOptionsanimeList;

  factory CopyWithFragmentUserSettingsFragmediaListOptionsanimeList.stub(
          TRes res) =
      _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsanimeList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsFragmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes> {
  _CopyWithImplFragmentUserSettingsFragmediaListOptionsanimeList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFragmediaListOptionsanimeList _instance;

  final TRes Function(FragmentUserSettingsFragmediaListOptionsanimeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFragmediaListOptionsanimeList(
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

class _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptionsanimeList<TRes> {
  _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsanimeList(this._res);

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

class FragmentUserSettingsFragmediaListOptionsmangaList {
  FragmentUserSettingsFragmediaListOptionsmangaList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsFragmediaListOptionsmangaList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFragmediaListOptionsmangaList(
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
    if (!(other is FragmentUserSettingsFragmediaListOptionsmangaList) ||
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

extension UtilityExtensionFragmentUserSettingsFragmediaListOptionsmangaList
    on FragmentUserSettingsFragmediaListOptionsmangaList {
  CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<
          FragmentUserSettingsFragmediaListOptionsmangaList>
      get copyWith => CopyWithFragmentUserSettingsFragmediaListOptionsmangaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes> {
  factory CopyWithFragmentUserSettingsFragmediaListOptionsmangaList(
    FragmentUserSettingsFragmediaListOptionsmangaList instance,
    TRes Function(FragmentUserSettingsFragmediaListOptionsmangaList) then,
  ) = _CopyWithImplFragmentUserSettingsFragmediaListOptionsmangaList;

  factory CopyWithFragmentUserSettingsFragmediaListOptionsmangaList.stub(
          TRes res) =
      _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsmangaList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsFragmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes> {
  _CopyWithImplFragmentUserSettingsFragmediaListOptionsmangaList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFragmediaListOptionsmangaList _instance;

  final TRes Function(FragmentUserSettingsFragmediaListOptionsmangaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFragmediaListOptionsmangaList(
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

class _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsFragmediaListOptionsmangaList<TRes> {
  _CopyWithStubImplFragmentUserSettingsFragmediaListOptionsmangaList(this._res);

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

class FragmentUserStatisticsMinFrag {
  FragmentUserStatisticsMinFrag({
    required this.count,
    required this.meanScore,
    required this.standardDeviation,
    required this.minutesWatched,
    required this.episodesWatched,
    required this.chaptersRead,
    required this.volumesRead,
    this.genres,
    this.$__typename = 'UserStatistics',
  });

  factory FragmentUserStatisticsMinFrag.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$minutesWatched = json['minutesWatched'];
    final l$episodesWatched = json['episodesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$genres = json['genres'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatisticsMinFrag(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      episodesWatched: (l$episodesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      genres: (l$genres as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentUserStatisticsMinFraggenres.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final double standardDeviation;

  final int minutesWatched;

  final int episodesWatched;

  final int chaptersRead;

  final int volumesRead;

  final List<FragmentUserStatisticsMinFraggenres?>? genres;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$minutesWatched = minutesWatched;
    final l$episodesWatched = episodesWatched;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$genres = genres;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$standardDeviation,
      l$minutesWatched,
      l$episodesWatched,
      l$chaptersRead,
      l$volumesRead,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentUserStatisticsMinFrag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$episodesWatched = episodesWatched;
    final lOther$episodesWatched = other.episodesWatched;
    if (l$episodesWatched != lOther$episodesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$volumesRead = volumesRead;
    final lOther$volumesRead = other.volumesRead;
    if (l$volumesRead != lOther$volumesRead) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentUserStatisticsMinFrag
    on FragmentUserStatisticsMinFrag {
  CopyWithFragmentUserStatisticsMinFrag<FragmentUserStatisticsMinFrag>
      get copyWith => CopyWithFragmentUserStatisticsMinFrag(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserStatisticsMinFrag<TRes> {
  factory CopyWithFragmentUserStatisticsMinFrag(
    FragmentUserStatisticsMinFrag instance,
    TRes Function(FragmentUserStatisticsMinFrag) then,
  ) = _CopyWithImplFragmentUserStatisticsMinFrag;

  factory CopyWithFragmentUserStatisticsMinFrag.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatisticsMinFrag;

  TRes call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsMinFraggenres?>? genres,
    String? $__typename,
  });
  TRes genres(
      Iterable<FragmentUserStatisticsMinFraggenres?>? Function(
              Iterable<
                  CopyWithFragmentUserStatisticsMinFraggenres<
                      FragmentUserStatisticsMinFraggenres>?>?)
          _fn);
}

class _CopyWithImplFragmentUserStatisticsMinFrag<TRes>
    implements CopyWithFragmentUserStatisticsMinFrag<TRes> {
  _CopyWithImplFragmentUserStatisticsMinFrag(
    this._instance,
    this._then,
  );

  final FragmentUserStatisticsMinFrag _instance;

  final TRes Function(FragmentUserStatisticsMinFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? minutesWatched = _undefined,
    Object? episodesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? genres = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserStatisticsMinFrag(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        episodesWatched:
            episodesWatched == _undefined || episodesWatched == null
                ? _instance.episodesWatched
                : (episodesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<FragmentUserStatisticsMinFraggenres?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes genres(
          Iterable<FragmentUserStatisticsMinFraggenres?>? Function(
                  Iterable<
                      CopyWithFragmentUserStatisticsMinFraggenres<
                          FragmentUserStatisticsMinFraggenres>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWithFragmentUserStatisticsMinFraggenres(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplFragmentUserStatisticsMinFrag<TRes>
    implements CopyWithFragmentUserStatisticsMinFrag<TRes> {
  _CopyWithStubImplFragmentUserStatisticsMinFrag(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsMinFraggenres?>? genres,
    String? $__typename,
  }) =>
      _res;

  genres(_fn) => _res;
}

const fragmentDefinitionUserStatisticsMinFrag = FragmentDefinitionNode(
  name: NameNode(value: 'UserStatisticsMinFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserStatistics'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'count'),
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
      name: NameNode(value: 'standardDeviation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'minutesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chaptersRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'volumesRead'),
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
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'genre'),
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
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
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
const documentNodeFragmentUserStatisticsMinFrag = DocumentNode(definitions: [
  fragmentDefinitionUserStatisticsMinFrag,
]);

class FragmentUserStatisticsMinFraggenres {
  FragmentUserStatisticsMinFraggenres({
    required this.count,
    this.genre,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    this.$__typename = 'UserGenreStatistic',
  });

  factory FragmentUserStatisticsMinFraggenres.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$genre = json['genre'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatisticsMinFraggenres(
      count: (l$count as int),
      genre: (l$genre as String?),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String? genre;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$genre = genre;
    _resultData['genre'] = l$genre;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$genre = genre;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$genre,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentUserStatisticsMinFraggenres) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (l$genre != lOther$genre) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
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

extension UtilityExtensionFragmentUserStatisticsMinFraggenres
    on FragmentUserStatisticsMinFraggenres {
  CopyWithFragmentUserStatisticsMinFraggenres<
          FragmentUserStatisticsMinFraggenres>
      get copyWith => CopyWithFragmentUserStatisticsMinFraggenres(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserStatisticsMinFraggenres<TRes> {
  factory CopyWithFragmentUserStatisticsMinFraggenres(
    FragmentUserStatisticsMinFraggenres instance,
    TRes Function(FragmentUserStatisticsMinFraggenres) then,
  ) = _CopyWithImplFragmentUserStatisticsMinFraggenres;

  factory CopyWithFragmentUserStatisticsMinFraggenres.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatisticsMinFraggenres;

  TRes call({
    int? count,
    String? genre,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserStatisticsMinFraggenres<TRes>
    implements CopyWithFragmentUserStatisticsMinFraggenres<TRes> {
  _CopyWithImplFragmentUserStatisticsMinFraggenres(
    this._instance,
    this._then,
  );

  final FragmentUserStatisticsMinFraggenres _instance;

  final TRes Function(FragmentUserStatisticsMinFraggenres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? genre = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserStatisticsMinFraggenres(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        genre: genre == _undefined ? _instance.genre : (genre as String?),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentUserStatisticsMinFraggenres<TRes>
    implements CopyWithFragmentUserStatisticsMinFraggenres<TRes> {
  _CopyWithStubImplFragmentUserStatisticsMinFraggenres(this._res);

  TRes _res;

  call({
    int? count,
    String? genre,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    String? $__typename,
  }) =>
      _res;
}

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
    if (!(other is VariablesQueryUser) || runtimeType != other.runtimeType) {
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
    if (!(other is QueryUser) || runtimeType != other.runtimeType) {
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
            name: NameNode(value: 'UserMinimalFrag'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserSocialsFrag'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'UserSettingsFrag'),
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
  fragmentDefinitionUserMinimalFrag,
  fragmentDefinitionUserSocialsFrag,
  fragmentDefinitionUserSettingsFrag,
]);

class QueryUserUser
    implements
        FragmentUserMinimalFrag,
        FragmentUserSocialsFrag,
        FragmentUserSettingsFrag {
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
    if (!(other is QueryUserUser) || runtimeType != other.runtimeType) {
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

class QueryUserUseravatar implements FragmentUserMinimalFragavatar {
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
    if (!(other is QueryUserUseravatar) || runtimeType != other.runtimeType) {
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

class QueryUserUseroptions implements FragmentUserSettingsFragoptions {
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
    if (!(other is QueryUserUseroptions) || runtimeType != other.runtimeType) {
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
    implements FragmentUserSettingsFragmediaListOptions {
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
    if (!(other is QueryUserUsermediaListOptions) ||
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
    implements FragmentUserSettingsFragmediaListOptionsanimeList {
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
    if (!(other is QueryUserUsermediaListOptionsanimeList) ||
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
    implements FragmentUserSettingsFragmediaListOptionsmangaList {
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
    if (!(other is QueryUserUsermediaListOptionsmangaList) ||
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
          : FragmentUserMinimalFrag.fromJson(
              (l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserMinimalFrag? Viewer;

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
    if (!(other is QueryViewer) || runtimeType != other.runtimeType) {
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
    FragmentUserMinimalFrag? Viewer,
    String? $__typename,
  });
  CopyWithFragmentUserMinimalFrag<TRes> get Viewer;
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
            : (Viewer as FragmentUserMinimalFrag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinimalFrag<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWithFragmentUserMinimalFrag.stub(_then(_instance))
        : CopyWithFragmentUserMinimalFrag(local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImplQueryViewer<TRes> implements CopyWithQueryViewer<TRes> {
  _CopyWithStubImplQueryViewer(this._res);

  TRes _res;

  call({
    FragmentUserMinimalFrag? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinimalFrag<TRes> get Viewer =>
      CopyWithFragmentUserMinimalFrag.stub(_res);
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
            name: NameNode(value: 'UserMinimalFrag'),
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
  fragmentDefinitionUserMinimalFrag,
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
    if (!(other is VariablesQueryUserStatisticsMin) ||
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
    if (!(other is QueryUserStatisticsMin) ||
        runtimeType != other.runtimeType) {
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
                    name: NameNode(value: 'UserStatisticsMinFrag'),
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
                    name: NameNode(value: 'UserStatisticsMinFrag'),
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
  fragmentDefinitionUserStatisticsMinFrag,
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
    if (!(other is QueryUserStatisticsMinUser) ||
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
          : FragmentUserStatisticsMinFrag.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : FragmentUserStatisticsMinFrag.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserStatisticsMinFrag? anime;

  final FragmentUserStatisticsMinFrag? manga;

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
    if (!(other is QueryUserStatisticsMinUserstatistics) ||
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
    FragmentUserStatisticsMinFrag? anime,
    FragmentUserStatisticsMinFrag? manga,
    String? $__typename,
  });
  CopyWithFragmentUserStatisticsMinFrag<TRes> get anime;
  CopyWithFragmentUserStatisticsMinFrag<TRes> get manga;
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
            : (anime as FragmentUserStatisticsMinFrag?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as FragmentUserStatisticsMinFrag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserStatisticsMinFrag<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWithFragmentUserStatisticsMinFrag.stub(_then(_instance))
        : CopyWithFragmentUserStatisticsMinFrag(
            local$anime, (e) => call(anime: e));
  }

  CopyWithFragmentUserStatisticsMinFrag<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWithFragmentUserStatisticsMinFrag.stub(_then(_instance))
        : CopyWithFragmentUserStatisticsMinFrag(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImplQueryUserStatisticsMinUserstatistics<TRes>
    implements CopyWithQueryUserStatisticsMinUserstatistics<TRes> {
  _CopyWithStubImplQueryUserStatisticsMinUserstatistics(this._res);

  TRes _res;

  call({
    FragmentUserStatisticsMinFrag? anime,
    FragmentUserStatisticsMinFrag? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserStatisticsMinFrag<TRes> get anime =>
      CopyWithFragmentUserStatisticsMinFrag.stub(_res);

  CopyWithFragmentUserStatisticsMinFrag<TRes> get manga =>
      CopyWithFragmentUserStatisticsMinFrag.stub(_res);
}
