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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : FragmentMediaMin.fromJson((l$media as Map<String, dynamic>)),
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

  final FragmentUserMin? user;

  final FragmentMediaMin? media;

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
    if (other is! FragmentListActivity || runtimeType != other.runtimeType) {
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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentMediaMin<TRes> get media;
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMin?),
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

  CopyWithFragmentMediaMin<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$media, (e) => call(media: e));
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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);
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
);
const documentNodeFragmentListActivity = DocumentNode(definitions: [
  fragmentDefinitionListActivity,
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
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

  final FragmentUserMin? user;

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
    if (other is! FragmentTextActivity || runtimeType != other.runtimeType) {
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
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
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
);
const documentNodeFragmentTextActivity = DocumentNode(definitions: [
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserMin,
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
          : FragmentUserMin.fromJson((l$messenger as Map<String, dynamic>)),
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

  final FragmentUserMin? messenger;

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
    if (other is! FragmentMessageActivity || runtimeType != other.runtimeType) {
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
    FragmentUserMin? messenger,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get messenger;
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
            : (messenger as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMin<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$messenger, (e) => call(messenger: e));
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
    FragmentUserMin? messenger,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get messenger =>
      CopyWithFragmentUserMin.stub(_res);
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
);
const documentNodeFragmentMessageActivity = DocumentNode(definitions: [
  fragmentDefinitionMessageActivity,
  fragmentDefinitionUserMin,
]);

class VariablesFragmentActivityReply {
  factory VariablesFragmentActivityReply({bool? asHtml}) =>
      VariablesFragmentActivityReply._({
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesFragmentActivityReply._(this._$data);

  factory VariablesFragmentActivityReply.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesFragmentActivityReply._(result$data);
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

  CopyWithVariablesFragmentActivityReply<VariablesFragmentActivityReply>
      get copyWith => CopyWithVariablesFragmentActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesFragmentActivityReply ||
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

abstract class CopyWithVariablesFragmentActivityReply<TRes> {
  factory CopyWithVariablesFragmentActivityReply(
    VariablesFragmentActivityReply instance,
    TRes Function(VariablesFragmentActivityReply) then,
  ) = _CopyWithImplVariablesFragmentActivityReply;

  factory CopyWithVariablesFragmentActivityReply.stub(TRes res) =
      _CopyWithStubImplVariablesFragmentActivityReply;

  TRes call({bool? asHtml});
}

class _CopyWithImplVariablesFragmentActivityReply<TRes>
    implements CopyWithVariablesFragmentActivityReply<TRes> {
  _CopyWithImplVariablesFragmentActivityReply(
    this._instance,
    this._then,
  );

  final VariablesFragmentActivityReply _instance;

  final TRes Function(VariablesFragmentActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? asHtml = _undefined}) =>
      _then(VariablesFragmentActivityReply._({
        ..._instance._$data,
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesFragmentActivityReply<TRes>
    implements CopyWithVariablesFragmentActivityReply<TRes> {
  _CopyWithStubImplVariablesFragmentActivityReply(this._res);

  TRes _res;

  call({bool? asHtml}) => _res;
}

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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? text;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final FragmentUserMin? user;

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
    if (other is! FragmentActivityReply || runtimeType != other.runtimeType) {
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
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
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
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
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
          value: VariableNode(name: NameNode(value: 'asHtml')),
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
);
const documentNodeFragmentActivityReply = DocumentNode(definitions: [
  fragmentDefinitionActivityReply,
  fragmentDefinitionUserMin,
]);

class VariablesQueryActivities {
  factory VariablesQueryActivities({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
    int? userId,
  }) =>
      VariablesQueryActivities._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (isFollowing != null) r'isFollowing': isFollowing,
        if (typeIn != null) r'typeIn': typeIn,
        if (hasRepliesOrTypeText != null)
          r'hasRepliesOrTypeText': hasRepliesOrTypeText,
        if (userId != null) r'userId': userId,
      });

  VariablesQueryActivities._(this._$data);

  factory VariablesQueryActivities.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return VariablesQueryActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  List<EnumActivityType?>? get typeIn =>
      (_$data['typeIn'] as List<EnumActivityType?>?);

  bool? get hasRepliesOrTypeText => (_$data['hasRepliesOrTypeText'] as bool?);

  int? get userId => (_$data['userId'] as int?);

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
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWithVariablesQueryActivities<VariablesQueryActivities> get copyWith =>
      CopyWithVariablesQueryActivities(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryActivities ||
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
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
    final l$userId = userId;
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
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryActivities<TRes> {
  factory CopyWithVariablesQueryActivities(
    VariablesQueryActivities instance,
    TRes Function(VariablesQueryActivities) then,
  ) = _CopyWithImplVariablesQueryActivities;

  factory CopyWithVariablesQueryActivities.stub(TRes res) =
      _CopyWithStubImplVariablesQueryActivities;

  TRes call({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
    int? userId,
  });
}

class _CopyWithImplVariablesQueryActivities<TRes>
    implements CopyWithVariablesQueryActivities<TRes> {
  _CopyWithImplVariablesQueryActivities(
    this._instance,
    this._then,
  );

  final VariablesQueryActivities _instance;

  final TRes Function(VariablesQueryActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? isFollowing = _undefined,
    Object? typeIn = _undefined,
    Object? hasRepliesOrTypeText = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(VariablesQueryActivities._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
        if (typeIn != _undefined)
          'typeIn': (typeIn as List<EnumActivityType?>?),
        if (hasRepliesOrTypeText != _undefined)
          'hasRepliesOrTypeText': (hasRepliesOrTypeText as bool?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImplVariablesQueryActivities<TRes>
    implements CopyWithVariablesQueryActivities<TRes> {
  _CopyWithStubImplVariablesQueryActivities(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    bool? isFollowing,
    List<EnumActivityType?>? typeIn,
    bool? hasRepliesOrTypeText,
    int? userId,
  }) =>
      _res;
}

class QueryActivities {
  QueryActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryActivities(
      Page: l$Page == null
          ? null
          : QueryActivitiesPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryActivitiesPage? Page;

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
    if (other is! QueryActivities || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryActivities on QueryActivities {
  CopyWithQueryActivities<QueryActivities> get copyWith =>
      CopyWithQueryActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryActivities<TRes> {
  factory CopyWithQueryActivities(
    QueryActivities instance,
    TRes Function(QueryActivities) then,
  ) = _CopyWithImplQueryActivities;

  factory CopyWithQueryActivities.stub(TRes res) =
      _CopyWithStubImplQueryActivities;

  TRes call({
    QueryActivitiesPage? Page,
    String? $__typename,
  });
  CopyWithQueryActivitiesPage<TRes> get Page;
}

class _CopyWithImplQueryActivities<TRes>
    implements CopyWithQueryActivities<TRes> {
  _CopyWithImplQueryActivities(
    this._instance,
    this._then,
  );

  final QueryActivities _instance;

  final TRes Function(QueryActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryActivitiesPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryActivitiesPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryActivitiesPage.stub(_then(_instance))
        : CopyWithQueryActivitiesPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryActivities<TRes>
    implements CopyWithQueryActivities<TRes> {
  _CopyWithStubImplQueryActivities(this._res);

  TRes _res;

  call({
    QueryActivitiesPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryActivitiesPage<TRes> get Page =>
      CopyWithQueryActivitiesPage.stub(_res);
}

const documentNodeQueryActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activities'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
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
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
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
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
]);

class QueryActivitiesPage {
  QueryActivitiesPage({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory QueryActivitiesPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return QueryActivitiesPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryActivitiesPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryActivitiesPageactivities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryActivitiesPagepageInfo? pageInfo;

  final List<QueryActivitiesPageactivities?>? activities;

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
    if (other is! QueryActivitiesPage || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryActivitiesPage on QueryActivitiesPage {
  CopyWithQueryActivitiesPage<QueryActivitiesPage> get copyWith =>
      CopyWithQueryActivitiesPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryActivitiesPage<TRes> {
  factory CopyWithQueryActivitiesPage(
    QueryActivitiesPage instance,
    TRes Function(QueryActivitiesPage) then,
  ) = _CopyWithImplQueryActivitiesPage;

  factory CopyWithQueryActivitiesPage.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPage;

  TRes call({
    QueryActivitiesPagepageInfo? pageInfo,
    List<QueryActivitiesPageactivities?>? activities,
    String? $__typename,
  });
  CopyWithQueryActivitiesPagepageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<QueryActivitiesPageactivities?>? Function(
              Iterable<
                  CopyWithQueryActivitiesPageactivities<
                      QueryActivitiesPageactivities>?>?)
          _fn);
}

class _CopyWithImplQueryActivitiesPage<TRes>
    implements CopyWithQueryActivitiesPage<TRes> {
  _CopyWithImplQueryActivitiesPage(
    this._instance,
    this._then,
  );

  final QueryActivitiesPage _instance;

  final TRes Function(QueryActivitiesPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivitiesPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryActivitiesPagepageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<QueryActivitiesPageactivities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryActivitiesPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryActivitiesPagepageInfo.stub(_then(_instance))
        : CopyWithQueryActivitiesPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<QueryActivitiesPageactivities?>? Function(
                  Iterable<
                      CopyWithQueryActivitiesPageactivities<
                          QueryActivitiesPageactivities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWithQueryActivitiesPageactivities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryActivitiesPage<TRes>
    implements CopyWithQueryActivitiesPage<TRes> {
  _CopyWithStubImplQueryActivitiesPage(this._res);

  TRes _res;

  call({
    QueryActivitiesPagepageInfo? pageInfo,
    List<QueryActivitiesPageactivities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryActivitiesPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryActivitiesPagepageInfo.stub(_res);

  activities(_fn) => _res;
}

class QueryActivitiesPagepageInfo {
  QueryActivitiesPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryActivitiesPagepageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryActivitiesPagepageInfo(
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
    if (other is! QueryActivitiesPagepageInfo ||
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

extension UtilityExtensionQueryActivitiesPagepageInfo
    on QueryActivitiesPagepageInfo {
  CopyWithQueryActivitiesPagepageInfo<QueryActivitiesPagepageInfo>
      get copyWith => CopyWithQueryActivitiesPagepageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivitiesPagepageInfo<TRes> {
  factory CopyWithQueryActivitiesPagepageInfo(
    QueryActivitiesPagepageInfo instance,
    TRes Function(QueryActivitiesPagepageInfo) then,
  ) = _CopyWithImplQueryActivitiesPagepageInfo;

  factory CopyWithQueryActivitiesPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryActivitiesPagepageInfo<TRes>
    implements CopyWithQueryActivitiesPagepageInfo<TRes> {
  _CopyWithImplQueryActivitiesPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryActivitiesPagepageInfo _instance;

  final TRes Function(QueryActivitiesPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivitiesPagepageInfo(
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

class _CopyWithStubImplQueryActivitiesPagepageInfo<TRes>
    implements CopyWithQueryActivitiesPagepageInfo<TRes> {
  _CopyWithStubImplQueryActivitiesPagepageInfo(this._res);

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

class QueryActivitiesPageactivities {
  QueryActivitiesPageactivities({required this.$__typename});

  factory QueryActivitiesPageactivities.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return QueryActivitiesPageactivitiesTextActivity.fromJson(json);

      case "ListActivity":
        return QueryActivitiesPageactivitiesListActivity.fromJson(json);

      case "MessageActivity":
        return QueryActivitiesPageactivitiesMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryActivitiesPageactivities(
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
    if (other is! QueryActivitiesPageactivities ||
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

extension UtilityExtensionQueryActivitiesPageactivities
    on QueryActivitiesPageactivities {
  CopyWithQueryActivitiesPageactivities<QueryActivitiesPageactivities>
      get copyWith => CopyWithQueryActivitiesPageactivities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(QueryActivitiesPageactivitiesTextActivity)
        textActivity,
    required _T Function(QueryActivitiesPageactivitiesListActivity)
        listActivity,
    required _T Function(QueryActivitiesPageactivitiesMessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(this as QueryActivitiesPageactivitiesTextActivity);

      case "ListActivity":
        return listActivity(this as QueryActivitiesPageactivitiesListActivity);

      case "MessageActivity":
        return messageActivity(
            this as QueryActivitiesPageactivitiesMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryActivitiesPageactivitiesTextActivity)? textActivity,
    _T Function(QueryActivitiesPageactivitiesListActivity)? listActivity,
    _T Function(QueryActivitiesPageactivitiesMessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as QueryActivitiesPageactivitiesTextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as QueryActivitiesPageactivitiesListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as QueryActivitiesPageactivitiesMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryActivitiesPageactivities<TRes> {
  factory CopyWithQueryActivitiesPageactivities(
    QueryActivitiesPageactivities instance,
    TRes Function(QueryActivitiesPageactivities) then,
  ) = _CopyWithImplQueryActivitiesPageactivities;

  factory CopyWithQueryActivitiesPageactivities.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPageactivities;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryActivitiesPageactivities<TRes>
    implements CopyWithQueryActivitiesPageactivities<TRes> {
  _CopyWithImplQueryActivitiesPageactivities(
    this._instance,
    this._then,
  );

  final QueryActivitiesPageactivities _instance;

  final TRes Function(QueryActivitiesPageactivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(QueryActivitiesPageactivities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplQueryActivitiesPageactivities<TRes>
    implements CopyWithQueryActivitiesPageactivities<TRes> {
  _CopyWithStubImplQueryActivitiesPageactivities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryActivitiesPageactivitiesTextActivity
    implements FragmentTextActivity, QueryActivitiesPageactivities {
  QueryActivitiesPageactivitiesTextActivity({
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

  factory QueryActivitiesPageactivitiesTextActivity.fromJson(
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
    return QueryActivitiesPageactivitiesTextActivity(
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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
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

  final FragmentUserMin? user;

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
    if (other is! QueryActivitiesPageactivitiesTextActivity ||
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

extension UtilityExtensionQueryActivitiesPageactivitiesTextActivity
    on QueryActivitiesPageactivitiesTextActivity {
  CopyWithQueryActivitiesPageactivitiesTextActivity<
          QueryActivitiesPageactivitiesTextActivity>
      get copyWith => CopyWithQueryActivitiesPageactivitiesTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivitiesPageactivitiesTextActivity<TRes> {
  factory CopyWithQueryActivitiesPageactivitiesTextActivity(
    QueryActivitiesPageactivitiesTextActivity instance,
    TRes Function(QueryActivitiesPageactivitiesTextActivity) then,
  ) = _CopyWithImplQueryActivitiesPageactivitiesTextActivity;

  factory CopyWithQueryActivitiesPageactivitiesTextActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPageactivitiesTextActivity;

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
    FragmentUserMin? user,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
}

class _CopyWithImplQueryActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithImplQueryActivitiesPageactivitiesTextActivity(
    this._instance,
    this._then,
  );

  final QueryActivitiesPageactivitiesTextActivity _instance;

  final TRes Function(QueryActivitiesPageactivitiesTextActivity) _then;

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
      _then(QueryActivitiesPageactivitiesTextActivity(
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

class _CopyWithStubImplQueryActivitiesPageactivitiesTextActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesTextActivity<TRes> {
  _CopyWithStubImplQueryActivitiesPageactivitiesTextActivity(this._res);

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
    FragmentUserMin? user,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class QueryActivitiesPageactivitiesListActivity
    implements FragmentListActivity, QueryActivitiesPageactivities {
  QueryActivitiesPageactivitiesListActivity({
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

  factory QueryActivitiesPageactivitiesListActivity.fromJson(
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
    return QueryActivitiesPageactivitiesListActivity(
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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : FragmentMediaMin.fromJson((l$media as Map<String, dynamic>)),
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

  final FragmentUserMin? user;

  final FragmentMediaMin? media;

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
    if (other is! QueryActivitiesPageactivitiesListActivity ||
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

extension UtilityExtensionQueryActivitiesPageactivitiesListActivity
    on QueryActivitiesPageactivitiesListActivity {
  CopyWithQueryActivitiesPageactivitiesListActivity<
          QueryActivitiesPageactivitiesListActivity>
      get copyWith => CopyWithQueryActivitiesPageactivitiesListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivitiesPageactivitiesListActivity<TRes> {
  factory CopyWithQueryActivitiesPageactivitiesListActivity(
    QueryActivitiesPageactivitiesListActivity instance,
    TRes Function(QueryActivitiesPageactivitiesListActivity) then,
  ) = _CopyWithImplQueryActivitiesPageactivitiesListActivity;

  factory CopyWithQueryActivitiesPageactivitiesListActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPageactivitiesListActivity;

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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentMediaMin<TRes> get media;
}

class _CopyWithImplQueryActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithImplQueryActivitiesPageactivitiesListActivity(
    this._instance,
    this._then,
  );

  final QueryActivitiesPageactivitiesListActivity _instance;

  final TRes Function(QueryActivitiesPageactivitiesListActivity) _then;

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
      _then(QueryActivitiesPageactivitiesListActivity(
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMin?),
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

  CopyWithFragmentMediaMin<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryActivitiesPageactivitiesListActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesListActivity<TRes> {
  _CopyWithStubImplQueryActivitiesPageactivitiesListActivity(this._res);

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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);
}

class QueryActivitiesPageactivitiesMessageActivity
    implements FragmentMessageActivity, QueryActivitiesPageactivities {
  QueryActivitiesPageactivitiesMessageActivity({
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

  factory QueryActivitiesPageactivitiesMessageActivity.fromJson(
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
    return QueryActivitiesPageactivitiesMessageActivity(
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
          : FragmentUserMin.fromJson((l$messenger as Map<String, dynamic>)),
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

  final FragmentUserMin? messenger;

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
    if (other is! QueryActivitiesPageactivitiesMessageActivity ||
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

extension UtilityExtensionQueryActivitiesPageactivitiesMessageActivity
    on QueryActivitiesPageactivitiesMessageActivity {
  CopyWithQueryActivitiesPageactivitiesMessageActivity<
          QueryActivitiesPageactivitiesMessageActivity>
      get copyWith => CopyWithQueryActivitiesPageactivitiesMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivitiesPageactivitiesMessageActivity<TRes> {
  factory CopyWithQueryActivitiesPageactivitiesMessageActivity(
    QueryActivitiesPageactivitiesMessageActivity instance,
    TRes Function(QueryActivitiesPageactivitiesMessageActivity) then,
  ) = _CopyWithImplQueryActivitiesPageactivitiesMessageActivity;

  factory CopyWithQueryActivitiesPageactivitiesMessageActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivitiesPageactivitiesMessageActivity;

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
    FragmentUserMin? messenger,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get messenger;
}

class _CopyWithImplQueryActivitiesPageactivitiesMessageActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithImplQueryActivitiesPageactivitiesMessageActivity(
    this._instance,
    this._then,
  );

  final QueryActivitiesPageactivitiesMessageActivity _instance;

  final TRes Function(QueryActivitiesPageactivitiesMessageActivity) _then;

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
      _then(QueryActivitiesPageactivitiesMessageActivity(
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
            : (messenger as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMin<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImplQueryActivitiesPageactivitiesMessageActivity<TRes>
    implements CopyWithQueryActivitiesPageactivitiesMessageActivity<TRes> {
  _CopyWithStubImplQueryActivitiesPageactivitiesMessageActivity(this._res);

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
    FragmentUserMin? messenger,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get messenger =>
      CopyWithFragmentUserMin.stub(_res);
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
    if (other is! VariablesQueryActivityReplies ||
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
    if (other is! QueryActivityReplies || runtimeType != other.runtimeType) {
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
  fragmentDefinitionUserMin,
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
    if (other is! QueryActivityRepliesActivity ||
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
    if (other is! QueryActivityRepliesActivityTextActivity ||
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
    if (other is! QueryActivityRepliesActivityListActivity ||
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
    if (other is! QueryActivityRepliesActivityMessageActivity ||
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

class VariablesQueryActivity {
  factory VariablesQueryActivity({
    int? activityId,
    EnumActivityType? type,
    bool? isFollowing,
    bool? hasReplies,
    bool? hasRepliesOrTypeText,
    List<int?>? idIn,
    List<int?>? idNotIn,
    List<int?>? userIdIn,
    List<int?>? userIdNotIn,
    List<int?>? messengerIdIn,
    List<int?>? messengerIdNotIn,
    List<int?>? mediaIdIn,
    List<int?>? mediaIdNotIn,
    List<EnumActivityType?>? typeIn,
    List<EnumActivityType?>? typeNotIn,
    List<EnumActivitySort?>? sort,
    bool? asHtml,
  }) =>
      VariablesQueryActivity._({
        if (activityId != null) r'activityId': activityId,
        if (type != null) r'type': type,
        if (isFollowing != null) r'isFollowing': isFollowing,
        if (hasReplies != null) r'hasReplies': hasReplies,
        if (hasRepliesOrTypeText != null)
          r'hasRepliesOrTypeText': hasRepliesOrTypeText,
        if (idIn != null) r'idIn': idIn,
        if (idNotIn != null) r'idNotIn': idNotIn,
        if (userIdIn != null) r'userIdIn': userIdIn,
        if (userIdNotIn != null) r'userIdNotIn': userIdNotIn,
        if (messengerIdIn != null) r'messengerIdIn': messengerIdIn,
        if (messengerIdNotIn != null) r'messengerIdNotIn': messengerIdNotIn,
        if (mediaIdIn != null) r'mediaIdIn': mediaIdIn,
        if (mediaIdNotIn != null) r'mediaIdNotIn': mediaIdNotIn,
        if (typeIn != null) r'typeIn': typeIn,
        if (typeNotIn != null) r'typeNotIn': typeNotIn,
        if (sort != null) r'sort': sort,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesQueryActivity._(this._$data);

  factory VariablesQueryActivity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumActivityType((l$type as String));
    }
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    if (data.containsKey('hasReplies')) {
      final l$hasReplies = data['hasReplies'];
      result$data['hasReplies'] = (l$hasReplies as bool?);
    }
    if (data.containsKey('hasRepliesOrTypeText')) {
      final l$hasRepliesOrTypeText = data['hasRepliesOrTypeText'];
      result$data['hasRepliesOrTypeText'] = (l$hasRepliesOrTypeText as bool?);
    }
    if (data.containsKey('idIn')) {
      final l$idIn = data['idIn'];
      result$data['idIn'] =
          (l$idIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('idNotIn')) {
      final l$idNotIn = data['idNotIn'];
      result$data['idNotIn'] =
          (l$idNotIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('userIdIn')) {
      final l$userIdIn = data['userIdIn'];
      result$data['userIdIn'] =
          (l$userIdIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('userIdNotIn')) {
      final l$userIdNotIn = data['userIdNotIn'];
      result$data['userIdNotIn'] =
          (l$userIdNotIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('messengerIdIn')) {
      final l$messengerIdIn = data['messengerIdIn'];
      result$data['messengerIdIn'] =
          (l$messengerIdIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('messengerIdNotIn')) {
      final l$messengerIdNotIn = data['messengerIdNotIn'];
      result$data['messengerIdNotIn'] = (l$messengerIdNotIn as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('mediaIdIn')) {
      final l$mediaIdIn = data['mediaIdIn'];
      result$data['mediaIdIn'] =
          (l$mediaIdIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('mediaIdNotIn')) {
      final l$mediaIdNotIn = data['mediaIdNotIn'];
      result$data['mediaIdNotIn'] =
          (l$mediaIdNotIn as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('typeIn')) {
      final l$typeIn = data['typeIn'];
      result$data['typeIn'] = (l$typeIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumActivityType((e as String)))
          .toList();
    }
    if (data.containsKey('typeNotIn')) {
      final l$typeNotIn = data['typeNotIn'];
      result$data['typeNotIn'] = (l$typeNotIn as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumActivityType((e as String)))
          .toList();
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJsonEnumActivitySort((e as String)))
          .toList();
    }
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesQueryActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get activityId => (_$data['activityId'] as int?);

  EnumActivityType? get type => (_$data['type'] as EnumActivityType?);

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  bool? get hasReplies => (_$data['hasReplies'] as bool?);

  bool? get hasRepliesOrTypeText => (_$data['hasRepliesOrTypeText'] as bool?);

  List<int?>? get idIn => (_$data['idIn'] as List<int?>?);

  List<int?>? get idNotIn => (_$data['idNotIn'] as List<int?>?);

  List<int?>? get userIdIn => (_$data['userIdIn'] as List<int?>?);

  List<int?>? get userIdNotIn => (_$data['userIdNotIn'] as List<int?>?);

  List<int?>? get messengerIdIn => (_$data['messengerIdIn'] as List<int?>?);

  List<int?>? get messengerIdNotIn =>
      (_$data['messengerIdNotIn'] as List<int?>?);

  List<int?>? get mediaIdIn => (_$data['mediaIdIn'] as List<int?>?);

  List<int?>? get mediaIdNotIn => (_$data['mediaIdNotIn'] as List<int?>?);

  List<EnumActivityType?>? get typeIn =>
      (_$data['typeIn'] as List<EnumActivityType?>?);

  List<EnumActivityType?>? get typeNotIn =>
      (_$data['typeNotIn'] as List<EnumActivityType?>?);

  List<EnumActivitySort?>? get sort =>
      (_$data['sort'] as List<EnumActivitySort?>?);

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumActivityType(l$type);
    }
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    if (_$data.containsKey('hasReplies')) {
      final l$hasReplies = hasReplies;
      result$data['hasReplies'] = l$hasReplies;
    }
    if (_$data.containsKey('hasRepliesOrTypeText')) {
      final l$hasRepliesOrTypeText = hasRepliesOrTypeText;
      result$data['hasRepliesOrTypeText'] = l$hasRepliesOrTypeText;
    }
    if (_$data.containsKey('idIn')) {
      final l$idIn = idIn;
      result$data['idIn'] = l$idIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('idNotIn')) {
      final l$idNotIn = idNotIn;
      result$data['idNotIn'] = l$idNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('userIdIn')) {
      final l$userIdIn = userIdIn;
      result$data['userIdIn'] = l$userIdIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('userIdNotIn')) {
      final l$userIdNotIn = userIdNotIn;
      result$data['userIdNotIn'] = l$userIdNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('messengerIdIn')) {
      final l$messengerIdIn = messengerIdIn;
      result$data['messengerIdIn'] = l$messengerIdIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('messengerIdNotIn')) {
      final l$messengerIdNotIn = messengerIdNotIn;
      result$data['messengerIdNotIn'] =
          l$messengerIdNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('mediaIdIn')) {
      final l$mediaIdIn = mediaIdIn;
      result$data['mediaIdIn'] = l$mediaIdIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('mediaIdNotIn')) {
      final l$mediaIdNotIn = mediaIdNotIn;
      result$data['mediaIdNotIn'] = l$mediaIdNotIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('typeIn')) {
      final l$typeIn = typeIn;
      result$data['typeIn'] = l$typeIn
          ?.map((e) => e == null ? null : toJsonEnumActivityType(e))
          .toList();
    }
    if (_$data.containsKey('typeNotIn')) {
      final l$typeNotIn = typeNotIn;
      result$data['typeNotIn'] = l$typeNotIn
          ?.map((e) => e == null ? null : toJsonEnumActivityType(e))
          .toList();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumActivitySort(e))
          .toList();
    }
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesQueryActivity<VariablesQueryActivity> get copyWith =>
      CopyWithVariablesQueryActivity(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! VariablesQueryActivity || runtimeType != other.runtimeType) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (_$data.containsKey('activityId') !=
        other._$data.containsKey('activityId')) {
      return false;
    }
    if (l$activityId != lOther$activityId) {
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
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (_$data.containsKey('isFollowing') !=
        other._$data.containsKey('isFollowing')) {
      return false;
    }
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    final l$hasReplies = hasReplies;
    final lOther$hasReplies = other.hasReplies;
    if (_$data.containsKey('hasReplies') !=
        other._$data.containsKey('hasReplies')) {
      return false;
    }
    if (l$hasReplies != lOther$hasReplies) {
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
    final l$idIn = idIn;
    final lOther$idIn = other.idIn;
    if (_$data.containsKey('idIn') != other._$data.containsKey('idIn')) {
      return false;
    }
    if (l$idIn != null && lOther$idIn != null) {
      if (l$idIn.length != lOther$idIn.length) {
        return false;
      }
      for (int i = 0; i < l$idIn.length; i++) {
        final l$idIn$entry = l$idIn[i];
        final lOther$idIn$entry = lOther$idIn[i];
        if (l$idIn$entry != lOther$idIn$entry) {
          return false;
        }
      }
    } else if (l$idIn != lOther$idIn) {
      return false;
    }
    final l$idNotIn = idNotIn;
    final lOther$idNotIn = other.idNotIn;
    if (_$data.containsKey('idNotIn') != other._$data.containsKey('idNotIn')) {
      return false;
    }
    if (l$idNotIn != null && lOther$idNotIn != null) {
      if (l$idNotIn.length != lOther$idNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$idNotIn.length; i++) {
        final l$idNotIn$entry = l$idNotIn[i];
        final lOther$idNotIn$entry = lOther$idNotIn[i];
        if (l$idNotIn$entry != lOther$idNotIn$entry) {
          return false;
        }
      }
    } else if (l$idNotIn != lOther$idNotIn) {
      return false;
    }
    final l$userIdIn = userIdIn;
    final lOther$userIdIn = other.userIdIn;
    if (_$data.containsKey('userIdIn') !=
        other._$data.containsKey('userIdIn')) {
      return false;
    }
    if (l$userIdIn != null && lOther$userIdIn != null) {
      if (l$userIdIn.length != lOther$userIdIn.length) {
        return false;
      }
      for (int i = 0; i < l$userIdIn.length; i++) {
        final l$userIdIn$entry = l$userIdIn[i];
        final lOther$userIdIn$entry = lOther$userIdIn[i];
        if (l$userIdIn$entry != lOther$userIdIn$entry) {
          return false;
        }
      }
    } else if (l$userIdIn != lOther$userIdIn) {
      return false;
    }
    final l$userIdNotIn = userIdNotIn;
    final lOther$userIdNotIn = other.userIdNotIn;
    if (_$data.containsKey('userIdNotIn') !=
        other._$data.containsKey('userIdNotIn')) {
      return false;
    }
    if (l$userIdNotIn != null && lOther$userIdNotIn != null) {
      if (l$userIdNotIn.length != lOther$userIdNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$userIdNotIn.length; i++) {
        final l$userIdNotIn$entry = l$userIdNotIn[i];
        final lOther$userIdNotIn$entry = lOther$userIdNotIn[i];
        if (l$userIdNotIn$entry != lOther$userIdNotIn$entry) {
          return false;
        }
      }
    } else if (l$userIdNotIn != lOther$userIdNotIn) {
      return false;
    }
    final l$messengerIdIn = messengerIdIn;
    final lOther$messengerIdIn = other.messengerIdIn;
    if (_$data.containsKey('messengerIdIn') !=
        other._$data.containsKey('messengerIdIn')) {
      return false;
    }
    if (l$messengerIdIn != null && lOther$messengerIdIn != null) {
      if (l$messengerIdIn.length != lOther$messengerIdIn.length) {
        return false;
      }
      for (int i = 0; i < l$messengerIdIn.length; i++) {
        final l$messengerIdIn$entry = l$messengerIdIn[i];
        final lOther$messengerIdIn$entry = lOther$messengerIdIn[i];
        if (l$messengerIdIn$entry != lOther$messengerIdIn$entry) {
          return false;
        }
      }
    } else if (l$messengerIdIn != lOther$messengerIdIn) {
      return false;
    }
    final l$messengerIdNotIn = messengerIdNotIn;
    final lOther$messengerIdNotIn = other.messengerIdNotIn;
    if (_$data.containsKey('messengerIdNotIn') !=
        other._$data.containsKey('messengerIdNotIn')) {
      return false;
    }
    if (l$messengerIdNotIn != null && lOther$messengerIdNotIn != null) {
      if (l$messengerIdNotIn.length != lOther$messengerIdNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$messengerIdNotIn.length; i++) {
        final l$messengerIdNotIn$entry = l$messengerIdNotIn[i];
        final lOther$messengerIdNotIn$entry = lOther$messengerIdNotIn[i];
        if (l$messengerIdNotIn$entry != lOther$messengerIdNotIn$entry) {
          return false;
        }
      }
    } else if (l$messengerIdNotIn != lOther$messengerIdNotIn) {
      return false;
    }
    final l$mediaIdIn = mediaIdIn;
    final lOther$mediaIdIn = other.mediaIdIn;
    if (_$data.containsKey('mediaIdIn') !=
        other._$data.containsKey('mediaIdIn')) {
      return false;
    }
    if (l$mediaIdIn != null && lOther$mediaIdIn != null) {
      if (l$mediaIdIn.length != lOther$mediaIdIn.length) {
        return false;
      }
      for (int i = 0; i < l$mediaIdIn.length; i++) {
        final l$mediaIdIn$entry = l$mediaIdIn[i];
        final lOther$mediaIdIn$entry = lOther$mediaIdIn[i];
        if (l$mediaIdIn$entry != lOther$mediaIdIn$entry) {
          return false;
        }
      }
    } else if (l$mediaIdIn != lOther$mediaIdIn) {
      return false;
    }
    final l$mediaIdNotIn = mediaIdNotIn;
    final lOther$mediaIdNotIn = other.mediaIdNotIn;
    if (_$data.containsKey('mediaIdNotIn') !=
        other._$data.containsKey('mediaIdNotIn')) {
      return false;
    }
    if (l$mediaIdNotIn != null && lOther$mediaIdNotIn != null) {
      if (l$mediaIdNotIn.length != lOther$mediaIdNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$mediaIdNotIn.length; i++) {
        final l$mediaIdNotIn$entry = l$mediaIdNotIn[i];
        final lOther$mediaIdNotIn$entry = lOther$mediaIdNotIn[i];
        if (l$mediaIdNotIn$entry != lOther$mediaIdNotIn$entry) {
          return false;
        }
      }
    } else if (l$mediaIdNotIn != lOther$mediaIdNotIn) {
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
    final l$typeNotIn = typeNotIn;
    final lOther$typeNotIn = other.typeNotIn;
    if (_$data.containsKey('typeNotIn') !=
        other._$data.containsKey('typeNotIn')) {
      return false;
    }
    if (l$typeNotIn != null && lOther$typeNotIn != null) {
      if (l$typeNotIn.length != lOther$typeNotIn.length) {
        return false;
      }
      for (int i = 0; i < l$typeNotIn.length; i++) {
        final l$typeNotIn$entry = l$typeNotIn[i];
        final lOther$typeNotIn$entry = lOther$typeNotIn[i];
        if (l$typeNotIn$entry != lOther$typeNotIn$entry) {
          return false;
        }
      }
    } else if (l$typeNotIn != lOther$typeNotIn) {
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
    final l$activityId = activityId;
    final l$type = type;
    final l$isFollowing = isFollowing;
    final l$hasReplies = hasReplies;
    final l$hasRepliesOrTypeText = hasRepliesOrTypeText;
    final l$idIn = idIn;
    final l$idNotIn = idNotIn;
    final l$userIdIn = userIdIn;
    final l$userIdNotIn = userIdNotIn;
    final l$messengerIdIn = messengerIdIn;
    final l$messengerIdNotIn = messengerIdNotIn;
    final l$mediaIdIn = mediaIdIn;
    final l$mediaIdNotIn = mediaIdNotIn;
    final l$typeIn = typeIn;
    final l$typeNotIn = typeNotIn;
    final l$sort = sort;
    final l$asHtml = asHtml;
    return Object.hashAll([
      _$data.containsKey('activityId') ? l$activityId : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
      _$data.containsKey('hasReplies') ? l$hasReplies : const {},
      _$data.containsKey('hasRepliesOrTypeText')
          ? l$hasRepliesOrTypeText
          : const {},
      _$data.containsKey('idIn')
          ? l$idIn == null
              ? null
              : Object.hashAll(l$idIn.map((v) => v))
          : const {},
      _$data.containsKey('idNotIn')
          ? l$idNotIn == null
              ? null
              : Object.hashAll(l$idNotIn.map((v) => v))
          : const {},
      _$data.containsKey('userIdIn')
          ? l$userIdIn == null
              ? null
              : Object.hashAll(l$userIdIn.map((v) => v))
          : const {},
      _$data.containsKey('userIdNotIn')
          ? l$userIdNotIn == null
              ? null
              : Object.hashAll(l$userIdNotIn.map((v) => v))
          : const {},
      _$data.containsKey('messengerIdIn')
          ? l$messengerIdIn == null
              ? null
              : Object.hashAll(l$messengerIdIn.map((v) => v))
          : const {},
      _$data.containsKey('messengerIdNotIn')
          ? l$messengerIdNotIn == null
              ? null
              : Object.hashAll(l$messengerIdNotIn.map((v) => v))
          : const {},
      _$data.containsKey('mediaIdIn')
          ? l$mediaIdIn == null
              ? null
              : Object.hashAll(l$mediaIdIn.map((v) => v))
          : const {},
      _$data.containsKey('mediaIdNotIn')
          ? l$mediaIdNotIn == null
              ? null
              : Object.hashAll(l$mediaIdNotIn.map((v) => v))
          : const {},
      _$data.containsKey('typeIn')
          ? l$typeIn == null
              ? null
              : Object.hashAll(l$typeIn.map((v) => v))
          : const {},
      _$data.containsKey('typeNotIn')
          ? l$typeNotIn == null
              ? null
              : Object.hashAll(l$typeNotIn.map((v) => v))
          : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('asHtml') ? l$asHtml : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryActivity<TRes> {
  factory CopyWithVariablesQueryActivity(
    VariablesQueryActivity instance,
    TRes Function(VariablesQueryActivity) then,
  ) = _CopyWithImplVariablesQueryActivity;

  factory CopyWithVariablesQueryActivity.stub(TRes res) =
      _CopyWithStubImplVariablesQueryActivity;

  TRes call({
    int? activityId,
    EnumActivityType? type,
    bool? isFollowing,
    bool? hasReplies,
    bool? hasRepliesOrTypeText,
    List<int?>? idIn,
    List<int?>? idNotIn,
    List<int?>? userIdIn,
    List<int?>? userIdNotIn,
    List<int?>? messengerIdIn,
    List<int?>? messengerIdNotIn,
    List<int?>? mediaIdIn,
    List<int?>? mediaIdNotIn,
    List<EnumActivityType?>? typeIn,
    List<EnumActivityType?>? typeNotIn,
    List<EnumActivitySort?>? sort,
    bool? asHtml,
  });
}

class _CopyWithImplVariablesQueryActivity<TRes>
    implements CopyWithVariablesQueryActivity<TRes> {
  _CopyWithImplVariablesQueryActivity(
    this._instance,
    this._then,
  );

  final VariablesQueryActivity _instance;

  final TRes Function(VariablesQueryActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activityId = _undefined,
    Object? type = _undefined,
    Object? isFollowing = _undefined,
    Object? hasReplies = _undefined,
    Object? hasRepliesOrTypeText = _undefined,
    Object? idIn = _undefined,
    Object? idNotIn = _undefined,
    Object? userIdIn = _undefined,
    Object? userIdNotIn = _undefined,
    Object? messengerIdIn = _undefined,
    Object? messengerIdNotIn = _undefined,
    Object? mediaIdIn = _undefined,
    Object? mediaIdNotIn = _undefined,
    Object? typeIn = _undefined,
    Object? typeNotIn = _undefined,
    Object? sort = _undefined,
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesQueryActivity._({
        ..._instance._$data,
        if (activityId != _undefined) 'activityId': (activityId as int?),
        if (type != _undefined) 'type': (type as EnumActivityType?),
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
        if (hasReplies != _undefined) 'hasReplies': (hasReplies as bool?),
        if (hasRepliesOrTypeText != _undefined)
          'hasRepliesOrTypeText': (hasRepliesOrTypeText as bool?),
        if (idIn != _undefined) 'idIn': (idIn as List<int?>?),
        if (idNotIn != _undefined) 'idNotIn': (idNotIn as List<int?>?),
        if (userIdIn != _undefined) 'userIdIn': (userIdIn as List<int?>?),
        if (userIdNotIn != _undefined)
          'userIdNotIn': (userIdNotIn as List<int?>?),
        if (messengerIdIn != _undefined)
          'messengerIdIn': (messengerIdIn as List<int?>?),
        if (messengerIdNotIn != _undefined)
          'messengerIdNotIn': (messengerIdNotIn as List<int?>?),
        if (mediaIdIn != _undefined) 'mediaIdIn': (mediaIdIn as List<int?>?),
        if (mediaIdNotIn != _undefined)
          'mediaIdNotIn': (mediaIdNotIn as List<int?>?),
        if (typeIn != _undefined)
          'typeIn': (typeIn as List<EnumActivityType?>?),
        if (typeNotIn != _undefined)
          'typeNotIn': (typeNotIn as List<EnumActivityType?>?),
        if (sort != _undefined) 'sort': (sort as List<EnumActivitySort?>?),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryActivity<TRes>
    implements CopyWithVariablesQueryActivity<TRes> {
  _CopyWithStubImplVariablesQueryActivity(this._res);

  TRes _res;

  call({
    int? activityId,
    EnumActivityType? type,
    bool? isFollowing,
    bool? hasReplies,
    bool? hasRepliesOrTypeText,
    List<int?>? idIn,
    List<int?>? idNotIn,
    List<int?>? userIdIn,
    List<int?>? userIdNotIn,
    List<int?>? messengerIdIn,
    List<int?>? messengerIdNotIn,
    List<int?>? mediaIdIn,
    List<int?>? mediaIdNotIn,
    List<EnumActivityType?>? typeIn,
    List<EnumActivityType?>? typeNotIn,
    List<EnumActivitySort?>? sort,
    bool? asHtml,
  }) =>
      _res;
}

class QueryActivity {
  QueryActivity({
    this.Activity,
    this.$__typename = 'Query',
  });

  factory QueryActivity.fromJson(Map<String, dynamic> json) {
    final l$Activity = json['Activity'];
    final l$$__typename = json['__typename'];
    return QueryActivity(
      Activity: l$Activity == null
          ? null
          : QueryActivityActivity.fromJson(
              (l$Activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryActivityActivity? Activity;

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
    if (other is! QueryActivity || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryActivity on QueryActivity {
  CopyWithQueryActivity<QueryActivity> get copyWith => CopyWithQueryActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryActivity<TRes> {
  factory CopyWithQueryActivity(
    QueryActivity instance,
    TRes Function(QueryActivity) then,
  ) = _CopyWithImplQueryActivity;

  factory CopyWithQueryActivity.stub(TRes res) = _CopyWithStubImplQueryActivity;

  TRes call({
    QueryActivityActivity? Activity,
    String? $__typename,
  });
  CopyWithQueryActivityActivity<TRes> get Activity;
}

class _CopyWithImplQueryActivity<TRes> implements CopyWithQueryActivity<TRes> {
  _CopyWithImplQueryActivity(
    this._instance,
    this._then,
  );

  final QueryActivity _instance;

  final TRes Function(QueryActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryActivity(
        Activity: Activity == _undefined
            ? _instance.Activity
            : (Activity as QueryActivityActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryActivityActivity<TRes> get Activity {
    final local$Activity = _instance.Activity;
    return local$Activity == null
        ? CopyWithQueryActivityActivity.stub(_then(_instance))
        : CopyWithQueryActivityActivity(
            local$Activity, (e) => call(Activity: e));
  }
}

class _CopyWithStubImplQueryActivity<TRes>
    implements CopyWithQueryActivity<TRes> {
  _CopyWithStubImplQueryActivity(this._res);

  TRes _res;

  call({
    QueryActivityActivity? Activity,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryActivityActivity<TRes> get Activity =>
      CopyWithQueryActivityActivity.stub(_res);
}

const documentNodeQueryActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityId')),
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
          name: NameNode(value: 'ActivityType'),
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
        variable: VariableNode(name: NameNode(value: 'hasReplies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'idIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'idNotIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userIdIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userIdNotIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'messengerIdIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'messengerIdNotIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaIdIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaIdNotIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
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
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'typeNotIn')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ActivityType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ActivitySort'),
            isNonNull: false,
          ),
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
        name: NameNode(value: 'Activity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'activityId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isFollowing'),
            value: VariableNode(name: NameNode(value: 'isFollowing')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hasReplies'),
            value: VariableNode(name: NameNode(value: 'hasReplies')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hasRepliesOrTypeText'),
            value: VariableNode(name: NameNode(value: 'hasRepliesOrTypeText')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id_in'),
            value: VariableNode(name: NameNode(value: 'idIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id_not_in'),
            value: VariableNode(name: NameNode(value: 'idNotIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId_in'),
            value: VariableNode(name: NameNode(value: 'userIdIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId_not_in'),
            value: VariableNode(name: NameNode(value: 'userIdNotIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'messengerId_in'),
            value: VariableNode(name: NameNode(value: 'messengerIdIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'messengerId_not_in'),
            value: VariableNode(name: NameNode(value: 'messengerIdNotIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId_in'),
            value: VariableNode(name: NameNode(value: 'mediaIdIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId_not_in'),
            value: VariableNode(name: NameNode(value: 'mediaIdNotIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type_in'),
            value: VariableNode(name: NameNode(value: 'typeIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type_not_in'),
            value: VariableNode(name: NameNode(value: 'typeNotIn')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: VariableNode(name: NameNode(value: 'sort')),
          ),
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
              FragmentSpreadNode(
                name: NameNode(value: 'TextActivity'),
                directives: [],
              ),
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
              FragmentSpreadNode(
                name: NameNode(value: 'ListActivity'),
                directives: [],
              ),
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
              FragmentSpreadNode(
                name: NameNode(value: 'MessageActivity'),
                directives: [],
              ),
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
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserMin,
  fragmentDefinitionActivityReply,
  fragmentDefinitionListActivity,
  fragmentDefinitionMediaMin,
  fragmentDefinitionMessageActivity,
]);

class QueryActivityActivity {
  QueryActivityActivity({required this.$__typename});

  factory QueryActivityActivity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return QueryActivityActivityTextActivity.fromJson(json);

      case "ListActivity":
        return QueryActivityActivityListActivity.fromJson(json);

      case "MessageActivity":
        return QueryActivityActivityMessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return QueryActivityActivity($__typename: (l$$__typename as String));
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
    if (other is! QueryActivityActivity || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryActivityActivity on QueryActivityActivity {
  CopyWithQueryActivityActivity<QueryActivityActivity> get copyWith =>
      CopyWithQueryActivityActivity(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(QueryActivityActivityTextActivity) textActivity,
    required _T Function(QueryActivityActivityListActivity) listActivity,
    required _T Function(QueryActivityActivityMessageActivity) messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(this as QueryActivityActivityTextActivity);

      case "ListActivity":
        return listActivity(this as QueryActivityActivityListActivity);

      case "MessageActivity":
        return messageActivity(this as QueryActivityActivityMessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(QueryActivityActivityTextActivity)? textActivity,
    _T Function(QueryActivityActivityListActivity)? listActivity,
    _T Function(QueryActivityActivityMessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as QueryActivityActivityTextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as QueryActivityActivityListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this as QueryActivityActivityMessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithQueryActivityActivity<TRes> {
  factory CopyWithQueryActivityActivity(
    QueryActivityActivity instance,
    TRes Function(QueryActivityActivity) then,
  ) = _CopyWithImplQueryActivityActivity;

  factory CopyWithQueryActivityActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityActivity;

  TRes call({String? $__typename});
}

class _CopyWithImplQueryActivityActivity<TRes>
    implements CopyWithQueryActivityActivity<TRes> {
  _CopyWithImplQueryActivityActivity(
    this._instance,
    this._then,
  );

  final QueryActivityActivity _instance;

  final TRes Function(QueryActivityActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(QueryActivityActivity(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImplQueryActivityActivity<TRes>
    implements CopyWithQueryActivityActivity<TRes> {
  _CopyWithStubImplQueryActivityActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class QueryActivityActivityTextActivity
    implements FragmentTextActivity, QueryActivityActivity {
  QueryActivityActivityTextActivity({
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
    this.replies,
  });

  factory QueryActivityActivityTextActivity.fromJson(
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
    final l$replies = json['replies'];
    return QueryActivityActivityTextActivity(
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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  final FragmentUserMin? user;

  final String $__typename;

  final List<FragmentActivityReply?>? replies;

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
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
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
    final l$replies = replies;
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
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryActivityActivityTextActivity ||
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
    return true;
  }
}

extension UtilityExtensionQueryActivityActivityTextActivity
    on QueryActivityActivityTextActivity {
  CopyWithQueryActivityActivityTextActivity<QueryActivityActivityTextActivity>
      get copyWith => CopyWithQueryActivityActivityTextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityActivityTextActivity<TRes> {
  factory CopyWithQueryActivityActivityTextActivity(
    QueryActivityActivityTextActivity instance,
    TRes Function(QueryActivityActivityTextActivity) then,
  ) = _CopyWithImplQueryActivityActivityTextActivity;

  factory CopyWithQueryActivityActivityTextActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityActivityTextActivity;

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
    FragmentUserMin? user,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  });
  CopyWithFragmentUserMin<TRes> get user;
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityActivityTextActivity<TRes>
    implements CopyWithQueryActivityActivityTextActivity<TRes> {
  _CopyWithImplQueryActivityActivityTextActivity(
    this._instance,
    this._then,
  );

  final QueryActivityActivityTextActivity _instance;

  final TRes Function(QueryActivityActivityTextActivity) _then;

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
    Object? replies = _undefined,
  }) =>
      _then(QueryActivityActivityTextActivity(
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }

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

class _CopyWithStubImplQueryActivityActivityTextActivity<TRes>
    implements CopyWithQueryActivityActivityTextActivity<TRes> {
  _CopyWithStubImplQueryActivityActivityTextActivity(this._res);

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
    FragmentUserMin? user,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  replies(_fn) => _res;
}

class QueryActivityActivityListActivity
    implements FragmentListActivity, QueryActivityActivity {
  QueryActivityActivityListActivity({
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
    this.replies,
  });

  factory QueryActivityActivityListActivity.fromJson(
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
    final l$replies = json['replies'];
    return QueryActivityActivityListActivity(
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
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : FragmentMediaMin.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  final FragmentUserMin? user;

  final FragmentMediaMin? media;

  final String $__typename;

  final List<FragmentActivityReply?>? replies;

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
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
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
    final l$replies = replies;
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
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryActivityActivityListActivity ||
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
    return true;
  }
}

extension UtilityExtensionQueryActivityActivityListActivity
    on QueryActivityActivityListActivity {
  CopyWithQueryActivityActivityListActivity<QueryActivityActivityListActivity>
      get copyWith => CopyWithQueryActivityActivityListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityActivityListActivity<TRes> {
  factory CopyWithQueryActivityActivityListActivity(
    QueryActivityActivityListActivity instance,
    TRes Function(QueryActivityActivityListActivity) then,
  ) = _CopyWithImplQueryActivityActivityListActivity;

  factory CopyWithQueryActivityActivityListActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityActivityListActivity;

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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentMediaMin<TRes> get media;
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityActivityListActivity<TRes>
    implements CopyWithQueryActivityActivityListActivity<TRes> {
  _CopyWithImplQueryActivityActivityListActivity(
    this._instance,
    this._then,
  );

  final QueryActivityActivityListActivity _instance;

  final TRes Function(QueryActivityActivityListActivity) _then;

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
    Object? replies = _undefined,
  }) =>
      _then(QueryActivityActivityListActivity(
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
        user: user == _undefined ? _instance.user : (user as FragmentUserMin?),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }

  CopyWithFragmentMediaMin<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMin.stub(_then(_instance))
        : CopyWithFragmentMediaMin(local$media, (e) => call(media: e));
  }

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

class _CopyWithStubImplQueryActivityActivityListActivity<TRes>
    implements CopyWithQueryActivityActivityListActivity<TRes> {
  _CopyWithStubImplQueryActivityActivityListActivity(this._res);

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
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);

  replies(_fn) => _res;
}

class QueryActivityActivityMessageActivity
    implements FragmentMessageActivity, QueryActivityActivity {
  QueryActivityActivityMessageActivity({
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
    this.replies,
  });

  factory QueryActivityActivityMessageActivity.fromJson(
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
    final l$replies = json['replies'];
    return QueryActivityActivityMessageActivity(
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
          : FragmentUserMin.fromJson((l$messenger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      replies: (l$replies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  final FragmentUserMin? messenger;

  final String $__typename;

  final List<FragmentActivityReply?>? replies;

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
    final l$replies = replies;
    _resultData['replies'] = l$replies?.map((e) => e?.toJson()).toList();
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
    final l$replies = replies;
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
      l$replies == null ? null : Object.hashAll(l$replies.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryActivityActivityMessageActivity ||
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
    return true;
  }
}

extension UtilityExtensionQueryActivityActivityMessageActivity
    on QueryActivityActivityMessageActivity {
  CopyWithQueryActivityActivityMessageActivity<
          QueryActivityActivityMessageActivity>
      get copyWith => CopyWithQueryActivityActivityMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryActivityActivityMessageActivity<TRes> {
  factory CopyWithQueryActivityActivityMessageActivity(
    QueryActivityActivityMessageActivity instance,
    TRes Function(QueryActivityActivityMessageActivity) then,
  ) = _CopyWithImplQueryActivityActivityMessageActivity;

  factory CopyWithQueryActivityActivityMessageActivity.stub(TRes res) =
      _CopyWithStubImplQueryActivityActivityMessageActivity;

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
    FragmentUserMin? messenger,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  });
  CopyWithFragmentUserMin<TRes> get messenger;
  TRes replies(
      Iterable<FragmentActivityReply?>? Function(
              Iterable<CopyWithFragmentActivityReply<FragmentActivityReply>?>?)
          _fn);
}

class _CopyWithImplQueryActivityActivityMessageActivity<TRes>
    implements CopyWithQueryActivityActivityMessageActivity<TRes> {
  _CopyWithImplQueryActivityActivityMessageActivity(
    this._instance,
    this._then,
  );

  final QueryActivityActivityMessageActivity _instance;

  final TRes Function(QueryActivityActivityMessageActivity) _then;

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
    Object? replies = _undefined,
  }) =>
      _then(QueryActivityActivityMessageActivity(
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
            : (messenger as FragmentUserMin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        replies: replies == _undefined
            ? _instance.replies
            : (replies as List<FragmentActivityReply?>?),
      ));

  CopyWithFragmentUserMin<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$messenger, (e) => call(messenger: e));
  }

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

class _CopyWithStubImplQueryActivityActivityMessageActivity<TRes>
    implements CopyWithQueryActivityActivityMessageActivity<TRes> {
  _CopyWithStubImplQueryActivityActivityMessageActivity(this._res);

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
    FragmentUserMin? messenger,
    String? $__typename,
    List<FragmentActivityReply?>? replies,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get messenger =>
      CopyWithFragmentUserMin.stub(_res);

  replies(_fn) => _res;
}
