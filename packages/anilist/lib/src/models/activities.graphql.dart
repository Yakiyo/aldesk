import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentListActivityFrag {
  FragmentListActivityFrag({
    required this.id,
    this.type,
    this.user,
    this.status,
    required this.createdAt,
    this.progress,
    required this.likeCount,
    required this.replyCount,
    this.isLiked,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory FragmentListActivityFrag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$user = json['user'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$isLiked = json['isLiked'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFrag(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      user: l$user == null
          ? null
          : FragmentListActivityFraguser.fromJson(
              (l$user as Map<String, dynamic>)),
      status: (l$status as String?),
      createdAt: (l$createdAt as int),
      progress: (l$progress as String?),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      isLiked: (l$isLiked as bool?),
      media: l$media == null
          ? null
          : FragmentListActivityFragmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final FragmentListActivityFraguser? user;

  final String? status;

  final int createdAt;

  final String? progress;

  final int likeCount;

  final int replyCount;

  final bool? isLiked;

  final FragmentListActivityFragmedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$user = user;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$isLiked = isLiked;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$user,
      l$status,
      l$createdAt,
      l$progress,
      l$likeCount,
      l$replyCount,
      l$isLiked,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentListActivityFrag) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtensionFragmentListActivityFrag on FragmentListActivityFrag {
  CopyWithFragmentListActivityFrag<FragmentListActivityFrag> get copyWith =>
      CopyWithFragmentListActivityFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentListActivityFrag<TRes> {
  factory CopyWithFragmentListActivityFrag(
    FragmentListActivityFrag instance,
    TRes Function(FragmentListActivityFrag) then,
  ) = _CopyWithImplFragmentListActivityFrag;

  factory CopyWithFragmentListActivityFrag.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFrag;

  TRes call({
    int? id,
    EnumActivityType? type,
    FragmentListActivityFraguser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    FragmentListActivityFragmedia? media,
    String? $__typename,
  });
  CopyWithFragmentListActivityFraguser<TRes> get user;
  CopyWithFragmentListActivityFragmedia<TRes> get media;
}

class _CopyWithImplFragmentListActivityFrag<TRes>
    implements CopyWithFragmentListActivityFrag<TRes> {
  _CopyWithImplFragmentListActivityFrag(
    this._instance,
    this._then,
  );

  final FragmentListActivityFrag _instance;

  final TRes Function(FragmentListActivityFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? isLiked = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFrag(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        user: user == _undefined
            ? _instance.user
            : (user as FragmentListActivityFraguser?),
        status: status == _undefined ? _instance.status : (status as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentListActivityFragmedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentListActivityFraguser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentListActivityFraguser.stub(_then(_instance))
        : CopyWithFragmentListActivityFraguser(
            local$user, (e) => call(user: e));
  }

  CopyWithFragmentListActivityFragmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentListActivityFragmedia.stub(_then(_instance))
        : CopyWithFragmentListActivityFragmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplFragmentListActivityFrag<TRes>
    implements CopyWithFragmentListActivityFrag<TRes> {
  _CopyWithStubImplFragmentListActivityFrag(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    FragmentListActivityFraguser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    FragmentListActivityFragmedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentListActivityFraguser<TRes> get user =>
      CopyWithFragmentListActivityFraguser.stub(_res);

  CopyWithFragmentListActivityFragmedia<TRes> get media =>
      CopyWithFragmentListActivityFragmedia.stub(_res);
}

const fragmentDefinitionListActivityFrag = FragmentDefinitionNode(
  name: NameNode(value: 'ListActivityFrag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ListActivity'),
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
      name: NameNode(value: 'status'),
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
      name: NameNode(value: 'progress'),
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
      name: NameNode(value: 'replyCount'),
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
const documentNodeFragmentListActivityFrag = DocumentNode(definitions: [
  fragmentDefinitionListActivityFrag,
]);

class FragmentListActivityFraguser {
  FragmentListActivityFraguser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory FragmentListActivityFraguser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFraguser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : FragmentListActivityFraguseravatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final FragmentListActivityFraguseravatar? avatar;

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
    if (!(other is FragmentListActivityFraguser) ||
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

extension UtilityExtensionFragmentListActivityFraguser
    on FragmentListActivityFraguser {
  CopyWithFragmentListActivityFraguser<FragmentListActivityFraguser>
      get copyWith => CopyWithFragmentListActivityFraguser(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentListActivityFraguser<TRes> {
  factory CopyWithFragmentListActivityFraguser(
    FragmentListActivityFraguser instance,
    TRes Function(FragmentListActivityFraguser) then,
  ) = _CopyWithImplFragmentListActivityFraguser;

  factory CopyWithFragmentListActivityFraguser.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFraguser;

  TRes call({
    int? id,
    String? name,
    FragmentListActivityFraguseravatar? avatar,
    String? $__typename,
  });
  CopyWithFragmentListActivityFraguseravatar<TRes> get avatar;
}

class _CopyWithImplFragmentListActivityFraguser<TRes>
    implements CopyWithFragmentListActivityFraguser<TRes> {
  _CopyWithImplFragmentListActivityFraguser(
    this._instance,
    this._then,
  );

  final FragmentListActivityFraguser _instance;

  final TRes Function(FragmentListActivityFraguser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFraguser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as FragmentListActivityFraguseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentListActivityFraguseravatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithFragmentListActivityFraguseravatar.stub(_then(_instance))
        : CopyWithFragmentListActivityFraguseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplFragmentListActivityFraguser<TRes>
    implements CopyWithFragmentListActivityFraguser<TRes> {
  _CopyWithStubImplFragmentListActivityFraguser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    FragmentListActivityFraguseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentListActivityFraguseravatar<TRes> get avatar =>
      CopyWithFragmentListActivityFraguseravatar.stub(_res);
}

class FragmentListActivityFraguseravatar {
  FragmentListActivityFraguseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory FragmentListActivityFraguseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFraguseravatar(
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
    if (!(other is FragmentListActivityFraguseravatar) ||
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

extension UtilityExtensionFragmentListActivityFraguseravatar
    on FragmentListActivityFraguseravatar {
  CopyWithFragmentListActivityFraguseravatar<FragmentListActivityFraguseravatar>
      get copyWith => CopyWithFragmentListActivityFraguseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentListActivityFraguseravatar<TRes> {
  factory CopyWithFragmentListActivityFraguseravatar(
    FragmentListActivityFraguseravatar instance,
    TRes Function(FragmentListActivityFraguseravatar) then,
  ) = _CopyWithImplFragmentListActivityFraguseravatar;

  factory CopyWithFragmentListActivityFraguseravatar.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFraguseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplFragmentListActivityFraguseravatar<TRes>
    implements CopyWithFragmentListActivityFraguseravatar<TRes> {
  _CopyWithImplFragmentListActivityFraguseravatar(
    this._instance,
    this._then,
  );

  final FragmentListActivityFraguseravatar _instance;

  final TRes Function(FragmentListActivityFraguseravatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFraguseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentListActivityFraguseravatar<TRes>
    implements CopyWithFragmentListActivityFraguseravatar<TRes> {
  _CopyWithStubImplFragmentListActivityFraguseravatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class FragmentListActivityFragmedia {
  FragmentListActivityFragmedia({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory FragmentListActivityFragmedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFragmedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : FragmentListActivityFragmediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : FragmentListActivityFragmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final FragmentListActivityFragmediacoverImage? coverImage;

  final FragmentListActivityFragmediatitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentListActivityFragmedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtensionFragmentListActivityFragmedia
    on FragmentListActivityFragmedia {
  CopyWithFragmentListActivityFragmedia<FragmentListActivityFragmedia>
      get copyWith => CopyWithFragmentListActivityFragmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentListActivityFragmedia<TRes> {
  factory CopyWithFragmentListActivityFragmedia(
    FragmentListActivityFragmedia instance,
    TRes Function(FragmentListActivityFragmedia) then,
  ) = _CopyWithImplFragmentListActivityFragmedia;

  factory CopyWithFragmentListActivityFragmedia.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFragmedia;

  TRes call({
    int? id,
    FragmentListActivityFragmediacoverImage? coverImage,
    FragmentListActivityFragmediatitle? title,
    String? $__typename,
  });
  CopyWithFragmentListActivityFragmediacoverImage<TRes> get coverImage;
  CopyWithFragmentListActivityFragmediatitle<TRes> get title;
}

class _CopyWithImplFragmentListActivityFragmedia<TRes>
    implements CopyWithFragmentListActivityFragmedia<TRes> {
  _CopyWithImplFragmentListActivityFragmedia(
    this._instance,
    this._then,
  );

  final FragmentListActivityFragmedia _instance;

  final TRes Function(FragmentListActivityFragmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFragmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentListActivityFragmediacoverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentListActivityFragmediatitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentListActivityFragmediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentListActivityFragmediacoverImage.stub(_then(_instance))
        : CopyWithFragmentListActivityFragmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithFragmentListActivityFragmediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentListActivityFragmediatitle.stub(_then(_instance))
        : CopyWithFragmentListActivityFragmediatitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplFragmentListActivityFragmedia<TRes>
    implements CopyWithFragmentListActivityFragmedia<TRes> {
  _CopyWithStubImplFragmentListActivityFragmedia(this._res);

  TRes _res;

  call({
    int? id,
    FragmentListActivityFragmediacoverImage? coverImage,
    FragmentListActivityFragmediatitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentListActivityFragmediacoverImage<TRes> get coverImage =>
      CopyWithFragmentListActivityFragmediacoverImage.stub(_res);

  CopyWithFragmentListActivityFragmediatitle<TRes> get title =>
      CopyWithFragmentListActivityFragmediatitle.stub(_res);
}

class FragmentListActivityFragmediacoverImage {
  FragmentListActivityFragmediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentListActivityFragmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFragmediacoverImage(
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
    if (!(other is FragmentListActivityFragmediacoverImage) ||
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

extension UtilityExtensionFragmentListActivityFragmediacoverImage
    on FragmentListActivityFragmediacoverImage {
  CopyWithFragmentListActivityFragmediacoverImage<
          FragmentListActivityFragmediacoverImage>
      get copyWith => CopyWithFragmentListActivityFragmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentListActivityFragmediacoverImage<TRes> {
  factory CopyWithFragmentListActivityFragmediacoverImage(
    FragmentListActivityFragmediacoverImage instance,
    TRes Function(FragmentListActivityFragmediacoverImage) then,
  ) = _CopyWithImplFragmentListActivityFragmediacoverImage;

  factory CopyWithFragmentListActivityFragmediacoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFragmediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplFragmentListActivityFragmediacoverImage<TRes>
    implements CopyWithFragmentListActivityFragmediacoverImage<TRes> {
  _CopyWithImplFragmentListActivityFragmediacoverImage(
    this._instance,
    this._then,
  );

  final FragmentListActivityFragmediacoverImage _instance;

  final TRes Function(FragmentListActivityFragmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFragmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentListActivityFragmediacoverImage<TRes>
    implements CopyWithFragmentListActivityFragmediacoverImage<TRes> {
  _CopyWithStubImplFragmentListActivityFragmediacoverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class FragmentListActivityFragmediatitle {
  FragmentListActivityFragmediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentListActivityFragmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentListActivityFragmediatitle(
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
    if (!(other is FragmentListActivityFragmediatitle) ||
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

extension UtilityExtensionFragmentListActivityFragmediatitle
    on FragmentListActivityFragmediatitle {
  CopyWithFragmentListActivityFragmediatitle<FragmentListActivityFragmediatitle>
      get copyWith => CopyWithFragmentListActivityFragmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentListActivityFragmediatitle<TRes> {
  factory CopyWithFragmentListActivityFragmediatitle(
    FragmentListActivityFragmediatitle instance,
    TRes Function(FragmentListActivityFragmediatitle) then,
  ) = _CopyWithImplFragmentListActivityFragmediatitle;

  factory CopyWithFragmentListActivityFragmediatitle.stub(TRes res) =
      _CopyWithStubImplFragmentListActivityFragmediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentListActivityFragmediatitle<TRes>
    implements CopyWithFragmentListActivityFragmediatitle<TRes> {
  _CopyWithImplFragmentListActivityFragmediatitle(
    this._instance,
    this._then,
  );

  final FragmentListActivityFragmediatitle _instance;

  final TRes Function(FragmentListActivityFragmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivityFragmediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentListActivityFragmediatitle<TRes>
    implements CopyWithFragmentListActivityFragmediatitle<TRes> {
  _CopyWithStubImplFragmentListActivityFragmediatitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryFollowingActivities {
  factory VariablesQueryFollowingActivities({
    int? page,
    int? perPage,
  }) =>
      VariablesQueryFollowingActivities._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  VariablesQueryFollowingActivities._(this._$data);

  factory VariablesQueryFollowingActivities.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return VariablesQueryFollowingActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

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
    return result$data;
  }

  CopyWithVariablesQueryFollowingActivities<VariablesQueryFollowingActivities>
      get copyWith => CopyWithVariablesQueryFollowingActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryFollowingActivities) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryFollowingActivities<TRes> {
  factory CopyWithVariablesQueryFollowingActivities(
    VariablesQueryFollowingActivities instance,
    TRes Function(VariablesQueryFollowingActivities) then,
  ) = _CopyWithImplVariablesQueryFollowingActivities;

  factory CopyWithVariablesQueryFollowingActivities.stub(TRes res) =
      _CopyWithStubImplVariablesQueryFollowingActivities;

  TRes call({
    int? page,
    int? perPage,
  });
}

class _CopyWithImplVariablesQueryFollowingActivities<TRes>
    implements CopyWithVariablesQueryFollowingActivities<TRes> {
  _CopyWithImplVariablesQueryFollowingActivities(
    this._instance,
    this._then,
  );

  final VariablesQueryFollowingActivities _instance;

  final TRes Function(VariablesQueryFollowingActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(VariablesQueryFollowingActivities._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImplVariablesQueryFollowingActivities<TRes>
    implements CopyWithVariablesQueryFollowingActivities<TRes> {
  _CopyWithStubImplVariablesQueryFollowingActivities(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
  }) =>
      _res;
}

class QueryFollowingActivities {
  QueryFollowingActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryFollowingActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivities(
      Page: l$Page == null
          ? null
          : QueryFollowingActivitiesPage.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryFollowingActivitiesPage? Page;

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
    if (!(other is QueryFollowingActivities) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryFollowingActivities on QueryFollowingActivities {
  CopyWithQueryFollowingActivities<QueryFollowingActivities> get copyWith =>
      CopyWithQueryFollowingActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryFollowingActivities<TRes> {
  factory CopyWithQueryFollowingActivities(
    QueryFollowingActivities instance,
    TRes Function(QueryFollowingActivities) then,
  ) = _CopyWithImplQueryFollowingActivities;

  factory CopyWithQueryFollowingActivities.stub(TRes res) =
      _CopyWithStubImplQueryFollowingActivities;

  TRes call({
    QueryFollowingActivitiesPage? Page,
    String? $__typename,
  });
  CopyWithQueryFollowingActivitiesPage<TRes> get Page;
}

class _CopyWithImplQueryFollowingActivities<TRes>
    implements CopyWithQueryFollowingActivities<TRes> {
  _CopyWithImplQueryFollowingActivities(
    this._instance,
    this._then,
  );

  final QueryFollowingActivities _instance;

  final TRes Function(QueryFollowingActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryFollowingActivitiesPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryFollowingActivitiesPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryFollowingActivitiesPage.stub(_then(_instance))
        : CopyWithQueryFollowingActivitiesPage(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryFollowingActivities<TRes>
    implements CopyWithQueryFollowingActivities<TRes> {
  _CopyWithStubImplQueryFollowingActivities(this._res);

  TRes _res;

  call({
    QueryFollowingActivitiesPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryFollowingActivitiesPage<TRes> get Page =>
      CopyWithQueryFollowingActivitiesPage.stub(_res);
}

const documentNodeQueryFollowingActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FollowingActivities'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
                  EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivityFrag'),
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
  fragmentDefinitionListActivityFrag,
]);

class QueryFollowingActivitiesPage {
  QueryFollowingActivitiesPage({
    this.activities,
    this.$__typename = 'Page',
  });

  factory QueryFollowingActivitiesPage.fromJson(Map<String, dynamic> json) {
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPage(
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryFollowingActivitiesPageactivities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryFollowingActivitiesPageactivities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryFollowingActivitiesPage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtensionQueryFollowingActivitiesPage
    on QueryFollowingActivitiesPage {
  CopyWithQueryFollowingActivitiesPage<QueryFollowingActivitiesPage>
      get copyWith => CopyWithQueryFollowingActivitiesPage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPage<TRes> {
  factory CopyWithQueryFollowingActivitiesPage(
    QueryFollowingActivitiesPage instance,
    TRes Function(QueryFollowingActivitiesPage) then,
  ) = _CopyWithImplQueryFollowingActivitiesPage;

  factory CopyWithQueryFollowingActivitiesPage.stub(TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPage;

  TRes call({
    List<QueryFollowingActivitiesPageactivities?>? activities,
    String? $__typename,
  });
  TRes activities(
      Iterable<QueryFollowingActivitiesPageactivities?>? Function(
              Iterable<
                  CopyWithQueryFollowingActivitiesPageactivities<
                      QueryFollowingActivitiesPageactivities>?>?)
          _fn);
}

class _CopyWithImplQueryFollowingActivitiesPage<TRes>
    implements CopyWithQueryFollowingActivitiesPage<TRes> {
  _CopyWithImplQueryFollowingActivitiesPage(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPage _instance;

  final TRes Function(QueryFollowingActivitiesPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPage(
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<QueryFollowingActivitiesPageactivities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes activities(
          Iterable<QueryFollowingActivitiesPageactivities?>? Function(
                  Iterable<
                      CopyWithQueryFollowingActivitiesPageactivities<
                          QueryFollowingActivitiesPageactivities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWithQueryFollowingActivitiesPageactivities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryFollowingActivitiesPage<TRes>
    implements CopyWithQueryFollowingActivitiesPage<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPage(this._res);

  TRes _res;

  call({
    List<QueryFollowingActivitiesPageactivities?>? activities,
    String? $__typename,
  }) =>
      _res;

  activities(_fn) => _res;
}

class QueryFollowingActivitiesPageactivities {
  QueryFollowingActivitiesPageactivities({required this.$__typename});

  factory QueryFollowingActivitiesPageactivities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return QueryFollowingActivitiesPageactivitiesListActivity.fromJson(
            json);

      case "TextActivity":
        return QueryFollowingActivitiesPageactivitiesTextActivity.fromJson(
            json);

      case "MessageActivity":
        return QueryFollowingActivitiesPageactivitiesMessageActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return QueryFollowingActivitiesPageactivities(
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
    if (!(other is QueryFollowingActivitiesPageactivities) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivities
    on QueryFollowingActivitiesPageactivities {
  CopyWithQueryFollowingActivitiesPageactivities<
          QueryFollowingActivitiesPageactivities>
      get copyWith => CopyWithQueryFollowingActivitiesPageactivities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryFollowingActivitiesPageactivitiesListActivity)
        listActivity,
    required _T Function(QueryFollowingActivitiesPageactivitiesTextActivity)
        textActivity,
    required _T Function(QueryFollowingActivitiesPageactivitiesMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as QueryFollowingActivitiesPageactivitiesListActivity);

      case "TextActivity":
        return textActivity(
            this as QueryFollowingActivitiesPageactivitiesTextActivity);

      case "MessageActivity":
        return messageActivity(
            this as QueryFollowingActivitiesPageactivitiesMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryFollowingActivitiesPageactivitiesListActivity)?
        listActivity,
    _T Function(QueryFollowingActivitiesPageactivitiesTextActivity)?
        textActivity,
    _T Function(QueryFollowingActivitiesPageactivitiesMessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as QueryFollowingActivitiesPageactivitiesListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as QueryFollowingActivitiesPageactivitiesTextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryFollowingActivitiesPageactivitiesMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryFollowingActivitiesPageactivities<TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivities(
    QueryFollowingActivitiesPageactivities instance,
    TRes Function(QueryFollowingActivitiesPageactivities) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivities;

  factory CopyWithQueryFollowingActivitiesPageactivities.stub(TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivities;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryFollowingActivitiesPageactivities<TRes>
    implements CopyWithQueryFollowingActivitiesPageactivities<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivities(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivities _instance;

  final TRes Function(QueryFollowingActivitiesPageactivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryFollowingActivitiesPageactivities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivities<TRes>
    implements CopyWithQueryFollowingActivitiesPageactivities<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryFollowingActivitiesPageactivitiesListActivity
    implements
        FragmentListActivityFrag,
        QueryFollowingActivitiesPageactivities {
  QueryFollowingActivitiesPageactivitiesListActivity({
    required this.id,
    this.type,
    this.user,
    this.status,
    required this.createdAt,
    this.progress,
    required this.likeCount,
    required this.replyCount,
    this.isLiked,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$user = json['user'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$isLiked = json['isLiked'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      user: l$user == null
          ? null
          : QueryFollowingActivitiesPageactivitiesListActivityuser.fromJson(
              (l$user as Map<String, dynamic>)),
      status: (l$status as String?),
      createdAt: (l$createdAt as int),
      progress: (l$progress as String?),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      isLiked: (l$isLiked as bool?),
      media: l$media == null
          ? null
          : QueryFollowingActivitiesPageactivitiesListActivitymedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final QueryFollowingActivitiesPageactivitiesListActivityuser? user;

  final String? status;

  final int createdAt;

  final String? progress;

  final int likeCount;

  final int replyCount;

  final bool? isLiked;

  final QueryFollowingActivitiesPageactivitiesListActivitymedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$user = user;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$isLiked = isLiked;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$user,
      l$status,
      l$createdAt,
      l$progress,
      l$likeCount,
      l$replyCount,
      l$isLiked,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryFollowingActivitiesPageactivitiesListActivity) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivity
    on QueryFollowingActivitiesPageactivitiesListActivity {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivity<
          QueryFollowingActivitiesPageactivitiesListActivity>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivity<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivity(
    QueryFollowingActivitiesPageactivitiesListActivity instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesListActivity) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivity;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    QueryFollowingActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryFollowingActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  });
  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<TRes> get user;
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes>
      get media;
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivity<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivity(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivity _instance;

  final TRes Function(QueryFollowingActivitiesPageactivitiesListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? isLiked = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        user: user == _undefined
            ? _instance.user
            : (user as QueryFollowingActivitiesPageactivitiesListActivityuser?),
        status: status == _undefined ? _instance.status : (status as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        media: media == _undefined
            ? _instance.media
            : (media
                as QueryFollowingActivitiesPageactivitiesListActivitymedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser.stub(
            _then(_instance))
        : CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser(
            local$user, (e) => call(user: e));
  }

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia.stub(
            _then(_instance))
        : CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivity<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    QueryFollowingActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryFollowingActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<TRes>
      get user =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser.stub(
              _res);

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes>
      get media =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia.stub(
              _res);
}

class QueryFollowingActivitiesPageactivitiesListActivityuser
    implements FragmentListActivityFraguser {
  QueryFollowingActivitiesPageactivitiesListActivityuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivityuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivityuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryFollowingActivitiesPageactivitiesListActivityuseravatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryFollowingActivitiesPageactivitiesListActivityuseravatar? avatar;

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
    if (!(other is QueryFollowingActivitiesPageactivitiesListActivityuser) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivityuser
    on QueryFollowingActivitiesPageactivitiesListActivityuser {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<
          QueryFollowingActivitiesPageactivitiesListActivityuser>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser(
    QueryFollowingActivitiesPageactivitiesListActivityuser instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesListActivityuser) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuser;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuser;

  TRes call({
    int? id,
    String? name,
    QueryFollowingActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar;
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuser<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuser(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivityuser _instance;

  final TRes Function(QueryFollowingActivitiesPageactivitiesListActivityuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivityuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryFollowingActivitiesPageactivitiesListActivityuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar
            .stub(_then(_instance))
        : CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuser<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryFollowingActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar
              .stub(_res);
}

class QueryFollowingActivitiesPageactivitiesListActivityuseravatar
    implements FragmentListActivityFraguseravatar {
  QueryFollowingActivitiesPageactivitiesListActivityuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivityuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivityuseravatar(
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
    if (!(other
            is QueryFollowingActivitiesPageactivitiesListActivityuseravatar) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivityuseravatar
    on QueryFollowingActivitiesPageactivitiesListActivityuseravatar {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
          QueryFollowingActivitiesPageactivitiesListActivityuseravatar>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar(
    QueryFollowingActivitiesPageactivitiesListActivityuseravatar instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesListActivityuseravatar)
        then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
            TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivityuseravatar _instance;

  final TRes Function(
      QueryFollowingActivitiesPageactivitiesListActivityuseravatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivityuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivityuseravatar<
            TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivityuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryFollowingActivitiesPageactivitiesListActivitymedia
    implements FragmentListActivityFragmedia {
  QueryFollowingActivitiesPageactivitiesListActivitymedia({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivitymedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivitymedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : QueryFollowingActivitiesPageactivitiesListActivitymediatitle
              .fromJson((l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage?
      coverImage;

  final QueryFollowingActivitiesPageactivitiesListActivitymediatitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryFollowingActivitiesPageactivitiesListActivitymedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivitymedia
    on QueryFollowingActivitiesPageactivitiesListActivitymedia {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<
          QueryFollowingActivitiesPageactivitiesListActivitymedia>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia(
    QueryFollowingActivitiesPageactivitiesListActivitymedia instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesListActivitymedia) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymedia;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymedia;

  TRes call({
    int? id,
    QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage?
        coverImage,
    QueryFollowingActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  });
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
      TRes> get coverImage;
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title;
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymedia(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivitymedia _instance;

  final TRes Function(QueryFollowingActivitiesPageactivitiesListActivitymedia)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivitymedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryFollowingActivitiesPageactivitiesListActivitymediatitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle
            .stub(_then(_instance))
        : CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymedia<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymedia(
      this._res);

  TRes _res;

  call({
    int? id,
    QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage?
        coverImage,
    QueryFollowingActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
          TRes>
      get coverImage =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
              .stub(_res);

  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle
              .stub(_res);
}

class QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
    implements FragmentListActivityFragmediacoverImage {
  QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
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
    if (!(other
            is QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
    on QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
          QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
    QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage instance,
    TRes Function(
            QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage)
        then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage
      _instance;

  final TRes Function(
      QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryFollowingActivitiesPageactivitiesListActivitymediatitle
    implements FragmentListActivityFragmediatitle {
  QueryFollowingActivitiesPageactivitiesListActivitymediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryFollowingActivitiesPageactivitiesListActivitymediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesListActivitymediatitle(
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
    if (!(other
            is QueryFollowingActivitiesPageactivitiesListActivitymediatitle) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesListActivitymediatitle
    on QueryFollowingActivitiesPageactivitiesListActivitymediatitle {
  CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
          QueryFollowingActivitiesPageactivitiesListActivitymediatitle>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle(
    QueryFollowingActivitiesPageactivitiesListActivitymediatitle instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesListActivitymediatitle)
        then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle;

  factory CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
            TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesListActivitymediatitle _instance;

  final TRes Function(
      QueryFollowingActivitiesPageactivitiesListActivitymediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFollowingActivitiesPageactivitiesListActivitymediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesListActivitymediatitle<
            TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesListActivitymediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryFollowingActivitiesPageactivitiesTextActivity
    implements QueryFollowingActivitiesPageactivities {
  QueryFollowingActivitiesPageactivitiesTextActivity(
      {this.$__typename = 'TextActivity'});

  factory QueryFollowingActivitiesPageactivitiesTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesTextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryFollowingActivitiesPageactivitiesTextActivity) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesTextActivity
    on QueryFollowingActivitiesPageactivitiesTextActivity {
  CopyWithQueryFollowingActivitiesPageactivitiesTextActivity<
          QueryFollowingActivitiesPageactivitiesTextActivity>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesTextActivity<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesTextActivity(
    QueryFollowingActivitiesPageactivitiesTextActivity instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesTextActivity) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesTextActivity;

  factory CopyWithQueryFollowingActivitiesPageactivitiesTextActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesTextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesTextActivity<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesTextActivity(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesTextActivity _instance;

  final TRes Function(QueryFollowingActivitiesPageactivitiesTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryFollowingActivitiesPageactivitiesTextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesTextActivity<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesTextActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryFollowingActivitiesPageactivitiesMessageActivity
    implements QueryFollowingActivitiesPageactivities {
  QueryFollowingActivitiesPageactivitiesMessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory QueryFollowingActivitiesPageactivitiesMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryFollowingActivitiesPageactivitiesMessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryFollowingActivitiesPageactivitiesMessageActivity) ||
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

extension UtilityExtensionQueryFollowingActivitiesPageactivitiesMessageActivity
    on QueryFollowingActivitiesPageactivitiesMessageActivity {
  CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity<
          QueryFollowingActivitiesPageactivitiesMessageActivity>
      get copyWith =>
          CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity<
    TRes> {
  factory CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity(
    QueryFollowingActivitiesPageactivitiesMessageActivity instance,
    TRes Function(QueryFollowingActivitiesPageactivitiesMessageActivity) then,
  ) = _CopyWithImplQueryFollowingActivitiesPageactivitiesMessageActivity;

  factory CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryFollowingActivitiesPageactivitiesMessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryFollowingActivitiesPageactivitiesMessageActivity<TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithImplQueryFollowingActivitiesPageactivitiesMessageActivity(
    this._instance,
    this._then,
  );

  final QueryFollowingActivitiesPageactivitiesMessageActivity _instance;

  final TRes Function(QueryFollowingActivitiesPageactivitiesMessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryFollowingActivitiesPageactivitiesMessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryFollowingActivitiesPageactivitiesMessageActivity<
        TRes>
    implements
        CopyWithQueryFollowingActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithStubImplQueryFollowingActivitiesPageactivitiesMessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class VariablesQueryGlobalActivities {
  factory VariablesQueryGlobalActivities({
    int? page,
    int? perPage,
  }) =>
      VariablesQueryGlobalActivities._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  VariablesQueryGlobalActivities._(this._$data);

  factory VariablesQueryGlobalActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return VariablesQueryGlobalActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

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
    return result$data;
  }

  CopyWithVariablesQueryGlobalActivities<VariablesQueryGlobalActivities>
      get copyWith => CopyWithVariablesQueryGlobalActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryGlobalActivities) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryGlobalActivities<TRes> {
  factory CopyWithVariablesQueryGlobalActivities(
    VariablesQueryGlobalActivities instance,
    TRes Function(VariablesQueryGlobalActivities) then,
  ) = _CopyWithImplVariablesQueryGlobalActivities;

  factory CopyWithVariablesQueryGlobalActivities.stub(TRes res) =
      _CopyWithStubImplVariablesQueryGlobalActivities;

  TRes call({
    int? page,
    int? perPage,
  });
}

class _CopyWithImplVariablesQueryGlobalActivities<TRes>
    implements CopyWithVariablesQueryGlobalActivities<TRes> {
  _CopyWithImplVariablesQueryGlobalActivities(
    this._instance,
    this._then,
  );

  final VariablesQueryGlobalActivities _instance;

  final TRes Function(VariablesQueryGlobalActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(VariablesQueryGlobalActivities._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImplVariablesQueryGlobalActivities<TRes>
    implements CopyWithVariablesQueryGlobalActivities<TRes> {
  _CopyWithStubImplVariablesQueryGlobalActivities(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
  }) =>
      _res;
}

class QueryGlobalActivities {
  QueryGlobalActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryGlobalActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivities(
      Page: l$Page == null
          ? null
          : QueryGlobalActivitiesPage.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryGlobalActivitiesPage? Page;

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
    if (!(other is QueryGlobalActivities) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryGlobalActivities on QueryGlobalActivities {
  CopyWithQueryGlobalActivities<QueryGlobalActivities> get copyWith =>
      CopyWithQueryGlobalActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryGlobalActivities<TRes> {
  factory CopyWithQueryGlobalActivities(
    QueryGlobalActivities instance,
    TRes Function(QueryGlobalActivities) then,
  ) = _CopyWithImplQueryGlobalActivities;

  factory CopyWithQueryGlobalActivities.stub(TRes res) =
      _CopyWithStubImplQueryGlobalActivities;

  TRes call({
    QueryGlobalActivitiesPage? Page,
    String? $__typename,
  });
  CopyWithQueryGlobalActivitiesPage<TRes> get Page;
}

class _CopyWithImplQueryGlobalActivities<TRes>
    implements CopyWithQueryGlobalActivities<TRes> {
  _CopyWithImplQueryGlobalActivities(
    this._instance,
    this._then,
  );

  final QueryGlobalActivities _instance;

  final TRes Function(QueryGlobalActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryGlobalActivitiesPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryGlobalActivitiesPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryGlobalActivitiesPage.stub(_then(_instance))
        : CopyWithQueryGlobalActivitiesPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryGlobalActivities<TRes>
    implements CopyWithQueryGlobalActivities<TRes> {
  _CopyWithStubImplQueryGlobalActivities(this._res);

  TRes _res;

  call({
    QueryGlobalActivitiesPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryGlobalActivitiesPage<TRes> get Page =>
      CopyWithQueryGlobalActivitiesPage.stub(_res);
}

const documentNodeQueryGlobalActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GlobalActivities'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
                  EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'hasReplies'),
                value: BooleanValueNode(value: true),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivityFrag'),
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
  fragmentDefinitionListActivityFrag,
]);

class QueryGlobalActivitiesPage {
  QueryGlobalActivitiesPage({
    this.activities,
    this.$__typename = 'Page',
  });

  factory QueryGlobalActivitiesPage.fromJson(Map<String, dynamic> json) {
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPage(
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryGlobalActivitiesPageactivities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryGlobalActivitiesPageactivities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryGlobalActivitiesPage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtensionQueryGlobalActivitiesPage
    on QueryGlobalActivitiesPage {
  CopyWithQueryGlobalActivitiesPage<QueryGlobalActivitiesPage> get copyWith =>
      CopyWithQueryGlobalActivitiesPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryGlobalActivitiesPage<TRes> {
  factory CopyWithQueryGlobalActivitiesPage(
    QueryGlobalActivitiesPage instance,
    TRes Function(QueryGlobalActivitiesPage) then,
  ) = _CopyWithImplQueryGlobalActivitiesPage;

  factory CopyWithQueryGlobalActivitiesPage.stub(TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPage;

  TRes call({
    List<QueryGlobalActivitiesPageactivities?>? activities,
    String? $__typename,
  });
  TRes activities(
      Iterable<QueryGlobalActivitiesPageactivities?>? Function(
              Iterable<
                  CopyWithQueryGlobalActivitiesPageactivities<
                      QueryGlobalActivitiesPageactivities>?>?)
          _fn);
}

class _CopyWithImplQueryGlobalActivitiesPage<TRes>
    implements CopyWithQueryGlobalActivitiesPage<TRes> {
  _CopyWithImplQueryGlobalActivitiesPage(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPage _instance;

  final TRes Function(QueryGlobalActivitiesPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPage(
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<QueryGlobalActivitiesPageactivities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes activities(
          Iterable<QueryGlobalActivitiesPageactivities?>? Function(
                  Iterable<
                      CopyWithQueryGlobalActivitiesPageactivities<
                          QueryGlobalActivitiesPageactivities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWithQueryGlobalActivitiesPageactivities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryGlobalActivitiesPage<TRes>
    implements CopyWithQueryGlobalActivitiesPage<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPage(this._res);

  TRes _res;

  call({
    List<QueryGlobalActivitiesPageactivities?>? activities,
    String? $__typename,
  }) =>
      _res;

  activities(_fn) => _res;
}

class QueryGlobalActivitiesPageactivities {
  QueryGlobalActivitiesPageactivities({required this.$__typename});

  factory QueryGlobalActivitiesPageactivities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return QueryGlobalActivitiesPageactivitiesListActivity.fromJson(json);

      case "TextActivity":
        return QueryGlobalActivitiesPageactivitiesTextActivity.fromJson(json);

      case "MessageActivity":
        return QueryGlobalActivitiesPageactivitiesMessageActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return QueryGlobalActivitiesPageactivities(
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
    if (!(other is QueryGlobalActivitiesPageactivities) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivities
    on QueryGlobalActivitiesPageactivities {
  CopyWithQueryGlobalActivitiesPageactivities<
          QueryGlobalActivitiesPageactivities>
      get copyWith => CopyWithQueryGlobalActivitiesPageactivities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryGlobalActivitiesPageactivitiesListActivity)
        listActivity,
    required _T Function(QueryGlobalActivitiesPageactivitiesTextActivity)
        textActivity,
    required _T Function(QueryGlobalActivitiesPageactivitiesMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as QueryGlobalActivitiesPageactivitiesListActivity);

      case "TextActivity":
        return textActivity(
            this as QueryGlobalActivitiesPageactivitiesTextActivity);

      case "MessageActivity":
        return messageActivity(
            this as QueryGlobalActivitiesPageactivitiesMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryGlobalActivitiesPageactivitiesListActivity)? listActivity,
    _T Function(QueryGlobalActivitiesPageactivitiesTextActivity)? textActivity,
    _T Function(QueryGlobalActivitiesPageactivitiesMessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as QueryGlobalActivitiesPageactivitiesListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as QueryGlobalActivitiesPageactivitiesTextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryGlobalActivitiesPageactivitiesMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryGlobalActivitiesPageactivities<TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivities(
    QueryGlobalActivitiesPageactivities instance,
    TRes Function(QueryGlobalActivitiesPageactivities) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivities;

  factory CopyWithQueryGlobalActivitiesPageactivities.stub(TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivities;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryGlobalActivitiesPageactivities<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivities<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivities(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivities _instance;

  final TRes Function(QueryGlobalActivitiesPageactivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryGlobalActivitiesPageactivities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivities<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivities<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryGlobalActivitiesPageactivitiesListActivity
    implements FragmentListActivityFrag, QueryGlobalActivitiesPageactivities {
  QueryGlobalActivitiesPageactivitiesListActivity({
    required this.id,
    this.type,
    this.user,
    this.status,
    required this.createdAt,
    this.progress,
    required this.likeCount,
    required this.replyCount,
    this.isLiked,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$user = json['user'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$isLiked = json['isLiked'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      user: l$user == null
          ? null
          : QueryGlobalActivitiesPageactivitiesListActivityuser.fromJson(
              (l$user as Map<String, dynamic>)),
      status: (l$status as String?),
      createdAt: (l$createdAt as int),
      progress: (l$progress as String?),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      isLiked: (l$isLiked as bool?),
      media: l$media == null
          ? null
          : QueryGlobalActivitiesPageactivitiesListActivitymedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final QueryGlobalActivitiesPageactivitiesListActivityuser? user;

  final String? status;

  final int createdAt;

  final String? progress;

  final int likeCount;

  final int replyCount;

  final bool? isLiked;

  final QueryGlobalActivitiesPageactivitiesListActivitymedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$user = user;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$isLiked = isLiked;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$user,
      l$status,
      l$createdAt,
      l$progress,
      l$likeCount,
      l$replyCount,
      l$isLiked,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryGlobalActivitiesPageactivitiesListActivity) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivity
    on QueryGlobalActivitiesPageactivitiesListActivity {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivity<
          QueryGlobalActivitiesPageactivitiesListActivity>
      get copyWith => CopyWithQueryGlobalActivitiesPageactivitiesListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivity<TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivity(
    QueryGlobalActivitiesPageactivitiesListActivity instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesListActivity) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivity;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    QueryGlobalActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryGlobalActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  });
  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<TRes> get user;
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes> get media;
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivity(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivity _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? isLiked = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        user: user == _undefined
            ? _instance.user
            : (user as QueryGlobalActivitiesPageactivitiesListActivityuser?),
        status: status == _undefined ? _instance.status : (status as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryGlobalActivitiesPageactivitiesListActivitymedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser.stub(
            _then(_instance))
        : CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser(
            local$user, (e) => call(user: e));
  }

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia.stub(
            _then(_instance))
        : CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    QueryGlobalActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryGlobalActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<TRes> get user =>
      CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser.stub(_res);

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes>
      get media =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia.stub(
              _res);
}

class QueryGlobalActivitiesPageactivitiesListActivityuser
    implements FragmentListActivityFraguser {
  QueryGlobalActivitiesPageactivitiesListActivityuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivityuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivityuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryGlobalActivitiesPageactivitiesListActivityuseravatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryGlobalActivitiesPageactivitiesListActivityuseravatar? avatar;

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
    if (!(other is QueryGlobalActivitiesPageactivitiesListActivityuser) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivityuser
    on QueryGlobalActivitiesPageactivitiesListActivityuser {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<
          QueryGlobalActivitiesPageactivitiesListActivityuser>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser(
    QueryGlobalActivitiesPageactivitiesListActivityuser instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesListActivityuser) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuser;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuser;

  TRes call({
    int? id,
    String? name,
    QueryGlobalActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar;
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuser<TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuser(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivityuser _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesListActivityuser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivityuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryGlobalActivitiesPageactivitiesListActivityuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar
            .stub(_then(_instance))
        : CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuser<TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuser(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryGlobalActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar
              .stub(_res);
}

class QueryGlobalActivitiesPageactivitiesListActivityuseravatar
    implements FragmentListActivityFraguseravatar {
  QueryGlobalActivitiesPageactivitiesListActivityuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivityuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivityuseravatar(
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
    if (!(other is QueryGlobalActivitiesPageactivitiesListActivityuseravatar) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivityuseravatar
    on QueryGlobalActivitiesPageactivitiesListActivityuseravatar {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
          QueryGlobalActivitiesPageactivitiesListActivityuseravatar>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar(
    QueryGlobalActivitiesPageactivitiesListActivityuseravatar instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesListActivityuseravatar)
        then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
            TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivityuseravatar _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesListActivityuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivityuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivityuseravatar<
            TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivityuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryGlobalActivitiesPageactivitiesListActivitymedia
    implements FragmentListActivityFragmedia {
  QueryGlobalActivitiesPageactivitiesListActivitymedia({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivitymedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivitymedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : QueryGlobalActivitiesPageactivitiesListActivitymediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage?
      coverImage;

  final QueryGlobalActivitiesPageactivitiesListActivitymediatitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryGlobalActivitiesPageactivitiesListActivitymedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivitymedia
    on QueryGlobalActivitiesPageactivitiesListActivitymedia {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<
          QueryGlobalActivitiesPageactivitiesListActivitymedia>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia(
    QueryGlobalActivitiesPageactivitiesListActivitymedia instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesListActivitymedia) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymedia;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymedia;

  TRes call({
    int? id,
    QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage? coverImage,
    QueryGlobalActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  });
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage;
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title;
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymedia(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivitymedia _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesListActivitymedia)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivitymedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryGlobalActivitiesPageactivitiesListActivitymediatitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle
            .stub(_then(_instance))
        : CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymedia<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymedia(
      this._res);

  TRes _res;

  call({
    int? id,
    QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage? coverImage,
    QueryGlobalActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
              .stub(_res);

  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle
              .stub(_res);
}

class QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
    implements FragmentListActivityFragmediacoverImage {
  QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
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
    if (!(other
            is QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
    on QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
          QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
    QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage instance,
    TRes Function(
            QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage)
        then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage
      _instance;

  final TRes Function(
      QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryGlobalActivitiesPageactivitiesListActivitymediatitle
    implements FragmentListActivityFragmediatitle {
  QueryGlobalActivitiesPageactivitiesListActivitymediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryGlobalActivitiesPageactivitiesListActivitymediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesListActivitymediatitle(
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
    if (!(other is QueryGlobalActivitiesPageactivitiesListActivitymediatitle) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesListActivitymediatitle
    on QueryGlobalActivitiesPageactivitiesListActivitymediatitle {
  CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
          QueryGlobalActivitiesPageactivitiesListActivitymediatitle>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle(
    QueryGlobalActivitiesPageactivitiesListActivitymediatitle instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesListActivitymediatitle)
        then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle;

  factory CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
            TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesListActivitymediatitle _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesListActivitymediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGlobalActivitiesPageactivitiesListActivitymediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
        TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesListActivitymediatitle<
            TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesListActivitymediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryGlobalActivitiesPageactivitiesTextActivity
    implements QueryGlobalActivitiesPageactivities {
  QueryGlobalActivitiesPageactivitiesTextActivity(
      {this.$__typename = 'TextActivity'});

  factory QueryGlobalActivitiesPageactivitiesTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesTextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryGlobalActivitiesPageactivitiesTextActivity) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesTextActivity
    on QueryGlobalActivitiesPageactivitiesTextActivity {
  CopyWithQueryGlobalActivitiesPageactivitiesTextActivity<
          QueryGlobalActivitiesPageactivitiesTextActivity>
      get copyWith => CopyWithQueryGlobalActivitiesPageactivitiesTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesTextActivity<TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesTextActivity(
    QueryGlobalActivitiesPageactivitiesTextActivity instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesTextActivity) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesTextActivity;

  factory CopyWithQueryGlobalActivitiesPageactivitiesTextActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesTextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesTextActivity(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesTextActivity _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryGlobalActivitiesPageactivitiesTextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryGlobalActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesTextActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryGlobalActivitiesPageactivitiesMessageActivity
    implements QueryGlobalActivitiesPageactivities {
  QueryGlobalActivitiesPageactivitiesMessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory QueryGlobalActivitiesPageactivitiesMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryGlobalActivitiesPageactivitiesMessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryGlobalActivitiesPageactivitiesMessageActivity) ||
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

extension UtilityExtensionQueryGlobalActivitiesPageactivitiesMessageActivity
    on QueryGlobalActivitiesPageactivitiesMessageActivity {
  CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity<
          QueryGlobalActivitiesPageactivitiesMessageActivity>
      get copyWith =>
          CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity<
    TRes> {
  factory CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity(
    QueryGlobalActivitiesPageactivitiesMessageActivity instance,
    TRes Function(QueryGlobalActivitiesPageactivitiesMessageActivity) then,
  ) = _CopyWithImplQueryGlobalActivitiesPageactivitiesMessageActivity;

  factory CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryGlobalActivitiesPageactivitiesMessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryGlobalActivitiesPageactivitiesMessageActivity<TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithImplQueryGlobalActivitiesPageactivitiesMessageActivity(
    this._instance,
    this._then,
  );

  final QueryGlobalActivitiesPageactivitiesMessageActivity _instance;

  final TRes Function(QueryGlobalActivitiesPageactivitiesMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryGlobalActivitiesPageactivitiesMessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryGlobalActivitiesPageactivitiesMessageActivity<TRes>
    implements
        CopyWithQueryGlobalActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithStubImplQueryGlobalActivitiesPageactivitiesMessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class VariablesQueryUserActivities {
  factory VariablesQueryUserActivities({
    int? userId,
    int? page,
    int? perPage,
  }) =>
      VariablesQueryUserActivities._({
        if (userId != null) r'userId': userId,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  VariablesQueryUserActivities._(this._$data);

  factory VariablesQueryUserActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return VariablesQueryUserActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    return result$data;
  }

  CopyWithVariablesQueryUserActivities<VariablesQueryUserActivities>
      get copyWith => CopyWithVariablesQueryUserActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryUserActivities) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUserActivities<TRes> {
  factory CopyWithVariablesQueryUserActivities(
    VariablesQueryUserActivities instance,
    TRes Function(VariablesQueryUserActivities) then,
  ) = _CopyWithImplVariablesQueryUserActivities;

  factory CopyWithVariablesQueryUserActivities.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUserActivities;

  TRes call({
    int? userId,
    int? page,
    int? perPage,
  });
}

class _CopyWithImplVariablesQueryUserActivities<TRes>
    implements CopyWithVariablesQueryUserActivities<TRes> {
  _CopyWithImplVariablesQueryUserActivities(
    this._instance,
    this._then,
  );

  final VariablesQueryUserActivities _instance;

  final TRes Function(VariablesQueryUserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(VariablesQueryUserActivities._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImplVariablesQueryUserActivities<TRes>
    implements CopyWithVariablesQueryUserActivities<TRes> {
  _CopyWithStubImplVariablesQueryUserActivities(this._res);

  TRes _res;

  call({
    int? userId,
    int? page,
    int? perPage,
  }) =>
      _res;
}

class QueryUserActivities {
  QueryUserActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryUserActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryUserActivities(
      Page: l$Page == null
          ? null
          : QueryUserActivitiesPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserActivitiesPage? Page;

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
    if (!(other is QueryUserActivities) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryUserActivities on QueryUserActivities {
  CopyWithQueryUserActivities<QueryUserActivities> get copyWith =>
      CopyWithQueryUserActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserActivities<TRes> {
  factory CopyWithQueryUserActivities(
    QueryUserActivities instance,
    TRes Function(QueryUserActivities) then,
  ) = _CopyWithImplQueryUserActivities;

  factory CopyWithQueryUserActivities.stub(TRes res) =
      _CopyWithStubImplQueryUserActivities;

  TRes call({
    QueryUserActivitiesPage? Page,
    String? $__typename,
  });
  CopyWithQueryUserActivitiesPage<TRes> get Page;
}

class _CopyWithImplQueryUserActivities<TRes>
    implements CopyWithQueryUserActivities<TRes> {
  _CopyWithImplQueryUserActivities(
    this._instance,
    this._then,
  );

  final QueryUserActivities _instance;

  final TRes Function(QueryUserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryUserActivitiesPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserActivitiesPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryUserActivitiesPage.stub(_then(_instance))
        : CopyWithQueryUserActivitiesPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryUserActivities<TRes>
    implements CopyWithQueryUserActivities<TRes> {
  _CopyWithStubImplQueryUserActivities(this._res);

  TRes _res;

  call({
    QueryUserActivitiesPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserActivitiesPage<TRes> get Page =>
      CopyWithQueryUserActivitiesPage.stub(_res);
}

const documentNodeQueryUserActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserActivities'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
                  EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivityFrag'),
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
  fragmentDefinitionListActivityFrag,
]);

class QueryUserActivitiesPage {
  QueryUserActivitiesPage({
    this.activities,
    this.$__typename = 'Page',
  });

  factory QueryUserActivitiesPage.fromJson(Map<String, dynamic> json) {
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPage(
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryUserActivitiesPageactivities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryUserActivitiesPageactivities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserActivitiesPage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtensionQueryUserActivitiesPage on QueryUserActivitiesPage {
  CopyWithQueryUserActivitiesPage<QueryUserActivitiesPage> get copyWith =>
      CopyWithQueryUserActivitiesPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserActivitiesPage<TRes> {
  factory CopyWithQueryUserActivitiesPage(
    QueryUserActivitiesPage instance,
    TRes Function(QueryUserActivitiesPage) then,
  ) = _CopyWithImplQueryUserActivitiesPage;

  factory CopyWithQueryUserActivitiesPage.stub(TRes res) =
      _CopyWithStubImplQueryUserActivitiesPage;

  TRes call({
    List<QueryUserActivitiesPageactivities?>? activities,
    String? $__typename,
  });
  TRes activities(
      Iterable<QueryUserActivitiesPageactivities?>? Function(
              Iterable<
                  CopyWithQueryUserActivitiesPageactivities<
                      QueryUserActivitiesPageactivities>?>?)
          _fn);
}

class _CopyWithImplQueryUserActivitiesPage<TRes>
    implements CopyWithQueryUserActivitiesPage<TRes> {
  _CopyWithImplQueryUserActivitiesPage(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPage _instance;

  final TRes Function(QueryUserActivitiesPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPage(
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<QueryUserActivitiesPageactivities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes activities(
          Iterable<QueryUserActivitiesPageactivities?>? Function(
                  Iterable<
                      CopyWithQueryUserActivitiesPageactivities<
                          QueryUserActivitiesPageactivities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWithQueryUserActivitiesPageactivities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryUserActivitiesPage<TRes>
    implements CopyWithQueryUserActivitiesPage<TRes> {
  _CopyWithStubImplQueryUserActivitiesPage(this._res);

  TRes _res;

  call({
    List<QueryUserActivitiesPageactivities?>? activities,
    String? $__typename,
  }) =>
      _res;

  activities(_fn) => _res;
}

class QueryUserActivitiesPageactivities {
  QueryUserActivitiesPageactivities({required this.$__typename});

  factory QueryUserActivitiesPageactivities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return QueryUserActivitiesPageactivitiesListActivity.fromJson(json);

      case "TextActivity":
        return QueryUserActivitiesPageactivitiesTextActivity.fromJson(json);

      case "MessageActivity":
        return QueryUserActivitiesPageactivitiesMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryUserActivitiesPageactivities(
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
    if (!(other is QueryUserActivitiesPageactivities) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivities
    on QueryUserActivitiesPageactivities {
  CopyWithQueryUserActivitiesPageactivities<QueryUserActivitiesPageactivities>
      get copyWith => CopyWithQueryUserActivitiesPageactivities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryUserActivitiesPageactivitiesListActivity)
        listActivity,
    required _T Function(QueryUserActivitiesPageactivitiesTextActivity)
        textActivity,
    required _T Function(QueryUserActivitiesPageactivitiesMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as QueryUserActivitiesPageactivitiesListActivity);

      case "TextActivity":
        return textActivity(
            this as QueryUserActivitiesPageactivitiesTextActivity);

      case "MessageActivity":
        return messageActivity(
            this as QueryUserActivitiesPageactivitiesMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryUserActivitiesPageactivitiesListActivity)? listActivity,
    _T Function(QueryUserActivitiesPageactivitiesTextActivity)? textActivity,
    _T Function(QueryUserActivitiesPageactivitiesMessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as QueryUserActivitiesPageactivitiesListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as QueryUserActivitiesPageactivitiesTextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryUserActivitiesPageactivitiesMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryUserActivitiesPageactivities<TRes> {
  factory CopyWithQueryUserActivitiesPageactivities(
    QueryUserActivitiesPageactivities instance,
    TRes Function(QueryUserActivitiesPageactivities) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivities;

  factory CopyWithQueryUserActivitiesPageactivities.stub(TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivities;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryUserActivitiesPageactivities<TRes>
    implements CopyWithQueryUserActivitiesPageactivities<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivities(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivities _instance;

  final TRes Function(QueryUserActivitiesPageactivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryUserActivitiesPageactivities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryUserActivitiesPageactivities<TRes>
    implements CopyWithQueryUserActivitiesPageactivities<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryUserActivitiesPageactivitiesListActivity
    implements FragmentListActivityFrag, QueryUserActivitiesPageactivities {
  QueryUserActivitiesPageactivitiesListActivity({
    required this.id,
    this.type,
    this.user,
    this.status,
    required this.createdAt,
    this.progress,
    required this.likeCount,
    required this.replyCount,
    this.isLiked,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory QueryUserActivitiesPageactivitiesListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$user = json['user'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$isLiked = json['isLiked'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      user: l$user == null
          ? null
          : QueryUserActivitiesPageactivitiesListActivityuser.fromJson(
              (l$user as Map<String, dynamic>)),
      status: (l$status as String?),
      createdAt: (l$createdAt as int),
      progress: (l$progress as String?),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      isLiked: (l$isLiked as bool?),
      media: l$media == null
          ? null
          : QueryUserActivitiesPageactivitiesListActivitymedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final QueryUserActivitiesPageactivitiesListActivityuser? user;

  final String? status;

  final int createdAt;

  final String? progress;

  final int likeCount;

  final int replyCount;

  final bool? isLiked;

  final QueryUserActivitiesPageactivitiesListActivitymedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$user = user;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$isLiked = isLiked;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$user,
      l$status,
      l$createdAt,
      l$progress,
      l$likeCount,
      l$replyCount,
      l$isLiked,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserActivitiesPageactivitiesListActivity) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivity
    on QueryUserActivitiesPageactivitiesListActivity {
  CopyWithQueryUserActivitiesPageactivitiesListActivity<
          QueryUserActivitiesPageactivitiesListActivity>
      get copyWith => CopyWithQueryUserActivitiesPageactivitiesListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivity<TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivity(
    QueryUserActivitiesPageactivitiesListActivity instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivity) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivity;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivity.stub(TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    QueryUserActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryUserActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  });
  CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> get user;
  CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<TRes> get media;
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivity(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivity _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? isLiked = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        user: user == _undefined
            ? _instance.user
            : (user as QueryUserActivitiesPageactivitiesListActivityuser?),
        status: status == _undefined ? _instance.status : (status as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryUserActivitiesPageactivitiesListActivitymedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQueryUserActivitiesPageactivitiesListActivityuser.stub(
            _then(_instance))
        : CopyWithQueryUserActivitiesPageactivitiesListActivityuser(
            local$user, (e) => call(user: e));
  }

  CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryUserActivitiesPageactivitiesListActivitymedia.stub(
            _then(_instance))
        : CopyWithQueryUserActivitiesPageactivitiesListActivitymedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    QueryUserActivitiesPageactivitiesListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QueryUserActivitiesPageactivitiesListActivitymedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> get user =>
      CopyWithQueryUserActivitiesPageactivitiesListActivityuser.stub(_res);

  CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<TRes> get media =>
      CopyWithQueryUserActivitiesPageactivitiesListActivitymedia.stub(_res);
}

class QueryUserActivitiesPageactivitiesListActivityuser
    implements FragmentListActivityFraguser {
  QueryUserActivitiesPageactivitiesListActivityuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QueryUserActivitiesPageactivitiesListActivityuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivityuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QueryUserActivitiesPageactivitiesListActivityuseravatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QueryUserActivitiesPageactivitiesListActivityuseravatar? avatar;

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
    if (!(other is QueryUserActivitiesPageactivitiesListActivityuser) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivityuser
    on QueryUserActivitiesPageactivitiesListActivityuser {
  CopyWithQueryUserActivitiesPageactivitiesListActivityuser<
          QueryUserActivitiesPageactivitiesListActivityuser>
      get copyWith => CopyWithQueryUserActivitiesPageactivitiesListActivityuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivityuser(
    QueryUserActivitiesPageactivitiesListActivityuser instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivityuser) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuser;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivityuser.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuser;

  TRes call({
    int? id,
    String? name,
    QueryUserActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar;
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuser<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuser(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivityuser _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesListActivityuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivityuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as QueryUserActivitiesPageactivitiesListActivityuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar.stub(
            _then(_instance))
        : CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuser<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesListActivityuser<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QueryUserActivitiesPageactivitiesListActivityuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes>
      get avatar =>
          CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar.stub(
              _res);
}

class QueryUserActivitiesPageactivitiesListActivityuseravatar
    implements FragmentListActivityFraguseravatar {
  QueryUserActivitiesPageactivitiesListActivityuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QueryUserActivitiesPageactivitiesListActivityuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivityuseravatar(
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
    if (!(other is QueryUserActivitiesPageactivitiesListActivityuseravatar) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivityuseravatar
    on QueryUserActivitiesPageactivitiesListActivityuseravatar {
  CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<
          QueryUserActivitiesPageactivitiesListActivityuseravatar>
      get copyWith =>
          CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<
    TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar(
    QueryUserActivitiesPageactivitiesListActivityuseravatar instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivityuseravatar) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuseravatar;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivityuseravatar(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivityuseravatar _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesListActivityuseravatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivityuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuseravatar<
        TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivityuseravatar<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivityuseravatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserActivitiesPageactivitiesListActivitymedia
    implements FragmentListActivityFragmedia {
  QueryUserActivitiesPageactivitiesListActivitymedia({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory QueryUserActivitiesPageactivitiesListActivitymedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivitymedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : QueryUserActivitiesPageactivitiesListActivitymediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : QueryUserActivitiesPageactivitiesListActivitymediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QueryUserActivitiesPageactivitiesListActivitymediacoverImage?
      coverImage;

  final QueryUserActivitiesPageactivitiesListActivitymediatitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserActivitiesPageactivitiesListActivitymedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivitymedia
    on QueryUserActivitiesPageactivitiesListActivitymedia {
  CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<
          QueryUserActivitiesPageactivitiesListActivitymedia>
      get copyWith =>
          CopyWithQueryUserActivitiesPageactivitiesListActivitymedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<
    TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymedia(
    QueryUserActivitiesPageactivitiesListActivitymedia instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivitymedia) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymedia;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymedia.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymedia;

  TRes call({
    int? id,
    QueryUserActivitiesPageactivitiesListActivitymediacoverImage? coverImage,
    QueryUserActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  });
  CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage;
  CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title;
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymedia<TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymedia(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivitymedia _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesListActivitymedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivitymedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryUserActivitiesPageactivitiesListActivitymediacoverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryUserActivitiesPageactivitiesListActivitymediatitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle.stub(
            _then(_instance))
        : CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymedia<TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymedia<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymedia(
      this._res);

  TRes _res;

  call({
    int? id,
    QueryUserActivitiesPageactivitiesListActivitymediacoverImage? coverImage,
    QueryUserActivitiesPageactivitiesListActivitymediatitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<TRes>
      get coverImage =>
          CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage
              .stub(_res);

  CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes>
      get title =>
          CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle.stub(
              _res);
}

class QueryUserActivitiesPageactivitiesListActivitymediacoverImage
    implements FragmentListActivityFragmediacoverImage {
  QueryUserActivitiesPageactivitiesListActivitymediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryUserActivitiesPageactivitiesListActivitymediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivitymediacoverImage(
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
    if (!(other
            is QueryUserActivitiesPageactivitiesListActivitymediacoverImage) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivitymediacoverImage
    on QueryUserActivitiesPageactivitiesListActivitymediacoverImage {
  CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
          QueryUserActivitiesPageactivitiesListActivitymediacoverImage>
      get copyWith =>
          CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
    TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage(
    QueryUserActivitiesPageactivitiesListActivitymediacoverImage instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivitymediacoverImage)
        then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivitymediacoverImage _instance;

  final TRes Function(
      QueryUserActivitiesPageactivitiesListActivitymediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivitymediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymediacoverImage<
            TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserActivitiesPageactivitiesListActivitymediatitle
    implements FragmentListActivityFragmediatitle {
  QueryUserActivitiesPageactivitiesListActivitymediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryUserActivitiesPageactivitiesListActivitymediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesListActivitymediatitle(
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
    if (!(other is QueryUserActivitiesPageactivitiesListActivitymediatitle) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesListActivitymediatitle
    on QueryUserActivitiesPageactivitiesListActivitymediatitle {
  CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<
          QueryUserActivitiesPageactivitiesListActivitymediatitle>
      get copyWith =>
          CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<
    TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle(
    QueryUserActivitiesPageactivitiesListActivitymediatitle instance,
    TRes Function(QueryUserActivitiesPageactivitiesListActivitymediatitle) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediatitle;

  factory CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesListActivitymediatitle(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesListActivitymediatitle _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesListActivitymediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserActivitiesPageactivitiesListActivitymediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediatitle<
        TRes>
    implements
        CopyWithQueryUserActivitiesPageactivitiesListActivitymediatitle<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesListActivitymediatitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserActivitiesPageactivitiesTextActivity
    implements QueryUserActivitiesPageactivities {
  QueryUserActivitiesPageactivitiesTextActivity(
      {this.$__typename = 'TextActivity'});

  factory QueryUserActivitiesPageactivitiesTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesTextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryUserActivitiesPageactivitiesTextActivity) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesTextActivity
    on QueryUserActivitiesPageactivitiesTextActivity {
  CopyWithQueryUserActivitiesPageactivitiesTextActivity<
          QueryUserActivitiesPageactivitiesTextActivity>
      get copyWith => CopyWithQueryUserActivitiesPageactivitiesTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesTextActivity<TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesTextActivity(
    QueryUserActivitiesPageactivitiesTextActivity instance,
    TRes Function(QueryUserActivitiesPageactivitiesTextActivity) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesTextActivity;

  factory CopyWithQueryUserActivitiesPageactivitiesTextActivity.stub(TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesTextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryUserActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesTextActivity(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesTextActivity _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryUserActivitiesPageactivitiesTextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesTextActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryUserActivitiesPageactivitiesMessageActivity
    implements QueryUserActivitiesPageactivities {
  QueryUserActivitiesPageactivitiesMessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory QueryUserActivitiesPageactivitiesMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QueryUserActivitiesPageactivitiesMessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QueryUserActivitiesPageactivitiesMessageActivity) ||
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

extension UtilityExtensionQueryUserActivitiesPageactivitiesMessageActivity
    on QueryUserActivitiesPageactivitiesMessageActivity {
  CopyWithQueryUserActivitiesPageactivitiesMessageActivity<
          QueryUserActivitiesPageactivitiesMessageActivity>
      get copyWith => CopyWithQueryUserActivitiesPageactivitiesMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserActivitiesPageactivitiesMessageActivity<TRes> {
  factory CopyWithQueryUserActivitiesPageactivitiesMessageActivity(
    QueryUserActivitiesPageactivitiesMessageActivity instance,
    TRes Function(QueryUserActivitiesPageactivitiesMessageActivity) then,
  ) = _CopyWithImplQueryUserActivitiesPageactivitiesMessageActivity;

  factory CopyWithQueryUserActivitiesPageactivitiesMessageActivity.stub(
          TRes res) =
      _CopyWithStubImplQueryUserActivitiesPageactivitiesMessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryUserActivitiesPageactivitiesMessageActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithImplQueryUserActivitiesPageactivitiesMessageActivity(
    this._instance,
    this._then,
  );

  final QueryUserActivitiesPageactivitiesMessageActivity _instance;

  final TRes Function(QueryUserActivitiesPageactivitiesMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryUserActivitiesPageactivitiesMessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryUserActivitiesPageactivitiesMessageActivity<TRes>
    implements CopyWithQueryUserActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithStubImplQueryUserActivitiesPageactivitiesMessageActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class VariablesMutationToggleActivityLike {
  factory VariablesMutationToggleActivityLike({
    int? id,
    EnumLikeableType? type,
  }) =>
      VariablesMutationToggleActivityLike._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
      });

  VariablesMutationToggleActivityLike._(this._$data);

  factory VariablesMutationToggleActivityLike.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumLikeableType((l$type as String));
    }
    return VariablesMutationToggleActivityLike._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  EnumLikeableType? get type => (_$data['type'] as EnumLikeableType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumLikeableType(l$type);
    }
    return result$data;
  }

  CopyWithVariablesMutationToggleActivityLike<
          VariablesMutationToggleActivityLike>
      get copyWith => CopyWithVariablesMutationToggleActivityLike(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesMutationToggleActivityLike) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWithVariablesMutationToggleActivityLike<TRes> {
  factory CopyWithVariablesMutationToggleActivityLike(
    VariablesMutationToggleActivityLike instance,
    TRes Function(VariablesMutationToggleActivityLike) then,
  ) = _CopyWithImplVariablesMutationToggleActivityLike;

  factory CopyWithVariablesMutationToggleActivityLike.stub(TRes res) =
      _CopyWithStubImplVariablesMutationToggleActivityLike;

  TRes call({
    int? id,
    EnumLikeableType? type,
  });
}

class _CopyWithImplVariablesMutationToggleActivityLike<TRes>
    implements CopyWithVariablesMutationToggleActivityLike<TRes> {
  _CopyWithImplVariablesMutationToggleActivityLike(
    this._instance,
    this._then,
  );

  final VariablesMutationToggleActivityLike _instance;

  final TRes Function(VariablesMutationToggleActivityLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) =>
      _then(VariablesMutationToggleActivityLike._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as EnumLikeableType?),
      }));
}

class _CopyWithStubImplVariablesMutationToggleActivityLike<TRes>
    implements CopyWithVariablesMutationToggleActivityLike<TRes> {
  _CopyWithStubImplVariablesMutationToggleActivityLike(this._res);

  TRes _res;

  call({
    int? id,
    EnumLikeableType? type,
  }) =>
      _res;
}

class MutationToggleActivityLike {
  MutationToggleActivityLike({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory MutationToggleActivityLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLike(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : MutationToggleActivityLikeToggleLikeV2.fromJson(
              (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final MutationToggleActivityLikeToggleLikeV2? ToggleLikeV2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleLikeV2 = ToggleLikeV2;
    _resultData['ToggleLikeV2'] = l$ToggleLikeV2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleLikeV2 = ToggleLikeV2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleLikeV2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is MutationToggleActivityLike) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleLikeV2 = ToggleLikeV2;
    final lOther$ToggleLikeV2 = other.ToggleLikeV2;
    if (l$ToggleLikeV2 != lOther$ToggleLikeV2) {
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

extension UtilityExtensionMutationToggleActivityLike
    on MutationToggleActivityLike {
  CopyWithMutationToggleActivityLike<MutationToggleActivityLike> get copyWith =>
      CopyWithMutationToggleActivityLike(
        this,
        (i) => i,
      );
}

abstract class CopyWithMutationToggleActivityLike<TRes> {
  factory CopyWithMutationToggleActivityLike(
    MutationToggleActivityLike instance,
    TRes Function(MutationToggleActivityLike) then,
  ) = _CopyWithImplMutationToggleActivityLike;

  factory CopyWithMutationToggleActivityLike.stub(TRes res) =
      _CopyWithStubImplMutationToggleActivityLike;

  TRes call({
    MutationToggleActivityLikeToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });
  CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> get ToggleLikeV2;
}

class _CopyWithImplMutationToggleActivityLike<TRes>
    implements CopyWithMutationToggleActivityLike<TRes> {
  _CopyWithImplMutationToggleActivityLike(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLike _instance;

  final TRes Function(MutationToggleActivityLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleActivityLike(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as MutationToggleActivityLikeToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWithMutationToggleActivityLikeToggleLikeV2.stub(_then(_instance))
        : CopyWithMutationToggleActivityLikeToggleLikeV2(
            local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImplMutationToggleActivityLike<TRes>
    implements CopyWithMutationToggleActivityLike<TRes> {
  _CopyWithStubImplMutationToggleActivityLike(this._res);

  TRes _res;

  call({
    MutationToggleActivityLikeToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;

  CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWithMutationToggleActivityLikeToggleLikeV2.stub(_res);
}

const documentNodeMutationToggleActivityLike = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleActivityLike'),
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
          name: NameNode(value: 'LikeableType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ToggleLikeV2'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ListActivity'),
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

class MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2({required this.$__typename});

  factory MutationToggleActivityLikeToggleLikeV2.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return MutationToggleActivityLikeToggleLikeV2ListActivity.fromJson(
            json);

      case "TextActivity":
        return MutationToggleActivityLikeToggleLikeV2TextActivity.fromJson(
            json);

      case "MessageActivity":
        return MutationToggleActivityLikeToggleLikeV2MessageActivity.fromJson(
            json);

      case "ActivityReply":
        return MutationToggleActivityLikeToggleLikeV2ActivityReply.fromJson(
            json);

      case "Thread":
        return MutationToggleActivityLikeToggleLikeV2Thread.fromJson(json);

      case "ThreadComment":
        return MutationToggleActivityLikeToggleLikeV2ThreadComment.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return MutationToggleActivityLikeToggleLikeV2(
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2
    on MutationToggleActivityLikeToggleLikeV2 {
  CopyWithMutationToggleActivityLikeToggleLikeV2<
          MutationToggleActivityLikeToggleLikeV2>
      get copyWith => CopyWithMutationToggleActivityLikeToggleLikeV2(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(MutationToggleActivityLikeToggleLikeV2ListActivity)
        listActivity,
    required _T Function(MutationToggleActivityLikeToggleLikeV2TextActivity)
        textActivity,
    required _T Function(MutationToggleActivityLikeToggleLikeV2MessageActivity)
        messageActivity,
    required _T Function(MutationToggleActivityLikeToggleLikeV2ActivityReply)
        activityReply,
    required _T Function(MutationToggleActivityLikeToggleLikeV2Thread) thread,
    required _T Function(MutationToggleActivityLikeToggleLikeV2ThreadComment)
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as MutationToggleActivityLikeToggleLikeV2ListActivity);

      case "TextActivity":
        return textActivity(
            this as MutationToggleActivityLikeToggleLikeV2TextActivity);

      case "MessageActivity":
        return messageActivity(
            this as MutationToggleActivityLikeToggleLikeV2MessageActivity);

      case "ActivityReply":
        return activityReply(
            this as MutationToggleActivityLikeToggleLikeV2ActivityReply);

      case "Thread":
        return thread(this as MutationToggleActivityLikeToggleLikeV2Thread);

      case "ThreadComment":
        return threadComment(
            this as MutationToggleActivityLikeToggleLikeV2ThreadComment);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(MutationToggleActivityLikeToggleLikeV2ListActivity)?
        listActivity,
    _T Function(MutationToggleActivityLikeToggleLikeV2TextActivity)?
        textActivity,
    _T Function(MutationToggleActivityLikeToggleLikeV2MessageActivity)?
        messageActivity,
    _T Function(MutationToggleActivityLikeToggleLikeV2ActivityReply)?
        activityReply,
    _T Function(MutationToggleActivityLikeToggleLikeV2Thread)? thread,
    _T Function(MutationToggleActivityLikeToggleLikeV2ThreadComment)?
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as MutationToggleActivityLikeToggleLikeV2ListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as MutationToggleActivityLikeToggleLikeV2TextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as MutationToggleActivityLikeToggleLikeV2MessageActivity);
        } else {
          return orElse();
        }

      case "ActivityReply":
        if (activityReply != null) {
          return activityReply(
              this as MutationToggleActivityLikeToggleLikeV2ActivityReply);
        } else {
          return orElse();
        }

      case "Thread":
        if (thread != null) {
          return thread(this as MutationToggleActivityLikeToggleLikeV2Thread);
        } else {
          return orElse();
        }

      case "ThreadComment":
        if (threadComment != null) {
          return threadComment(
              this as MutationToggleActivityLikeToggleLikeV2ThreadComment);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2(
    MutationToggleActivityLikeToggleLikeV2 instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2.stub(TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2<TRes>
    implements CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2 _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2<TRes>
    implements CopyWithMutationToggleActivityLikeToggleLikeV2<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleActivityLikeToggleLikeV2ListActivity
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2ListActivity({
    required this.id,
    this.$__typename = 'ListActivity',
  });

  factory MutationToggleActivityLikeToggleLikeV2ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2ListActivity(
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2ListActivity) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2ListActivity
    on MutationToggleActivityLikeToggleLikeV2ListActivity {
  CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity<
          MutationToggleActivityLikeToggleLikeV2ListActivity>
      get copyWith =>
          CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity<
    TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity(
    MutationToggleActivityLikeToggleLikeV2ListActivity instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2ListActivity) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2ListActivity;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ListActivity;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2ListActivity<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2ListActivity(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2ListActivity _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleActivityLikeToggleLikeV2ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ListActivity<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ListActivity<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class MutationToggleActivityLikeToggleLikeV2TextActivity
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2TextActivity(
      {this.$__typename = 'TextActivity'});

  factory MutationToggleActivityLikeToggleLikeV2TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2TextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2TextActivity) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2TextActivity
    on MutationToggleActivityLikeToggleLikeV2TextActivity {
  CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity<
          MutationToggleActivityLikeToggleLikeV2TextActivity>
      get copyWith =>
          CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity<
    TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity(
    MutationToggleActivityLikeToggleLikeV2TextActivity instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2TextActivity) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2TextActivity;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2TextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2TextActivity<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2TextActivity(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2TextActivity _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2TextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2TextActivity<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2TextActivity<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2TextActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleActivityLikeToggleLikeV2MessageActivity
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory MutationToggleActivityLikeToggleLikeV2MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2MessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2MessageActivity) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2MessageActivity
    on MutationToggleActivityLikeToggleLikeV2MessageActivity {
  CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity<
          MutationToggleActivityLikeToggleLikeV2MessageActivity>
      get copyWith =>
          CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity<
    TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity(
    MutationToggleActivityLikeToggleLikeV2MessageActivity instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2MessageActivity) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2MessageActivity;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2MessageActivity<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2MessageActivity(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2MessageActivity _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2MessageActivity<
        TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2MessageActivity<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleActivityLikeToggleLikeV2ActivityReply
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2ActivityReply(
      {this.$__typename = 'ActivityReply'});

  factory MutationToggleActivityLikeToggleLikeV2ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2ActivityReply(
        $__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2ActivityReply) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2ActivityReply
    on MutationToggleActivityLikeToggleLikeV2ActivityReply {
  CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply<
          MutationToggleActivityLikeToggleLikeV2ActivityReply>
      get copyWith =>
          CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply<
    TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply(
    MutationToggleActivityLikeToggleLikeV2ActivityReply instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2ActivityReply) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2ActivityReply;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ActivityReply;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2ActivityReply<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2ActivityReply(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2ActivityReply _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2ActivityReply)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2ActivityReply(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ActivityReply<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ActivityReply<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ActivityReply(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleActivityLikeToggleLikeV2Thread
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2Thread({this.$__typename = 'Thread'});

  factory MutationToggleActivityLikeToggleLikeV2Thread.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2Thread(
        $__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2Thread) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2Thread
    on MutationToggleActivityLikeToggleLikeV2Thread {
  CopyWithMutationToggleActivityLikeToggleLikeV2Thread<
          MutationToggleActivityLikeToggleLikeV2Thread>
      get copyWith => CopyWithMutationToggleActivityLikeToggleLikeV2Thread(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2Thread<TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2Thread(
    MutationToggleActivityLikeToggleLikeV2Thread instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2Thread) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2Thread;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2Thread.stub(TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2Thread;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2Thread<TRes>
    implements CopyWithMutationToggleActivityLikeToggleLikeV2Thread<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2Thread(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2Thread _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2Thread(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2Thread<TRes>
    implements CopyWithMutationToggleActivityLikeToggleLikeV2Thread<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2Thread(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleActivityLikeToggleLikeV2ThreadComment
    implements MutationToggleActivityLikeToggleLikeV2 {
  MutationToggleActivityLikeToggleLikeV2ThreadComment(
      {this.$__typename = 'ThreadComment'});

  factory MutationToggleActivityLikeToggleLikeV2ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleActivityLikeToggleLikeV2ThreadComment(
        $__typename: (l$$__typename as String));
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
    if (!(other is MutationToggleActivityLikeToggleLikeV2ThreadComment) ||
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

extension UtilityExtensionMutationToggleActivityLikeToggleLikeV2ThreadComment
    on MutationToggleActivityLikeToggleLikeV2ThreadComment {
  CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment<
          MutationToggleActivityLikeToggleLikeV2ThreadComment>
      get copyWith =>
          CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment<
    TRes> {
  factory CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment(
    MutationToggleActivityLikeToggleLikeV2ThreadComment instance,
    TRes Function(MutationToggleActivityLikeToggleLikeV2ThreadComment) then,
  ) = _CopyWithImplMutationToggleActivityLikeToggleLikeV2ThreadComment;

  factory CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ThreadComment;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleActivityLikeToggleLikeV2ThreadComment<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment<TRes> {
  _CopyWithImplMutationToggleActivityLikeToggleLikeV2ThreadComment(
    this._instance,
    this._then,
  );

  final MutationToggleActivityLikeToggleLikeV2ThreadComment _instance;

  final TRes Function(MutationToggleActivityLikeToggleLikeV2ThreadComment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleActivityLikeToggleLikeV2ThreadComment(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ThreadComment<TRes>
    implements
        CopyWithMutationToggleActivityLikeToggleLikeV2ThreadComment<TRes> {
  _CopyWithStubImplMutationToggleActivityLikeToggleLikeV2ThreadComment(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class VariablesQuerySingleActivity {
  factory VariablesQuerySingleActivity({int? id}) =>
      VariablesQuerySingleActivity._({
        if (id != null) r'id': id,
      });

  VariablesQuerySingleActivity._(this._$data);

  factory VariablesQuerySingleActivity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return VariablesQuerySingleActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWithVariablesQuerySingleActivity<VariablesQuerySingleActivity>
      get copyWith => CopyWithVariablesQuerySingleActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQuerySingleActivity) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWithVariablesQuerySingleActivity<TRes> {
  factory CopyWithVariablesQuerySingleActivity(
    VariablesQuerySingleActivity instance,
    TRes Function(VariablesQuerySingleActivity) then,
  ) = _CopyWithImplVariablesQuerySingleActivity;

  factory CopyWithVariablesQuerySingleActivity.stub(TRes res) =
      _CopyWithStubImplVariablesQuerySingleActivity;

  TRes call({int? id});
}

class _CopyWithImplVariablesQuerySingleActivity<TRes>
    implements CopyWithVariablesQuerySingleActivity<TRes> {
  _CopyWithImplVariablesQuerySingleActivity(
    this._instance,
    this._then,
  );

  final VariablesQuerySingleActivity _instance;

  final TRes Function(VariablesQuerySingleActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(VariablesQuerySingleActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImplVariablesQuerySingleActivity<TRes>
    implements CopyWithVariablesQuerySingleActivity<TRes> {
  _CopyWithStubImplVariablesQuerySingleActivity(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class QuerySingleActivity {
  QuerySingleActivity({
    this.Activity,
    this.$__typename = 'Query',
  });

  factory QuerySingleActivity.fromJson(Map<String, dynamic> json) {
    final l$Activity = json['Activity'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivity(
      Activity: l$Activity == null
          ? null
          : QuerySingleActivityActivity.fromJson(
              (l$Activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QuerySingleActivityActivity? Activity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Activity = Activity;
    _resultData['Activity'] = l$Activity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Activity = Activity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Activity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QuerySingleActivity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Activity = Activity;
    final lOther$Activity = other.Activity;
    if (l$Activity != lOther$Activity) {
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

extension UtilityExtensionQuerySingleActivity on QuerySingleActivity {
  CopyWithQuerySingleActivity<QuerySingleActivity> get copyWith =>
      CopyWithQuerySingleActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWithQuerySingleActivity<TRes> {
  factory CopyWithQuerySingleActivity(
    QuerySingleActivity instance,
    TRes Function(QuerySingleActivity) then,
  ) = _CopyWithImplQuerySingleActivity;

  factory CopyWithQuerySingleActivity.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivity;

  TRes call({
    QuerySingleActivityActivity? Activity,
    String? $__typename,
  });
  CopyWithQuerySingleActivityActivity<TRes> get Activity;
}

class _CopyWithImplQuerySingleActivity<TRes>
    implements CopyWithQuerySingleActivity<TRes> {
  _CopyWithImplQuerySingleActivity(
    this._instance,
    this._then,
  );

  final QuerySingleActivity _instance;

  final TRes Function(QuerySingleActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivity(
        Activity: Activity == _undefined
            ? _instance.Activity
            : (Activity as QuerySingleActivityActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQuerySingleActivityActivity<TRes> get Activity {
    final local$Activity = _instance.Activity;
    return local$Activity == null
        ? CopyWithQuerySingleActivityActivity.stub(_then(_instance))
        : CopyWithQuerySingleActivityActivity(
            local$Activity, (e) => call(Activity: e));
  }
}

class _CopyWithStubImplQuerySingleActivity<TRes>
    implements CopyWithQuerySingleActivity<TRes> {
  _CopyWithStubImplQuerySingleActivity(this._res);

  TRes _res;

  call({
    QuerySingleActivityActivity? Activity,
    String? $__typename,
  }) =>
      _res;

  CopyWithQuerySingleActivityActivity<TRes> get Activity =>
      CopyWithQuerySingleActivityActivity.stub(_res);
}

const documentNodeQuerySingleActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SingleActivity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Activity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ListActivity'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ListActivityFrag'),
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
  fragmentDefinitionListActivityFrag,
]);

class QuerySingleActivityActivity {
  QuerySingleActivityActivity({required this.$__typename});

  factory QuerySingleActivityActivity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return QuerySingleActivityActivityListActivity.fromJson(json);

      case "TextActivity":
        return QuerySingleActivityActivityTextActivity.fromJson(json);

      case "MessageActivity":
        return QuerySingleActivityActivityMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QuerySingleActivityActivity(
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
    if (!(other is QuerySingleActivityActivity) ||
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

extension UtilityExtensionQuerySingleActivityActivity
    on QuerySingleActivityActivity {
  CopyWithQuerySingleActivityActivity<QuerySingleActivityActivity>
      get copyWith => CopyWithQuerySingleActivityActivity(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QuerySingleActivityActivityListActivity) listActivity,
    required _T Function(QuerySingleActivityActivityTextActivity) textActivity,
    required _T Function(QuerySingleActivityActivityMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(this as QuerySingleActivityActivityListActivity);

      case "TextActivity":
        return textActivity(this as QuerySingleActivityActivityTextActivity);

      case "MessageActivity":
        return messageActivity(
            this as QuerySingleActivityActivityMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QuerySingleActivityActivityListActivity)? listActivity,
    _T Function(QuerySingleActivityActivityTextActivity)? textActivity,
    _T Function(QuerySingleActivityActivityMessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as QuerySingleActivityActivityListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as QuerySingleActivityActivityTextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QuerySingleActivityActivityMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQuerySingleActivityActivity<TRes> {
  factory CopyWithQuerySingleActivityActivity(
    QuerySingleActivityActivity instance,
    TRes Function(QuerySingleActivityActivity) then,
  ) = _CopyWithImplQuerySingleActivityActivity;

  factory CopyWithQuerySingleActivityActivity.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQuerySingleActivityActivity<TRes>
    implements CopyWithQuerySingleActivityActivity<TRes> {
  _CopyWithImplQuerySingleActivityActivity(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivity _instance;

  final TRes Function(QuerySingleActivityActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QuerySingleActivityActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQuerySingleActivityActivity<TRes>
    implements CopyWithQuerySingleActivityActivity<TRes> {
  _CopyWithStubImplQuerySingleActivityActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QuerySingleActivityActivityListActivity
    implements FragmentListActivityFrag, QuerySingleActivityActivity {
  QuerySingleActivityActivityListActivity({
    required this.id,
    this.type,
    this.user,
    this.status,
    required this.createdAt,
    this.progress,
    required this.likeCount,
    required this.replyCount,
    this.isLiked,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory QuerySingleActivityActivityListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$user = json['user'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$progress = json['progress'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$isLiked = json['isLiked'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      user: l$user == null
          ? null
          : QuerySingleActivityActivityListActivityuser.fromJson(
              (l$user as Map<String, dynamic>)),
      status: (l$status as String?),
      createdAt: (l$createdAt as int),
      progress: (l$progress as String?),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      isLiked: (l$isLiked as bool?),
      media: l$media == null
          ? null
          : QuerySingleActivityActivityListActivitymedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final QuerySingleActivityActivityListActivityuser? user;

  final String? status;

  final int createdAt;

  final String? progress;

  final int likeCount;

  final int replyCount;

  final bool? isLiked;

  final QuerySingleActivityActivityListActivitymedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$user = user;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$progress = progress;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$isLiked = isLiked;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$user,
      l$status,
      l$createdAt,
      l$progress,
      l$likeCount,
      l$replyCount,
      l$isLiked,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QuerySingleActivityActivityListActivity) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtensionQuerySingleActivityActivityListActivity
    on QuerySingleActivityActivityListActivity {
  CopyWithQuerySingleActivityActivityListActivity<
          QuerySingleActivityActivityListActivity>
      get copyWith => CopyWithQuerySingleActivityActivityListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivity<TRes> {
  factory CopyWithQuerySingleActivityActivityListActivity(
    QuerySingleActivityActivityListActivity instance,
    TRes Function(QuerySingleActivityActivityListActivity) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivity;

  factory CopyWithQuerySingleActivityActivityListActivity.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    QuerySingleActivityActivityListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QuerySingleActivityActivityListActivitymedia? media,
    String? $__typename,
  });
  CopyWithQuerySingleActivityActivityListActivityuser<TRes> get user;
  CopyWithQuerySingleActivityActivityListActivitymedia<TRes> get media;
}

class _CopyWithImplQuerySingleActivityActivityListActivity<TRes>
    implements CopyWithQuerySingleActivityActivityListActivity<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivity(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivity _instance;

  final TRes Function(QuerySingleActivityActivityListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? progress = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? isLiked = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        user: user == _undefined
            ? _instance.user
            : (user as QuerySingleActivityActivityListActivityuser?),
        status: status == _undefined ? _instance.status : (status as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        media: media == _undefined
            ? _instance.media
            : (media as QuerySingleActivityActivityListActivitymedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQuerySingleActivityActivityListActivityuser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithQuerySingleActivityActivityListActivityuser.stub(
            _then(_instance))
        : CopyWithQuerySingleActivityActivityListActivityuser(
            local$user, (e) => call(user: e));
  }

  CopyWithQuerySingleActivityActivityListActivitymedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQuerySingleActivityActivityListActivitymedia.stub(
            _then(_instance))
        : CopyWithQuerySingleActivityActivityListActivitymedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQuerySingleActivityActivityListActivity<TRes>
    implements CopyWithQuerySingleActivityActivityListActivity<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    QuerySingleActivityActivityListActivityuser? user,
    String? status,
    int? createdAt,
    String? progress,
    int? likeCount,
    int? replyCount,
    bool? isLiked,
    QuerySingleActivityActivityListActivitymedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQuerySingleActivityActivityListActivityuser<TRes> get user =>
      CopyWithQuerySingleActivityActivityListActivityuser.stub(_res);

  CopyWithQuerySingleActivityActivityListActivitymedia<TRes> get media =>
      CopyWithQuerySingleActivityActivityListActivitymedia.stub(_res);
}

class QuerySingleActivityActivityListActivityuser
    implements FragmentListActivityFraguser {
  QuerySingleActivityActivityListActivityuser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory QuerySingleActivityActivityListActivityuser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivityuser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : QuerySingleActivityActivityListActivityuseravatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final QuerySingleActivityActivityListActivityuseravatar? avatar;

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
    if (!(other is QuerySingleActivityActivityListActivityuser) ||
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

extension UtilityExtensionQuerySingleActivityActivityListActivityuser
    on QuerySingleActivityActivityListActivityuser {
  CopyWithQuerySingleActivityActivityListActivityuser<
          QuerySingleActivityActivityListActivityuser>
      get copyWith => CopyWithQuerySingleActivityActivityListActivityuser(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivityuser<TRes> {
  factory CopyWithQuerySingleActivityActivityListActivityuser(
    QuerySingleActivityActivityListActivityuser instance,
    TRes Function(QuerySingleActivityActivityListActivityuser) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivityuser;

  factory CopyWithQuerySingleActivityActivityListActivityuser.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivityuser;

  TRes call({
    int? id,
    String? name,
    QuerySingleActivityActivityListActivityuseravatar? avatar,
    String? $__typename,
  });
  CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> get avatar;
}

class _CopyWithImplQuerySingleActivityActivityListActivityuser<TRes>
    implements CopyWithQuerySingleActivityActivityListActivityuser<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivityuser(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivityuser _instance;

  final TRes Function(QuerySingleActivityActivityListActivityuser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivityuser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as QuerySingleActivityActivityListActivityuseravatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithQuerySingleActivityActivityListActivityuseravatar.stub(
            _then(_instance))
        : CopyWithQuerySingleActivityActivityListActivityuseravatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplQuerySingleActivityActivityListActivityuser<TRes>
    implements CopyWithQuerySingleActivityActivityListActivityuser<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivityuser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    QuerySingleActivityActivityListActivityuseravatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> get avatar =>
      CopyWithQuerySingleActivityActivityListActivityuseravatar.stub(_res);
}

class QuerySingleActivityActivityListActivityuseravatar
    implements FragmentListActivityFraguseravatar {
  QuerySingleActivityActivityListActivityuseravatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory QuerySingleActivityActivityListActivityuseravatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivityuseravatar(
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
    if (!(other is QuerySingleActivityActivityListActivityuseravatar) ||
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

extension UtilityExtensionQuerySingleActivityActivityListActivityuseravatar
    on QuerySingleActivityActivityListActivityuseravatar {
  CopyWithQuerySingleActivityActivityListActivityuseravatar<
          QuerySingleActivityActivityListActivityuseravatar>
      get copyWith => CopyWithQuerySingleActivityActivityListActivityuseravatar(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> {
  factory CopyWithQuerySingleActivityActivityListActivityuseravatar(
    QuerySingleActivityActivityListActivityuseravatar instance,
    TRes Function(QuerySingleActivityActivityListActivityuseravatar) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivityuseravatar;

  factory CopyWithQuerySingleActivityActivityListActivityuseravatar.stub(
          TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivityuseravatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQuerySingleActivityActivityListActivityuseravatar<TRes>
    implements CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivityuseravatar(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivityuseravatar _instance;

  final TRes Function(QuerySingleActivityActivityListActivityuseravatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivityuseravatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQuerySingleActivityActivityListActivityuseravatar<TRes>
    implements CopyWithQuerySingleActivityActivityListActivityuseravatar<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivityuseravatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QuerySingleActivityActivityListActivitymedia
    implements FragmentListActivityFragmedia {
  QuerySingleActivityActivityListActivitymedia({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory QuerySingleActivityActivityListActivitymedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivitymedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : QuerySingleActivityActivityListActivitymediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : QuerySingleActivityActivityListActivitymediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final QuerySingleActivityActivityListActivitymediacoverImage? coverImage;

  final QuerySingleActivityActivityListActivitymediatitle? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QuerySingleActivityActivityListActivitymedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtensionQuerySingleActivityActivityListActivitymedia
    on QuerySingleActivityActivityListActivitymedia {
  CopyWithQuerySingleActivityActivityListActivitymedia<
          QuerySingleActivityActivityListActivitymedia>
      get copyWith => CopyWithQuerySingleActivityActivityListActivitymedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivitymedia<TRes> {
  factory CopyWithQuerySingleActivityActivityListActivitymedia(
    QuerySingleActivityActivityListActivitymedia instance,
    TRes Function(QuerySingleActivityActivityListActivitymedia) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivitymedia;

  factory CopyWithQuerySingleActivityActivityListActivitymedia.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivitymedia;

  TRes call({
    int? id,
    QuerySingleActivityActivityListActivitymediacoverImage? coverImage,
    QuerySingleActivityActivityListActivitymediatitle? title,
    String? $__typename,
  });
  CopyWithQuerySingleActivityActivityListActivitymediacoverImage<TRes>
      get coverImage;
  CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> get title;
}

class _CopyWithImplQuerySingleActivityActivityListActivitymedia<TRes>
    implements CopyWithQuerySingleActivityActivityListActivitymedia<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivitymedia(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivitymedia _instance;

  final TRes Function(QuerySingleActivityActivityListActivitymedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivitymedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QuerySingleActivityActivityListActivitymediacoverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as QuerySingleActivityActivityListActivitymediatitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQuerySingleActivityActivityListActivitymediacoverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQuerySingleActivityActivityListActivitymediacoverImage.stub(
            _then(_instance))
        : CopyWithQuerySingleActivityActivityListActivitymediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQuerySingleActivityActivityListActivitymediatitle.stub(
            _then(_instance))
        : CopyWithQuerySingleActivityActivityListActivitymediatitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplQuerySingleActivityActivityListActivitymedia<TRes>
    implements CopyWithQuerySingleActivityActivityListActivitymedia<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivitymedia(this._res);

  TRes _res;

  call({
    int? id,
    QuerySingleActivityActivityListActivitymediacoverImage? coverImage,
    QuerySingleActivityActivityListActivitymediatitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithQuerySingleActivityActivityListActivitymediacoverImage<TRes>
      get coverImage =>
          CopyWithQuerySingleActivityActivityListActivitymediacoverImage.stub(
              _res);

  CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> get title =>
      CopyWithQuerySingleActivityActivityListActivitymediatitle.stub(_res);
}

class QuerySingleActivityActivityListActivitymediacoverImage
    implements FragmentListActivityFragmediacoverImage {
  QuerySingleActivityActivityListActivitymediacoverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory QuerySingleActivityActivityListActivitymediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivitymediacoverImage(
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
    if (!(other is QuerySingleActivityActivityListActivitymediacoverImage) ||
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

extension UtilityExtensionQuerySingleActivityActivityListActivitymediacoverImage
    on QuerySingleActivityActivityListActivitymediacoverImage {
  CopyWithQuerySingleActivityActivityListActivitymediacoverImage<
          QuerySingleActivityActivityListActivitymediacoverImage>
      get copyWith =>
          CopyWithQuerySingleActivityActivityListActivitymediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivitymediacoverImage<
    TRes> {
  factory CopyWithQuerySingleActivityActivityListActivitymediacoverImage(
    QuerySingleActivityActivityListActivitymediacoverImage instance,
    TRes Function(QuerySingleActivityActivityListActivitymediacoverImage) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivitymediacoverImage;

  factory CopyWithQuerySingleActivityActivityListActivitymediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivitymediacoverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImplQuerySingleActivityActivityListActivitymediacoverImage<TRes>
    implements
        CopyWithQuerySingleActivityActivityListActivitymediacoverImage<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivitymediacoverImage(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivitymediacoverImage _instance;

  final TRes Function(QuerySingleActivityActivityListActivitymediacoverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivitymediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQuerySingleActivityActivityListActivitymediacoverImage<
        TRes>
    implements
        CopyWithQuerySingleActivityActivityListActivitymediacoverImage<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivitymediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class QuerySingleActivityActivityListActivitymediatitle
    implements FragmentListActivityFragmediatitle {
  QuerySingleActivityActivityListActivitymediatitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QuerySingleActivityActivityListActivitymediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityListActivitymediatitle(
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
    if (!(other is QuerySingleActivityActivityListActivitymediatitle) ||
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

extension UtilityExtensionQuerySingleActivityActivityListActivitymediatitle
    on QuerySingleActivityActivityListActivitymediatitle {
  CopyWithQuerySingleActivityActivityListActivitymediatitle<
          QuerySingleActivityActivityListActivitymediatitle>
      get copyWith => CopyWithQuerySingleActivityActivityListActivitymediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> {
  factory CopyWithQuerySingleActivityActivityListActivitymediatitle(
    QuerySingleActivityActivityListActivitymediatitle instance,
    TRes Function(QuerySingleActivityActivityListActivitymediatitle) then,
  ) = _CopyWithImplQuerySingleActivityActivityListActivitymediatitle;

  factory CopyWithQuerySingleActivityActivityListActivitymediatitle.stub(
          TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityListActivitymediatitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQuerySingleActivityActivityListActivitymediatitle<TRes>
    implements CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> {
  _CopyWithImplQuerySingleActivityActivityListActivitymediatitle(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityListActivitymediatitle _instance;

  final TRes Function(QuerySingleActivityActivityListActivitymediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QuerySingleActivityActivityListActivitymediatitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQuerySingleActivityActivityListActivitymediatitle<TRes>
    implements CopyWithQuerySingleActivityActivityListActivitymediatitle<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityListActivitymediatitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QuerySingleActivityActivityTextActivity
    implements QuerySingleActivityActivity {
  QuerySingleActivityActivityTextActivity({this.$__typename = 'TextActivity'});

  factory QuerySingleActivityActivityTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityTextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QuerySingleActivityActivityTextActivity) ||
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

extension UtilityExtensionQuerySingleActivityActivityTextActivity
    on QuerySingleActivityActivityTextActivity {
  CopyWithQuerySingleActivityActivityTextActivity<
          QuerySingleActivityActivityTextActivity>
      get copyWith => CopyWithQuerySingleActivityActivityTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityTextActivity<TRes> {
  factory CopyWithQuerySingleActivityActivityTextActivity(
    QuerySingleActivityActivityTextActivity instance,
    TRes Function(QuerySingleActivityActivityTextActivity) then,
  ) = _CopyWithImplQuerySingleActivityActivityTextActivity;

  factory CopyWithQuerySingleActivityActivityTextActivity.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityTextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQuerySingleActivityActivityTextActivity<TRes>
    implements CopyWithQuerySingleActivityActivityTextActivity<TRes> {
  _CopyWithImplQuerySingleActivityActivityTextActivity(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityTextActivity _instance;

  final TRes Function(QuerySingleActivityActivityTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QuerySingleActivityActivityTextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQuerySingleActivityActivityTextActivity<TRes>
    implements CopyWithQuerySingleActivityActivityTextActivity<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityTextActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QuerySingleActivityActivityMessageActivity
    implements QuerySingleActivityActivity {
  QuerySingleActivityActivityMessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory QuerySingleActivityActivityMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return QuerySingleActivityActivityMessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is QuerySingleActivityActivityMessageActivity) ||
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

extension UtilityExtensionQuerySingleActivityActivityMessageActivity
    on QuerySingleActivityActivityMessageActivity {
  CopyWithQuerySingleActivityActivityMessageActivity<
          QuerySingleActivityActivityMessageActivity>
      get copyWith => CopyWithQuerySingleActivityActivityMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQuerySingleActivityActivityMessageActivity<TRes> {
  factory CopyWithQuerySingleActivityActivityMessageActivity(
    QuerySingleActivityActivityMessageActivity instance,
    TRes Function(QuerySingleActivityActivityMessageActivity) then,
  ) = _CopyWithImplQuerySingleActivityActivityMessageActivity;

  factory CopyWithQuerySingleActivityActivityMessageActivity.stub(TRes res) =
      _CopyWithStubImplQuerySingleActivityActivityMessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQuerySingleActivityActivityMessageActivity<TRes>
    implements CopyWithQuerySingleActivityActivityMessageActivity<TRes> {
  _CopyWithImplQuerySingleActivityActivityMessageActivity(
    this._instance,
    this._then,
  );

  final QuerySingleActivityActivityMessageActivity _instance;

  final TRes Function(QuerySingleActivityActivityMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QuerySingleActivityActivityMessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQuerySingleActivityActivityMessageActivity<TRes>
    implements CopyWithQuerySingleActivityActivityMessageActivity<TRes> {
  _CopyWithStubImplQuerySingleActivityActivityMessageActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
