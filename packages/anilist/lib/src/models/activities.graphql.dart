import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentListActivity {
  FragmentListActivity({
    required this.id,
    this.type,
    this.status,
    this.progress,
    this.isLocked,
    this.isSubscribed,
    required this.replyCount,
    required this.likeCount,
    this.isLiked,
    this.isPinned,
    this.siteUrl,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory FragmentListActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$replyCount = json['replyCount'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$isPinned = json['isPinned'];
    final l$siteUrl = json['siteUrl'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return FragmentListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      replyCount: (l$replyCount as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      isPinned: (l$isPinned as bool?),
      siteUrl: (l$siteUrl as String?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMinF.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : FragmentMediaMinF.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final String? status;

  final String? progress;

  final bool? isLocked;

  final bool? isSubscribed;

  final int replyCount;

  final int likeCount;

  final bool? isLiked;

  final bool? isPinned;

  final String? siteUrl;

  final int createdAt;

  final FragmentUserMinF? user;

  final FragmentMediaMinF? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isPinned = isPinned;
    _resultData['isPinned'] = l$isPinned;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
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
    final l$status = status;
    final l$progress = progress;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$replyCount = replyCount;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$isPinned = isPinned;
    final l$siteUrl = siteUrl;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$status,
      l$progress,
      l$isLocked,
      l$isSubscribed,
      l$replyCount,
      l$likeCount,
      l$isLiked,
      l$isPinned,
      l$siteUrl,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentListActivity) || runtimeType != other.runtimeType) {
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
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
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
    final l$isPinned = isPinned;
    final lOther$isPinned = other.isPinned;
    if (l$isPinned != lOther$isPinned) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
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

extension UtilityExtensionFragmentListActivity on FragmentListActivity {
  CopyWithFragmentListActivity<FragmentListActivity> get copyWith =>
      CopyWithFragmentListActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentListActivity<TRes> {
  factory CopyWithFragmentListActivity(
    FragmentListActivity instance,
    TRes Function(FragmentListActivity) then,
  ) = _CopyWithImplFragmentListActivity;

  factory CopyWithFragmentListActivity.stub(TRes res) =
      _CopyWithStubImplFragmentListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    String? status,
    String? progress,
    bool? isLocked,
    bool? isSubscribed,
    int? replyCount,
    int? likeCount,
    bool? isLiked,
    bool? isPinned,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? user,
    FragmentMediaMinF? media,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get user;
  CopyWithFragmentMediaMinF<TRes> get media;
}

class _CopyWithImplFragmentListActivity<TRes>
    implements CopyWithFragmentListActivity<TRes> {
  _CopyWithImplFragmentListActivity(
    this._instance,
    this._then,
  );

  final FragmentListActivity _instance;

  final TRes Function(FragmentListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? replyCount = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? isPinned = _undefined,
    Object? siteUrl = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isPinned:
            isPinned == _undefined ? _instance.isPinned : (isPinned as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined ? _instance.user : (user as FragmentUserMinF?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$user, (e) => call(user: e));
  }

  CopyWithFragmentMediaMinF<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMinF.stub(_then(_instance))
        : CopyWithFragmentMediaMinF(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplFragmentListActivity<TRes>
    implements CopyWithFragmentListActivity<TRes> {
  _CopyWithStubImplFragmentListActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    String? status,
    String? progress,
    bool? isLocked,
    bool? isSubscribed,
    int? replyCount,
    int? likeCount,
    bool? isLiked,
    bool? isPinned,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? user,
    FragmentMediaMinF? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get user =>
      CopyWithFragmentUserMinF.stub(_res);

  CopyWithFragmentMediaMinF<TRes> get media =>
      CopyWithFragmentMediaMinF.stub(_res);
}

const fragmentDefinitionListActivity = FragmentDefinitionNode(
  name: NameNode(value: 'ListActivity'),
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
      name: NameNode(value: 'isLocked'),
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
      name: NameNode(value: 'replyCount'),
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
      name: NameNode(value: 'isPinned'),
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
          name: NameNode(value: 'UserMinF'),
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
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaMinF'),
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
);
const documentNodeFragmentListActivity = DocumentNode(definitions: [
  fragmentDefinitionListActivity,
  fragmentDefinitionUserMinF,
  fragmentDefinitionMediaMinF,
]);

class FragmentTextActivity {
  FragmentTextActivity({
    required this.id,
    this.type,
    required this.replyCount,
    this.text,
    this.siteUrl,
    this.isLocked,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory FragmentTextActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$siteUrl = json['siteUrl'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return FragmentTextActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      siteUrl: (l$siteUrl as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMinF.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final int replyCount;

  final String? text;

  final String? siteUrl;

  final bool? isLocked;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final FragmentUserMinF? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$replyCount = replyCount;
    final l$text = text;
    final l$siteUrl = siteUrl;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$replyCount,
      l$text,
      l$siteUrl,
      l$isLocked,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
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
    if (!(other is FragmentTextActivity) || runtimeType != other.runtimeType) {
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
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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

extension UtilityExtensionFragmentTextActivity on FragmentTextActivity {
  CopyWithFragmentTextActivity<FragmentTextActivity> get copyWith =>
      CopyWithFragmentTextActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentTextActivity<TRes> {
  factory CopyWithFragmentTextActivity(
    FragmentTextActivity instance,
    TRes Function(FragmentTextActivity) then,
  ) = _CopyWithImplFragmentTextActivity;

  factory CopyWithFragmentTextActivity.stub(TRes res) =
      _CopyWithStubImplFragmentTextActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    int? replyCount,
    String? text,
    String? siteUrl,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get user;
}

class _CopyWithImplFragmentTextActivity<TRes>
    implements CopyWithFragmentTextActivity<TRes> {
  _CopyWithImplFragmentTextActivity(
    this._instance,
    this._then,
  );

  final FragmentTextActivity _instance;

  final TRes Function(FragmentTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? siteUrl = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentTextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplFragmentTextActivity<TRes>
    implements CopyWithFragmentTextActivity<TRes> {
  _CopyWithStubImplFragmentTextActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    int? replyCount,
    String? text,
    String? siteUrl,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get user =>
      CopyWithFragmentUserMinF.stub(_res);
}

const fragmentDefinitionTextActivity = FragmentDefinitionNode(
  name: NameNode(value: 'TextActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TextActivity'),
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
      name: NameNode(value: 'replyCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'text'),
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
      name: NameNode(value: 'siteUrl'),
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
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UserMinF'),
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
);
const documentNodeFragmentTextActivity = DocumentNode(definitions: [
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserMinF,
]);

class FragmentMessageActivity {
  FragmentMessageActivity({
    required this.id,
    this.recipientId,
    this.type,
    required this.replyCount,
    this.message,
    this.isLocked,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    this.isPrivate,
    this.siteUrl,
    required this.createdAt,
    this.messenger,
    this.$__typename = 'MessageActivity',
  });

  factory FragmentMessageActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$recipientId = json['recipientId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$message = json['message'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$isPrivate = json['isPrivate'];
    final l$siteUrl = json['siteUrl'];
    final l$createdAt = json['createdAt'];
    final l$messenger = json['messenger'];
    final l$$__typename = json['__typename'];
    return FragmentMessageActivity(
      id: (l$id as int),
      recipientId: (l$recipientId as int?),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      message: (l$message as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      isPrivate: (l$isPrivate as bool?),
      siteUrl: (l$siteUrl as String?),
      createdAt: (l$createdAt as int),
      messenger: l$messenger == null
          ? null
          : FragmentUserMinF.fromJson((l$messenger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? recipientId;

  final EnumActivityType? type;

  final int replyCount;

  final String? message;

  final bool? isLocked;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final bool? isPrivate;

  final String? siteUrl;

  final int createdAt;

  final FragmentUserMinF? messenger;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$recipientId = recipientId;
    _resultData['recipientId'] = l$recipientId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$recipientId = recipientId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$message = message;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$isPrivate = isPrivate;
    final l$siteUrl = siteUrl;
    final l$createdAt = createdAt;
    final l$messenger = messenger;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$recipientId,
      l$type,
      l$replyCount,
      l$message,
      l$isLocked,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
      l$isPrivate,
      l$siteUrl,
      l$createdAt,
      l$messenger,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
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

extension UtilityExtensionFragmentMessageActivity on FragmentMessageActivity {
  CopyWithFragmentMessageActivity<FragmentMessageActivity> get copyWith =>
      CopyWithFragmentMessageActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMessageActivity<TRes> {
  factory CopyWithFragmentMessageActivity(
    FragmentMessageActivity instance,
    TRes Function(FragmentMessageActivity) then,
  ) = _CopyWithImplFragmentMessageActivity;

  factory CopyWithFragmentMessageActivity.stub(TRes res) =
      _CopyWithStubImplFragmentMessageActivity;

  TRes call({
    int? id,
    int? recipientId,
    EnumActivityType? type,
    int? replyCount,
    String? message,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    bool? isPrivate,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? messenger,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get messenger;
}

class _CopyWithImplFragmentMessageActivity<TRes>
    implements CopyWithFragmentMessageActivity<TRes> {
  _CopyWithImplFragmentMessageActivity(
    this._instance,
    this._then,
  );

  final FragmentMessageActivity _instance;

  final TRes Function(FragmentMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? recipientId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? message = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? isPrivate = _undefined,
    Object? siteUrl = _undefined,
    Object? createdAt = _undefined,
    Object? messenger = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        recipientId: recipientId == _undefined
            ? _instance.recipientId
            : (recipientId as int?),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        message:
            message == _undefined ? _instance.message : (message as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as FragmentUserMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImplFragmentMessageActivity<TRes>
    implements CopyWithFragmentMessageActivity<TRes> {
  _CopyWithStubImplFragmentMessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? recipientId,
    EnumActivityType? type,
    int? replyCount,
    String? message,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    bool? isPrivate,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? messenger,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get messenger =>
      CopyWithFragmentUserMinF.stub(_res);
}

const fragmentDefinitionMessageActivity = FragmentDefinitionNode(
  name: NameNode(value: 'MessageActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MessageActivity'),
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
      name: NameNode(value: 'recipientId'),
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
      name: NameNode(value: 'replyCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'message'),
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
      name: NameNode(value: 'isLocked'),
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
      name: NameNode(value: 'isPrivate'),
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
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'messenger'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UserMinF'),
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
);
const documentNodeFragmentMessageActivity = DocumentNode(definitions: [
  fragmentDefinitionMessageActivity,
  fragmentDefinitionUserMinF,
]);

class FragmentActivityReply {
  FragmentActivityReply({
    required this.id,
    this.text,
    required this.likeCount,
    this.isLiked,
    required this.createdAt,
    this.user,
    this.$__typename = 'ActivityReply',
  });

  factory FragmentActivityReply.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return FragmentActivityReply(
      id: (l$id as int),
      text: (l$text as String?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMinF.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? text;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final FragmentUserMinF? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$text = text;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$likeCount,
      l$isLiked,
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
    if (!(other is FragmentActivityReply) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtensionFragmentActivityReply on FragmentActivityReply {
  CopyWithFragmentActivityReply<FragmentActivityReply> get copyWith =>
      CopyWithFragmentActivityReply(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentActivityReply<TRes> {
  factory CopyWithFragmentActivityReply(
    FragmentActivityReply instance,
    TRes Function(FragmentActivityReply) then,
  ) = _CopyWithImplFragmentActivityReply;

  factory CopyWithFragmentActivityReply.stub(TRes res) =
      _CopyWithStubImplFragmentActivityReply;

  TRes call({
    int? id,
    String? text,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get user;
}

class _CopyWithImplFragmentActivityReply<TRes>
    implements CopyWithFragmentActivityReply<TRes> {
  _CopyWithImplFragmentActivityReply(
    this._instance,
    this._then,
  );

  final FragmentActivityReply _instance;

  final TRes Function(FragmentActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentActivityReply(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        text: text == _undefined ? _instance.text : (text as String?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined ? _instance.user : (user as FragmentUserMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplFragmentActivityReply<TRes>
    implements CopyWithFragmentActivityReply<TRes> {
  _CopyWithStubImplFragmentActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    String? text,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get user =>
      CopyWithFragmentUserMinF.stub(_res);
}

const fragmentDefinitionActivityReply = FragmentDefinitionNode(
  name: NameNode(value: 'ActivityReply'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ActivityReply'),
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
      name: NameNode(value: 'text'),
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
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UserMinF'),
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
);
const documentNodeFragmentActivityReply = DocumentNode(definitions: [
  fragmentDefinitionActivityReply,
  fragmentDefinitionUserMinF,
]);

class VariablesQueryPage {
  factory VariablesQueryPage({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
  }) =>
      VariablesQueryPage._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (isFollowing != null) r'isFollowing': isFollowing,
        if (typeIn != null) r'typeIn': typeIn,
        if (hasRepliesOrTypeText != null)
          r'hasRepliesOrTypeText': hasRepliesOrTypeText,
      });

  VariablesQueryPage._(this._$data);

  factory VariablesQueryPage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    if (data.containsKey('typeIn')) {
      final l$typeIn = data['typeIn'];
      result$data['typeIn'] = (l$typeIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumActivityType((e as String)))
          .toList();
    }
    if (data.containsKey('hasRepliesOrTypeText')) {
      final l$hasRepliesOrTypeText = data['hasRepliesOrTypeText'];
      result$data['hasRepliesOrTypeText'] = (l$hasRepliesOrTypeText as bool?);
    }
    return VariablesQueryPage._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  List<EnumActivityType?>? get typeIn =>
      (_$data['typeIn'] as List<EnumActivityType?>?);

  bool? get hasRepliesOrTypeText => (_$data['hasRepliesOrTypeText'] as bool?);

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
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    if (_$data.containsKey('typeIn')) {
      final l$typeIn = typeIn;
      result$data['typeIn'] = l$typeIn
          ?.map((e) => e == null ? null : toJsonEnumActivityType(e))
          .toList();
    }
    if (_$data.containsKey('hasRepliesOrTypeText')) {
      final l$hasRepliesOrTypeText = hasRepliesOrTypeText;
      result$data['hasRepliesOrTypeText'] = l$hasRepliesOrTypeText;
    }
    return result$data;
  }

  CopyWithVariablesQueryPage<VariablesQueryPage> get copyWith =>
      CopyWithVariablesQueryPage(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryPage) || runtimeType != other.runtimeType) {
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
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (_$data.containsKey('isFollowing') !=
        other._$data.containsKey('isFollowing')) {
      return false;
    }
    if (l$isFollowing != lOther$isFollowing) {
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
    final l$hasRepliesOrTypeText = hasRepliesOrTypeText;
    final lOther$hasRepliesOrTypeText = other.hasRepliesOrTypeText;
    if (_$data.containsKey('hasRepliesOrTypeText') !=
        other._$data.containsKey('hasRepliesOrTypeText')) {
      return false;
    }
    if (l$hasRepliesOrTypeText != lOther$hasRepliesOrTypeText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$isFollowing = isFollowing;
    final l$typeIn = typeIn;
    final l$hasRepliesOrTypeText = hasRepliesOrTypeText;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
      _$data.containsKey('typeIn')
          ? l$typeIn == null
              ? null
              : Object.hashAll(l$typeIn.map((v) => v))
          : const {},
      _$data.containsKey('hasRepliesOrTypeText')
          ? l$hasRepliesOrTypeText
          : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryPage<TRes> {
  factory CopyWithVariablesQueryPage(
    VariablesQueryPage instance,
    TRes Function(VariablesQueryPage) then,
  ) = _CopyWithImplVariablesQueryPage;

  factory CopyWithVariablesQueryPage.stub(TRes res) =
      _CopyWithStubImplVariablesQueryPage;

  TRes call({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
  });
}

class _CopyWithImplVariablesQueryPage<TRes>
    implements CopyWithVariablesQueryPage<TRes> {
  _CopyWithImplVariablesQueryPage(
    this._instance,
    this._then,
  );

  final VariablesQueryPage _instance;

  final TRes Function(VariablesQueryPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? isFollowing = _undefined,
    Object? typeIn = _undefined,
    Object? hasRepliesOrTypeText = _undefined,
  }) =>
      _then(VariablesQueryPage._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
        if (typeIn != _undefined)
          'typeIn': (typeIn as List<EnumActivityType?>?),
        if (hasRepliesOrTypeText != _undefined)
          'hasRepliesOrTypeText': (hasRepliesOrTypeText as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryPage<TRes>
    implements CopyWithVariablesQueryPage<TRes> {
  _CopyWithStubImplVariablesQueryPage(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
  }) =>
      _res;
}

class QueryPage {
  QueryPage({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryPage.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryPage(
      Page: l$Page == null
          ? null
          : QueryPagePage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPagePage? Page;

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
    if (!(other is QueryPage) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryPage on QueryPage {
  CopyWithQueryPage<QueryPage> get copyWith => CopyWithQueryPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPage<TRes> {
  factory CopyWithQueryPage(
    QueryPage instance,
    TRes Function(QueryPage) then,
  ) = _CopyWithImplQueryPage;

  factory CopyWithQueryPage.stub(TRes res) = _CopyWithStubImplQueryPage;

  TRes call({
    QueryPagePage? Page,
    String? $__typename,
  });
  CopyWithQueryPagePage<TRes> get Page;
}

class _CopyWithImplQueryPage<TRes> implements CopyWithQueryPage<TRes> {
  _CopyWithImplQueryPage(
    this._instance,
    this._then,
  );

  final QueryPage _instance;

  final TRes Function(QueryPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPage(
        Page: Page == _undefined ? _instance.Page : (Page as QueryPagePage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPagePage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryPagePage.stub(_then(_instance))
        : CopyWithQueryPagePage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryPage<TRes> implements CopyWithQueryPage<TRes> {
  _CopyWithStubImplQueryPage(this._res);

  TRes _res;

  call({
    QueryPagePage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPagePage<TRes> get Page => CopyWithQueryPagePage.stub(_res);
}

const documentNodeQueryPage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Page'),
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
        variable: VariableNode(name: NameNode(value: 'isFollowing')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'typeIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ActivityType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
          EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
          EnumValueNode(name: NameNode(value: 'TEXT')),
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hasRepliesOrTypeText')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: VariableNode(name: NameNode(value: 'isFollowing')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'typeIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'hasRepliesOrTypeText'),
                value:
                    VariableNode(name: NameNode(value: 'hasRepliesOrTypeText')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'TextActivity'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ListActivity'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'MessageActivity'),
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
  fragmentDefinitionTextActivity,
  fragmentDefinitionListActivity,
  fragmentDefinitionMessageActivity,
  fragmentDefinitionUserMinF,
  fragmentDefinitionMediaMinF,
]);

class QueryPagePage {
  QueryPagePage({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory QueryPagePage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return QueryPagePage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryPagePagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryPagePageactivities.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPagePagepageInfo? pageInfo;

  final List<QueryPagePageactivities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryPagePage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtensionQueryPagePage on QueryPagePage {
  CopyWithQueryPagePage<QueryPagePage> get copyWith => CopyWithQueryPagePage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPagePage<TRes> {
  factory CopyWithQueryPagePage(
    QueryPagePage instance,
    TRes Function(QueryPagePage) then,
  ) = _CopyWithImplQueryPagePage;

  factory CopyWithQueryPagePage.stub(TRes res) = _CopyWithStubImplQueryPagePage;

  TRes call({
    QueryPagePagepageInfo? pageInfo,
    List<QueryPagePageactivities?>? activities,
    String? $__typename,
  });
  CopyWithQueryPagePagepageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<QueryPagePageactivities?>? Function(
              Iterable<
                  CopyWithQueryPagePageactivities<QueryPagePageactivities>?>?)
          _fn);
}

class _CopyWithImplQueryPagePage<TRes> implements CopyWithQueryPagePage<TRes> {
  _CopyWithImplQueryPagePage(
    this._instance,
    this._then,
  );

  final QueryPagePage _instance;

  final TRes Function(QueryPagePage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPagePage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryPagePagepageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<QueryPagePageactivities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPagePagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryPagePagepageInfo.stub(_then(_instance))
        : CopyWithQueryPagePagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<QueryPagePageactivities?>? Function(
                  Iterable<
                      CopyWithQueryPagePageactivities<
                          QueryPagePageactivities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWithQueryPagePageactivities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryPagePage<TRes>
    implements CopyWithQueryPagePage<TRes> {
  _CopyWithStubImplQueryPagePage(this._res);

  TRes _res;

  call({
    QueryPagePagepageInfo? pageInfo,
    List<QueryPagePageactivities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPagePagepageInfo<TRes> get pageInfo =>
      CopyWithQueryPagePagepageInfo.stub(_res);

  activities(_fn) => _res;
}

class QueryPagePagepageInfo {
  QueryPagePagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryPagePagepageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryPagePagepageInfo(
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
    if (!(other is QueryPagePagepageInfo) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryPagePagepageInfo on QueryPagePagepageInfo {
  CopyWithQueryPagePagepageInfo<QueryPagePagepageInfo> get copyWith =>
      CopyWithQueryPagePagepageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPagePagepageInfo<TRes> {
  factory CopyWithQueryPagePagepageInfo(
    QueryPagePagepageInfo instance,
    TRes Function(QueryPagePagepageInfo) then,
  ) = _CopyWithImplQueryPagePagepageInfo;

  factory CopyWithQueryPagePagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryPagePagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryPagePagepageInfo<TRes>
    implements CopyWithQueryPagePagepageInfo<TRes> {
  _CopyWithImplQueryPagePagepageInfo(
    this._instance,
    this._then,
  );

  final QueryPagePagepageInfo _instance;

  final TRes Function(QueryPagePagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPagePagepageInfo(
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

class _CopyWithStubImplQueryPagePagepageInfo<TRes>
    implements CopyWithQueryPagePagepageInfo<TRes> {
  _CopyWithStubImplQueryPagePagepageInfo(this._res);

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

class QueryPagePageactivities {
  QueryPagePageactivities({required this.$__typename});

  factory QueryPagePageactivities.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return QueryPagePageactivitiesTextActivity.fromJson(json);

      case "ListActivity":
        return QueryPagePageactivitiesListActivity.fromJson(json);

      case "MessageActivity":
        return QueryPagePageactivitiesMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryPagePageactivities($__typename: (l$$__typename as String));
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
    if (!(other is QueryPagePageactivities) ||
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

extension UtilityExtensionQueryPagePageactivities on QueryPagePageactivities {
  CopyWithQueryPagePageactivities<QueryPagePageactivities> get copyWith =>
      CopyWithQueryPagePageactivities(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(QueryPagePageactivitiesTextActivity) textActivity,
    required _T Function(QueryPagePageactivitiesListActivity) listActivity,
    required _T Function(QueryPagePageactivitiesMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(this as QueryPagePageactivitiesTextActivity);

      case "ListActivity":
        return listActivity(this as QueryPagePageactivitiesListActivity);

      case "MessageActivity":
        return messageActivity(this as QueryPagePageactivitiesMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryPagePageactivitiesTextActivity)? textActivity,
    _T Function(QueryPagePageactivitiesListActivity)? listActivity,
    _T Function(QueryPagePageactivitiesMessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as QueryPagePageactivitiesTextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as QueryPagePageactivitiesListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryPagePageactivitiesMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryPagePageactivities<TRes> {
  factory CopyWithQueryPagePageactivities(
    QueryPagePageactivities instance,
    TRes Function(QueryPagePageactivities) then,
  ) = _CopyWithImplQueryPagePageactivities;

  factory CopyWithQueryPagePageactivities.stub(TRes res) =
      _CopyWithStubImplQueryPagePageactivities;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryPagePageactivities<TRes>
    implements CopyWithQueryPagePageactivities<TRes> {
  _CopyWithImplQueryPagePageactivities(
    this._instance,
    this._then,
  );

  final QueryPagePageactivities _instance;

  final TRes Function(QueryPagePageactivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryPagePageactivities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryPagePageactivities<TRes>
    implements CopyWithQueryPagePageactivities<TRes> {
  _CopyWithStubImplQueryPagePageactivities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryPagePageactivitiesTextActivity
    implements FragmentTextActivity, QueryPagePageactivities {
  QueryPagePageactivitiesTextActivity({
    required this.id,
    this.type,
    required this.replyCount,
    this.text,
    this.siteUrl,
    this.isLocked,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory QueryPagePageactivitiesTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$siteUrl = json['siteUrl'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return QueryPagePageactivitiesTextActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      siteUrl: (l$siteUrl as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMinF.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final int replyCount;

  final String? text;

  final String? siteUrl;

  final bool? isLocked;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final FragmentUserMinF? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
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
    final l$replyCount = replyCount;
    final l$text = text;
    final l$siteUrl = siteUrl;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$replyCount,
      l$text,
      l$siteUrl,
      l$isLocked,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
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
    if (!(other is QueryPagePageactivitiesTextActivity) ||
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
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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

extension UtilityExtensionQueryPagePageactivitiesTextActivity
    on QueryPagePageactivitiesTextActivity {
  CopyWithQueryPagePageactivitiesTextActivity<
          QueryPagePageactivitiesTextActivity>
      get copyWith => CopyWithQueryPagePageactivitiesTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPagePageactivitiesTextActivity<TRes> {
  factory CopyWithQueryPagePageactivitiesTextActivity(
    QueryPagePageactivitiesTextActivity instance,
    TRes Function(QueryPagePageactivitiesTextActivity) then,
  ) = _CopyWithImplQueryPagePageactivitiesTextActivity;

  factory CopyWithQueryPagePageactivitiesTextActivity.stub(TRes res) =
      _CopyWithStubImplQueryPagePageactivitiesTextActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    int? replyCount,
    String? text,
    String? siteUrl,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get user;
}

class _CopyWithImplQueryPagePageactivitiesTextActivity<TRes>
    implements CopyWithQueryPagePageactivitiesTextActivity<TRes> {
  _CopyWithImplQueryPagePageactivitiesTextActivity(
    this._instance,
    this._then,
  );

  final QueryPagePageactivitiesTextActivity _instance;

  final TRes Function(QueryPagePageactivitiesTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? siteUrl = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPagePageactivitiesTextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplQueryPagePageactivitiesTextActivity<TRes>
    implements CopyWithQueryPagePageactivitiesTextActivity<TRes> {
  _CopyWithStubImplQueryPagePageactivitiesTextActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    int? replyCount,
    String? text,
    String? siteUrl,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMinF? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get user =>
      CopyWithFragmentUserMinF.stub(_res);
}

class QueryPagePageactivitiesListActivity
    implements FragmentListActivity, QueryPagePageactivities {
  QueryPagePageactivitiesListActivity({
    required this.id,
    this.type,
    this.status,
    this.progress,
    this.isLocked,
    this.isSubscribed,
    required this.replyCount,
    required this.likeCount,
    this.isLiked,
    this.isPinned,
    this.siteUrl,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory QueryPagePageactivitiesListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$replyCount = json['replyCount'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$isPinned = json['isPinned'];
    final l$siteUrl = json['siteUrl'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryPagePageactivitiesListActivity(
      id: (l$id as int),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      replyCount: (l$replyCount as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      isPinned: (l$isPinned as bool?),
      siteUrl: (l$siteUrl as String?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMinF.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : FragmentMediaMinF.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumActivityType? type;

  final String? status;

  final String? progress;

  final bool? isLocked;

  final bool? isSubscribed;

  final int replyCount;

  final int likeCount;

  final bool? isLiked;

  final bool? isPinned;

  final String? siteUrl;

  final int createdAt;

  final FragmentUserMinF? user;

  final FragmentMediaMinF? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isPinned = isPinned;
    _resultData['isPinned'] = l$isPinned;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
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
    final l$status = status;
    final l$progress = progress;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$replyCount = replyCount;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$isPinned = isPinned;
    final l$siteUrl = siteUrl;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$status,
      l$progress,
      l$isLocked,
      l$isSubscribed,
      l$replyCount,
      l$likeCount,
      l$isLiked,
      l$isPinned,
      l$siteUrl,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryPagePageactivitiesListActivity) ||
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
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
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
    final l$isPinned = isPinned;
    final lOther$isPinned = other.isPinned;
    if (l$isPinned != lOther$isPinned) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
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

extension UtilityExtensionQueryPagePageactivitiesListActivity
    on QueryPagePageactivitiesListActivity {
  CopyWithQueryPagePageactivitiesListActivity<
          QueryPagePageactivitiesListActivity>
      get copyWith => CopyWithQueryPagePageactivitiesListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPagePageactivitiesListActivity<TRes> {
  factory CopyWithQueryPagePageactivitiesListActivity(
    QueryPagePageactivitiesListActivity instance,
    TRes Function(QueryPagePageactivitiesListActivity) then,
  ) = _CopyWithImplQueryPagePageactivitiesListActivity;

  factory CopyWithQueryPagePageactivitiesListActivity.stub(TRes res) =
      _CopyWithStubImplQueryPagePageactivitiesListActivity;

  TRes call({
    int? id,
    EnumActivityType? type,
    String? status,
    String? progress,
    bool? isLocked,
    bool? isSubscribed,
    int? replyCount,
    int? likeCount,
    bool? isLiked,
    bool? isPinned,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? user,
    FragmentMediaMinF? media,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get user;
  CopyWithFragmentMediaMinF<TRes> get media;
}

class _CopyWithImplQueryPagePageactivitiesListActivity<TRes>
    implements CopyWithQueryPagePageactivitiesListActivity<TRes> {
  _CopyWithImplQueryPagePageactivitiesListActivity(
    this._instance,
    this._then,
  );

  final QueryPagePageactivitiesListActivity _instance;

  final TRes Function(QueryPagePageactivitiesListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? replyCount = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? isPinned = _undefined,
    Object? siteUrl = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPagePageactivitiesListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isPinned:
            isPinned == _undefined ? _instance.isPinned : (isPinned as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined ? _instance.user : (user as FragmentUserMinF?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$user, (e) => call(user: e));
  }

  CopyWithFragmentMediaMinF<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMinF.stub(_then(_instance))
        : CopyWithFragmentMediaMinF(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryPagePageactivitiesListActivity<TRes>
    implements CopyWithQueryPagePageactivitiesListActivity<TRes> {
  _CopyWithStubImplQueryPagePageactivitiesListActivity(this._res);

  TRes _res;

  call({
    int? id,
    EnumActivityType? type,
    String? status,
    String? progress,
    bool? isLocked,
    bool? isSubscribed,
    int? replyCount,
    int? likeCount,
    bool? isLiked,
    bool? isPinned,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? user,
    FragmentMediaMinF? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get user =>
      CopyWithFragmentUserMinF.stub(_res);

  CopyWithFragmentMediaMinF<TRes> get media =>
      CopyWithFragmentMediaMinF.stub(_res);
}

class QueryPagePageactivitiesMessageActivity
    implements FragmentMessageActivity, QueryPagePageactivities {
  QueryPagePageactivitiesMessageActivity({
    required this.id,
    this.recipientId,
    this.type,
    required this.replyCount,
    this.message,
    this.isLocked,
    this.isSubscribed,
    required this.likeCount,
    this.isLiked,
    this.isPrivate,
    this.siteUrl,
    required this.createdAt,
    this.messenger,
    this.$__typename = 'MessageActivity',
  });

  factory QueryPagePageactivitiesMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$recipientId = json['recipientId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$message = json['message'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$isPrivate = json['isPrivate'];
    final l$siteUrl = json['siteUrl'];
    final l$createdAt = json['createdAt'];
    final l$messenger = json['messenger'];
    final l$$__typename = json['__typename'];
    return QueryPagePageactivitiesMessageActivity(
      id: (l$id as int),
      recipientId: (l$recipientId as int?),
      type:
          l$type == null ? null : fromJsonEnumActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      message: (l$message as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      isPrivate: (l$isPrivate as bool?),
      siteUrl: (l$siteUrl as String?),
      createdAt: (l$createdAt as int),
      messenger: l$messenger == null
          ? null
          : FragmentUserMinF.fromJson((l$messenger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? recipientId;

  final EnumActivityType? type;

  final int replyCount;

  final String? message;

  final bool? isLocked;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final bool? isPrivate;

  final String? siteUrl;

  final int createdAt;

  final FragmentUserMinF? messenger;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$recipientId = recipientId;
    _resultData['recipientId'] = l$recipientId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJsonEnumActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$recipientId = recipientId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$message = message;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$isPrivate = isPrivate;
    final l$siteUrl = siteUrl;
    final l$createdAt = createdAt;
    final l$messenger = messenger;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$recipientId,
      l$type,
      l$replyCount,
      l$message,
      l$isLocked,
      l$isSubscribed,
      l$likeCount,
      l$isLiked,
      l$isPrivate,
      l$siteUrl,
      l$createdAt,
      l$messenger,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryPagePageactivitiesMessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
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

extension UtilityExtensionQueryPagePageactivitiesMessageActivity
    on QueryPagePageactivitiesMessageActivity {
  CopyWithQueryPagePageactivitiesMessageActivity<
          QueryPagePageactivitiesMessageActivity>
      get copyWith => CopyWithQueryPagePageactivitiesMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPagePageactivitiesMessageActivity<TRes> {
  factory CopyWithQueryPagePageactivitiesMessageActivity(
    QueryPagePageactivitiesMessageActivity instance,
    TRes Function(QueryPagePageactivitiesMessageActivity) then,
  ) = _CopyWithImplQueryPagePageactivitiesMessageActivity;

  factory CopyWithQueryPagePageactivitiesMessageActivity.stub(TRes res) =
      _CopyWithStubImplQueryPagePageactivitiesMessageActivity;

  TRes call({
    int? id,
    int? recipientId,
    EnumActivityType? type,
    int? replyCount,
    String? message,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    bool? isPrivate,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? messenger,
    String? $__typename,
  });
  CopyWithFragmentUserMinF<TRes> get messenger;
}

class _CopyWithImplQueryPagePageactivitiesMessageActivity<TRes>
    implements CopyWithQueryPagePageactivitiesMessageActivity<TRes> {
  _CopyWithImplQueryPagePageactivitiesMessageActivity(
    this._instance,
    this._then,
  );

  final QueryPagePageactivitiesMessageActivity _instance;

  final TRes Function(QueryPagePageactivitiesMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? recipientId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? message = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? isPrivate = _undefined,
    Object? siteUrl = _undefined,
    Object? createdAt = _undefined,
    Object? messenger = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPagePageactivitiesMessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        recipientId: recipientId == _undefined
            ? _instance.recipientId
            : (recipientId as int?),
        type: type == _undefined ? _instance.type : (type as EnumActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        message:
            message == _undefined ? _instance.message : (message as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as FragmentUserMinF?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinF<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMinF.stub(_then(_instance))
        : CopyWithFragmentUserMinF(local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImplQueryPagePageactivitiesMessageActivity<TRes>
    implements CopyWithQueryPagePageactivitiesMessageActivity<TRes> {
  _CopyWithStubImplQueryPagePageactivitiesMessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? recipientId,
    EnumActivityType? type,
    int? replyCount,
    String? message,
    bool? isLocked,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    bool? isPrivate,
    String? siteUrl,
    int? createdAt,
    FragmentUserMinF? messenger,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinF<TRes> get messenger =>
      CopyWithFragmentUserMinF.stub(_res);
}

class VariablesQueryActivityReplies {
  factory VariablesQueryActivityReplies({required int activityId}) =>
      VariablesQueryActivityReplies._({
        r'activityId': activityId,
      });

  VariablesQueryActivityReplies._(this._$data);

  factory VariablesQueryActivityReplies.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$activityId = data['activityId'];
    result$data['activityId'] = (l$activityId as int);
    return VariablesQueryActivityReplies._(result$data);
  }

  Map<String, dynamic> _$data;

  int get activityId => (_$data['activityId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$activityId = activityId;
    result$data['activityId'] = l$activityId;
    return result$data;
  }

  CopyWithVariablesQueryActivityReplies<VariablesQueryActivityReplies>
      get copyWith => CopyWithVariablesQueryActivityReplies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryActivityReplies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$activityId = activityId;
    return Object.hashAll([l$activityId]);
  }
}

abstract class CopyWithVariablesQueryActivityReplies<TRes> {
  factory CopyWithVariablesQueryActivityReplies(
    VariablesQueryActivityReplies instance,
    TRes Function(VariablesQueryActivityReplies) then,
  ) = _CopyWithImplVariablesQueryActivityReplies;

  factory CopyWithVariablesQueryActivityReplies.stub(TRes res) =
      _CopyWithStubImplVariablesQueryActivityReplies;

  TRes call({int? activityId});
}

class _CopyWithImplVariablesQueryActivityReplies<TRes>
    implements CopyWithVariablesQueryActivityReplies<TRes> {
  _CopyWithImplVariablesQueryActivityReplies(
    this._instance,
    this._then,
  );

  final VariablesQueryActivityReplies _instance;

  final TRes Function(VariablesQueryActivityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? activityId = _undefined}) =>
      _then(VariablesQueryActivityReplies._({
        ..._instance._$data,
        if (activityId != _undefined && activityId != null)
          'activityId': (activityId as int),
      }));
}

class _CopyWithStubImplVariablesQueryActivityReplies<TRes>
    implements CopyWithVariablesQueryActivityReplies<TRes> {
  _CopyWithStubImplVariablesQueryActivityReplies(this._res);

  TRes _res;

  call({int? activityId}) => _res;
}

class QueryActivityReplies {
  QueryActivityReplies({
    this.Activity,
    this.$__typename = 'Query',
  });

  factory QueryActivityReplies.fromJson(Map<String, dynamic> json) {
    final l$Activity = json['Activity'];
    final l$$__typename = json['__typename'];
    return QueryActivityReplies(
      Activity: l$Activity == null
          ? null
          : QueryActivityRepliesActivity.fromJson(
              (l$Activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryActivityRepliesActivity? Activity;

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
    if (!(other is QueryActivityReplies) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryActivityReplies on QueryActivityReplies {
  CopyWithQueryActivityReplies<QueryActivityReplies> get copyWith =>
      CopyWithQueryActivityReplies(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryActivityReplies<TRes> {
  factory CopyWithQueryActivityReplies(
    QueryActivityReplies instance,
    TRes Function(QueryActivityReplies) then,
  ) = _CopyWithImplQueryActivityReplies;

  factory CopyWithQueryActivityReplies.stub(TRes res) =
      _CopyWithStubImplQueryActivityReplies;

  TRes call({
    QueryActivityRepliesActivity? Activity,
    String? $__typename,
  });
  CopyWithQueryActivityRepliesActivity<TRes> get Activity;
}

class _CopyWithImplQueryActivityReplies<TRes>
    implements CopyWithQueryActivityReplies<TRes> {
  _CopyWithImplQueryActivityReplies(
    this._instance,
    this._then,
  );

  final QueryActivityReplies _instance;

  final TRes Function(QueryActivityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivityReplies(
        Activity: Activity == _undefined
            ? _instance.Activity
            : (Activity as QueryActivityRepliesActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryActivityRepliesActivity<TRes> get Activity {
    final local$Activity = _instance.Activity;
    return local$Activity == null
        ? CopyWithQueryActivityRepliesActivity.stub(_then(_instance))
        : CopyWithQueryActivityRepliesActivity(
            local$Activity, (e) => call(Activity: e));
  }
}

class _CopyWithStubImplQueryActivityReplies<TRes>
    implements CopyWithQueryActivityReplies<TRes> {
  _CopyWithStubImplQueryActivityReplies(this._res);

  TRes _res;

  call({
    QueryActivityRepliesActivity? Activity,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryActivityRepliesActivity<TRes> get Activity =>
      CopyWithQueryActivityRepliesActivity.stub(_res);
}

const documentNodeQueryActivityReplies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ActivityReplies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
            value: VariableNode(name: NameNode(value: 'activityId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TextActivity'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'replies'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ActivityReply'),
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
              name: NameNode(value: 'ListActivity'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'replies'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ActivityReply'),
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
              name: NameNode(value: 'MessageActivity'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'replies'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ActivityReply'),
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
  fragmentDefinitionActivityReply,
  fragmentDefinitionUserMinF,
]);

class QueryActivityRepliesActivity {
  QueryActivityRepliesActivity({required this.$__typename});

  factory QueryActivityRepliesActivity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return QueryActivityRepliesActivityTextActivity.fromJson(json);

      case "ListActivity":
        return QueryActivityRepliesActivityListActivity.fromJson(json);

      case "MessageActivity":
        return QueryActivityRepliesActivityMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryActivityRepliesActivity(
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
    if (!(other is QueryActivityRepliesActivity) ||
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

extension UtilityExtensionQueryActivityRepliesActivity
    on QueryActivityRepliesActivity {
  CopyWithQueryActivityRepliesActivity<QueryActivityRepliesActivity>
      get copyWith => CopyWithQueryActivityRepliesActivity(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryActivityRepliesActivityTextActivity) textActivity,
    required _T Function(QueryActivityRepliesActivityListActivity) listActivity,
    required _T Function(QueryActivityRepliesActivityMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(this as QueryActivityRepliesActivityTextActivity);

      case "ListActivity":
        return listActivity(this as QueryActivityRepliesActivityListActivity);

      case "MessageActivity":
        return messageActivity(
            this as QueryActivityRepliesActivityMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryActivityRepliesActivityTextActivity)? textActivity,
    _T Function(QueryActivityRepliesActivityListActivity)? listActivity,
    _T Function(QueryActivityRepliesActivityMessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as QueryActivityRepliesActivityTextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as QueryActivityRepliesActivityListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryActivityRepliesActivityMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryActivityRepliesActivity<TRes> {
  factory CopyWithQueryActivityRepliesActivity(
    QueryActivityRepliesActivity instance,
    TRes Function(QueryActivityRepliesActivity) then,
  ) = _CopyWithImplQueryActivityRepliesActivity;

  factory CopyWithQueryActivityRepliesActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityRepliesActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryActivityRepliesActivity<TRes>
    implements CopyWithQueryActivityRepliesActivity<TRes> {
  _CopyWithImplQueryActivityRepliesActivity(
    this._instance,
    this._then,
  );

  final QueryActivityRepliesActivity _instance;

  final TRes Function(QueryActivityRepliesActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryActivityRepliesActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryActivityRepliesActivity<TRes>
    implements CopyWithQueryActivityRepliesActivity<TRes> {
  _CopyWithStubImplQueryActivityRepliesActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryActivityRepliesActivityTextActivity
    implements QueryActivityRepliesActivity {
  QueryActivityRepliesActivityTextActivity({
    this.replies,
    this.$__typename = 'TextActivity',
  });

  factory QueryActivityRepliesActivityTextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$replies = json['replies'];
    final l$$__typename = json['__typename'];
    return QueryActivityRepliesActivityTextActivity(
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<FragmentActivityReply?>? replies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$replies = replies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryActivityRepliesActivityTextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$replies = replies;
    final lOther$replies = other.replies;
    if (l$replies != null && lOther$replies != null) {
      if (l$replies.length != lOther$replies.length) {
        return false;
      }
      for (int i = 0; i < l$replies.length; i++) {
        final l$replies$entry = l$replies[i];
        final lOther$replies$entry = lOther$replies[i];
        if (l$replies$entry != lOther$replies$entry) {
          return false;
        }
      }
    } else if (l$replies != lOther$replies) {
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

extension UtilityExtensionQueryActivityRepliesActivityTextActivity
    on QueryActivityRepliesActivityTextActivity {
  CopyWithQueryActivityRepliesActivityTextActivity<
          QueryActivityRepliesActivityTextActivity>
      get copyWith => CopyWithQueryActivityRepliesActivityTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityRepliesActivityTextActivity<TRes> {
  factory CopyWithQueryActivityRepliesActivityTextActivity(
    QueryActivityRepliesActivityTextActivity instance,
    TRes Function(QueryActivityRepliesActivityTextActivity) then,
  ) = _CopyWithImplQueryActivityRepliesActivityTextActivity;

  factory CopyWithQueryActivityRepliesActivityTextActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityRepliesActivityTextActivity;

  TRes call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  });
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityRepliesActivityTextActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityTextActivity<TRes> {
  _CopyWithImplQueryActivityRepliesActivityTextActivity(
    this._instance,
    this._then,
  );

  final QueryActivityRepliesActivityTextActivity _instance;

  final TRes Function(QueryActivityRepliesActivityTextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? replies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivityRepliesActivityTextActivity(
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes replies(
          Iterable<FragmentActivityReply?>? Function(
                  Iterable<
                      CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
              _fn) =>
      call(
          replies: _fn(_instance.replies?.map((e) => e == null
              ? null
              : CopyWithFragmentActivityReply(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryActivityRepliesActivityTextActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityTextActivity<TRes> {
  _CopyWithStubImplQueryActivityRepliesActivityTextActivity(this._res);

  TRes _res;

  call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  }) =>
      _res;

  replies(_fn) => _res;
}

class QueryActivityRepliesActivityListActivity
    implements QueryActivityRepliesActivity {
  QueryActivityRepliesActivityListActivity({
    this.replies,
    this.$__typename = 'ListActivity',
  });

  factory QueryActivityRepliesActivityListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$replies = json['replies'];
    final l$$__typename = json['__typename'];
    return QueryActivityRepliesActivityListActivity(
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<FragmentActivityReply?>? replies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$replies = replies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryActivityRepliesActivityListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$replies = replies;
    final lOther$replies = other.replies;
    if (l$replies != null && lOther$replies != null) {
      if (l$replies.length != lOther$replies.length) {
        return false;
      }
      for (int i = 0; i < l$replies.length; i++) {
        final l$replies$entry = l$replies[i];
        final lOther$replies$entry = lOther$replies[i];
        if (l$replies$entry != lOther$replies$entry) {
          return false;
        }
      }
    } else if (l$replies != lOther$replies) {
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

extension UtilityExtensionQueryActivityRepliesActivityListActivity
    on QueryActivityRepliesActivityListActivity {
  CopyWithQueryActivityRepliesActivityListActivity<
          QueryActivityRepliesActivityListActivity>
      get copyWith => CopyWithQueryActivityRepliesActivityListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityRepliesActivityListActivity<TRes> {
  factory CopyWithQueryActivityRepliesActivityListActivity(
    QueryActivityRepliesActivityListActivity instance,
    TRes Function(QueryActivityRepliesActivityListActivity) then,
  ) = _CopyWithImplQueryActivityRepliesActivityListActivity;

  factory CopyWithQueryActivityRepliesActivityListActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityRepliesActivityListActivity;

  TRes call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  });
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityRepliesActivityListActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityListActivity<TRes> {
  _CopyWithImplQueryActivityRepliesActivityListActivity(
    this._instance,
    this._then,
  );

  final QueryActivityRepliesActivityListActivity _instance;

  final TRes Function(QueryActivityRepliesActivityListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? replies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivityRepliesActivityListActivity(
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes replies(
          Iterable<FragmentActivityReply?>? Function(
                  Iterable<
                      CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
              _fn) =>
      call(
          replies: _fn(_instance.replies?.map((e) => e == null
              ? null
              : CopyWithFragmentActivityReply(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryActivityRepliesActivityListActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityListActivity<TRes> {
  _CopyWithStubImplQueryActivityRepliesActivityListActivity(this._res);

  TRes _res;

  call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  }) =>
      _res;

  replies(_fn) => _res;
}

class QueryActivityRepliesActivityMessageActivity
    implements QueryActivityRepliesActivity {
  QueryActivityRepliesActivityMessageActivity({
    this.replies,
    this.$__typename = 'MessageActivity',
  });

  factory QueryActivityRepliesActivityMessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$replies = json['replies'];
    final l$$__typename = json['__typename'];
    return QueryActivityRepliesActivityMessageActivity(
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<FragmentActivityReply?>? replies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$replies = replies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryActivityRepliesActivityMessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$replies = replies;
    final lOther$replies = other.replies;
    if (l$replies != null && lOther$replies != null) {
      if (l$replies.length != lOther$replies.length) {
        return false;
      }
      for (int i = 0; i < l$replies.length; i++) {
        final l$replies$entry = l$replies[i];
        final lOther$replies$entry = lOther$replies[i];
        if (l$replies$entry != lOther$replies$entry) {
          return false;
        }
      }
    } else if (l$replies != lOther$replies) {
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

extension UtilityExtensionQueryActivityRepliesActivityMessageActivity
    on QueryActivityRepliesActivityMessageActivity {
  CopyWithQueryActivityRepliesActivityMessageActivity<
          QueryActivityRepliesActivityMessageActivity>
      get copyWith => CopyWithQueryActivityRepliesActivityMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityRepliesActivityMessageActivity<TRes> {
  factory CopyWithQueryActivityRepliesActivityMessageActivity(
    QueryActivityRepliesActivityMessageActivity instance,
    TRes Function(QueryActivityRepliesActivityMessageActivity) then,
  ) = _CopyWithImplQueryActivityRepliesActivityMessageActivity;

  factory CopyWithQueryActivityRepliesActivityMessageActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityRepliesActivityMessageActivity;

  TRes call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  });
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityRepliesActivityMessageActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityMessageActivity<TRes> {
  _CopyWithImplQueryActivityRepliesActivityMessageActivity(
    this._instance,
    this._then,
  );

  final QueryActivityRepliesActivityMessageActivity _instance;

  final TRes Function(QueryActivityRepliesActivityMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? replies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivityRepliesActivityMessageActivity(
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes replies(
          Iterable<FragmentActivityReply?>? Function(
                  Iterable<
                      CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
              _fn) =>
      call(
          replies: _fn(_instance.replies?.map((e) => e == null
              ? null
              : CopyWithFragmentActivityReply(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryActivityRepliesActivityMessageActivity<TRes>
    implements CopyWithQueryActivityRepliesActivityMessageActivity<TRes> {
  _CopyWithStubImplQueryActivityRepliesActivityMessageActivity(this._res);

  TRes _res;

  call({
    List<FragmentActivityReply?>? replies,
    String? $__typename,
  }) =>
      _res;

  replies(_fn) => _res;
}
