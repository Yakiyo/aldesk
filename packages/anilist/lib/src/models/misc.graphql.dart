import 'activities.graphql.dart';
import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';
import 'threads.graphql.dart';

class VariablesMutationToggleLike {
  factory VariablesMutationToggleLike({
    required int id,
    required EnumLikeableType type,
    bool? asHtml,
  }) =>
      VariablesMutationToggleLike._({
        r'id': id,
        r'type': type,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesMutationToggleLike._(this._$data);

  factory VariablesMutationToggleLike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$type = data['type'];
    result$data['type'] = fromJsonEnumLikeableType((l$type as String));
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesMutationToggleLike._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  EnumLikeableType get type => (_$data['type'] as EnumLikeableType);

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = toJsonEnumLikeableType(l$type);
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
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
    if (other is! VariablesMutationToggleLike ||
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
    final l$id = id;
    final l$type = type;
    final l$asHtml = asHtml;
    return Object.hashAll([
      l$id,
      l$type,
      _$data.containsKey('asHtml') ? l$asHtml : const {},
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
    bool? asHtml,
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
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesMutationToggleLike._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (type != _undefined && type != null)
          'type': (type as EnumLikeableType),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesMutationToggleLike<TRes>
    implements CopyWithVariablesMutationToggleLike<TRes> {
  _CopyWithStubImplVariablesMutationToggleLike(this._res);

  TRes _res;

  call({
    int? id,
    EnumLikeableType? type,
    bool? asHtml,
  }) =>
      _res;
}

class MutationToggleLike {
  MutationToggleLike({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory MutationToggleLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return MutationToggleLike(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : MutationToggleLikeToggleLikeV2.fromJson(
              (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final MutationToggleLikeToggleLikeV2? ToggleLikeV2;

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
    if (other is! MutationToggleLike || runtimeType != other.runtimeType) {
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
    MutationToggleLikeToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });
  CopyWithMutationToggleLikeToggleLikeV2<TRes> get ToggleLikeV2;
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
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLike(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as MutationToggleLikeToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithMutationToggleLikeToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWithMutationToggleLikeToggleLikeV2.stub(_then(_instance))
        : CopyWithMutationToggleLikeToggleLikeV2(
            local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImplMutationToggleLike<TRes>
    implements CopyWithMutationToggleLike<TRes> {
  _CopyWithStubImplMutationToggleLike(this._res);

  TRes _res;

  call({
    MutationToggleLikeToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;

  CopyWithMutationToggleLikeToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWithMutationToggleLikeToggleLikeV2.stub(_res);
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
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
          FragmentSpreadNode(
            name: NameNode(value: 'ActivityReply'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'Thread'),
            directives: [],
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
  fragmentDefinitionActivityReply,
  fragmentDefinitionThread,
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
  fragmentDefinitionThreadMin,
]);

class MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2({required this.$__typename});

  factory MutationToggleLikeToggleLikeV2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return MutationToggleLikeToggleLikeV2ListActivity.fromJson(json);

      case "TextActivity":
        return MutationToggleLikeToggleLikeV2TextActivity.fromJson(json);

      case "MessageActivity":
        return MutationToggleLikeToggleLikeV2MessageActivity.fromJson(json);

      case "ActivityReply":
        return MutationToggleLikeToggleLikeV2ActivityReply.fromJson(json);

      case "Thread":
        return MutationToggleLikeToggleLikeV2Thread.fromJson(json);

      case "ThreadComment":
        return MutationToggleLikeToggleLikeV2ThreadComment.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return MutationToggleLikeToggleLikeV2(
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
    if (other is! MutationToggleLikeToggleLikeV2 ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2
    on MutationToggleLikeToggleLikeV2 {
  CopyWithMutationToggleLikeToggleLikeV2<MutationToggleLikeToggleLikeV2>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(MutationToggleLikeToggleLikeV2ListActivity)
        listActivity,
    required _T Function(MutationToggleLikeToggleLikeV2TextActivity)
        textActivity,
    required _T Function(MutationToggleLikeToggleLikeV2MessageActivity)
        messageActivity,
    required _T Function(MutationToggleLikeToggleLikeV2ActivityReply)
        activityReply,
    required _T Function(MutationToggleLikeToggleLikeV2Thread) thread,
    required _T Function(MutationToggleLikeToggleLikeV2ThreadComment)
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(this as MutationToggleLikeToggleLikeV2ListActivity);

      case "TextActivity":
        return textActivity(this as MutationToggleLikeToggleLikeV2TextActivity);

      case "MessageActivity":
        return messageActivity(
            this as MutationToggleLikeToggleLikeV2MessageActivity);

      case "ActivityReply":
        return activityReply(
            this as MutationToggleLikeToggleLikeV2ActivityReply);

      case "Thread":
        return thread(this as MutationToggleLikeToggleLikeV2Thread);

      case "ThreadComment":
        return threadComment(
            this as MutationToggleLikeToggleLikeV2ThreadComment);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(MutationToggleLikeToggleLikeV2ListActivity)? listActivity,
    _T Function(MutationToggleLikeToggleLikeV2TextActivity)? textActivity,
    _T Function(MutationToggleLikeToggleLikeV2MessageActivity)? messageActivity,
    _T Function(MutationToggleLikeToggleLikeV2ActivityReply)? activityReply,
    _T Function(MutationToggleLikeToggleLikeV2Thread)? thread,
    _T Function(MutationToggleLikeToggleLikeV2ThreadComment)? threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as MutationToggleLikeToggleLikeV2ListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as MutationToggleLikeToggleLikeV2TextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as MutationToggleLikeToggleLikeV2MessageActivity);
        } else {
          return orElse();
        }

      case "ActivityReply":
        if (activityReply != null) {
          return activityReply(
              this as MutationToggleLikeToggleLikeV2ActivityReply);
        } else {
          return orElse();
        }

      case "Thread":
        if (thread != null) {
          return thread(this as MutationToggleLikeToggleLikeV2Thread);
        } else {
          return orElse();
        }

      case "ThreadComment":
        if (threadComment != null) {
          return threadComment(
              this as MutationToggleLikeToggleLikeV2ThreadComment);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWithMutationToggleLikeToggleLikeV2<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2(
    MutationToggleLikeToggleLikeV2 instance,
    TRes Function(MutationToggleLikeToggleLikeV2) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2;

  factory CopyWithMutationToggleLikeToggleLikeV2.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleLikeToggleLikeV2<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2 _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleLikeToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class MutationToggleLikeToggleLikeV2ListActivity
    implements FragmentListActivity, MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2ListActivity({
    this.$__typename = 'ListActivity',
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
  });

  factory MutationToggleLikeToggleLikeV2ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    return MutationToggleLikeToggleLikeV2ListActivity(
      $__typename: (l$$__typename as String),
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
    );
  }

  final String $__typename;

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

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
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
    return Object.hashAll([
      l$$__typename,
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! MutationToggleLikeToggleLikeV2ListActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtensionMutationToggleLikeToggleLikeV2ListActivity
    on MutationToggleLikeToggleLikeV2ListActivity {
  CopyWithMutationToggleLikeToggleLikeV2ListActivity<
          MutationToggleLikeToggleLikeV2ListActivity>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2ListActivity<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2ListActivity(
    MutationToggleLikeToggleLikeV2ListActivity instance,
    TRes Function(MutationToggleLikeToggleLikeV2ListActivity) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2ListActivity;

  factory CopyWithMutationToggleLikeToggleLikeV2ListActivity.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2ListActivity;

  TRes call({
    String? $__typename,
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
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentMediaMin<TRes> get media;
}

class _CopyWithImplMutationToggleLikeToggleLikeV2ListActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ListActivity<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2ListActivity(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2ListActivity _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
  }) =>
      _then(MutationToggleLikeToggleLikeV2ListActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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

class _CopyWithStubImplMutationToggleLikeToggleLikeV2ListActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ListActivity<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2ListActivity(this._res);

  TRes _res;

  call({
    String? $__typename,
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
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);
}

class MutationToggleLikeToggleLikeV2TextActivity
    implements FragmentTextActivity, MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2TextActivity({
    this.$__typename = 'TextActivity',
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
  });

  factory MutationToggleLikeToggleLikeV2TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    return MutationToggleLikeToggleLikeV2TextActivity(
      $__typename: (l$$__typename as String),
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
    );
  }

  final String $__typename;

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

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
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
    return Object.hashAll([
      l$$__typename,
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! MutationToggleLikeToggleLikeV2TextActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtensionMutationToggleLikeToggleLikeV2TextActivity
    on MutationToggleLikeToggleLikeV2TextActivity {
  CopyWithMutationToggleLikeToggleLikeV2TextActivity<
          MutationToggleLikeToggleLikeV2TextActivity>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2TextActivity<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2TextActivity(
    MutationToggleLikeToggleLikeV2TextActivity instance,
    TRes Function(MutationToggleLikeToggleLikeV2TextActivity) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2TextActivity;

  factory CopyWithMutationToggleLikeToggleLikeV2TextActivity.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2TextActivity;

  TRes call({
    String? $__typename,
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
  });
  CopyWithFragmentUserMin<TRes> get user;
}

class _CopyWithImplMutationToggleLikeToggleLikeV2TextActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2TextActivity<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2TextActivity(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2TextActivity _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
  }) =>
      _then(MutationToggleLikeToggleLikeV2TextActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2TextActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2TextActivity<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2TextActivity(this._res);

  TRes _res;

  call({
    String? $__typename,
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
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class MutationToggleLikeToggleLikeV2MessageActivity
    implements FragmentMessageActivity, MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2MessageActivity({
    this.$__typename = 'MessageActivity',
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
  });

  factory MutationToggleLikeToggleLikeV2MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    return MutationToggleLikeToggleLikeV2MessageActivity(
      $__typename: (l$$__typename as String),
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
    );
  }

  final String $__typename;

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

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
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
    return Object.hashAll([
      l$$__typename,
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! MutationToggleLikeToggleLikeV2MessageActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtensionMutationToggleLikeToggleLikeV2MessageActivity
    on MutationToggleLikeToggleLikeV2MessageActivity {
  CopyWithMutationToggleLikeToggleLikeV2MessageActivity<
          MutationToggleLikeToggleLikeV2MessageActivity>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2MessageActivity<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2MessageActivity(
    MutationToggleLikeToggleLikeV2MessageActivity instance,
    TRes Function(MutationToggleLikeToggleLikeV2MessageActivity) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2MessageActivity;

  factory CopyWithMutationToggleLikeToggleLikeV2MessageActivity.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2MessageActivity;

  TRes call({
    String? $__typename,
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
  });
  CopyWithFragmentUserMin<TRes> get messenger;
}

class _CopyWithImplMutationToggleLikeToggleLikeV2MessageActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2MessageActivity<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2MessageActivity(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2MessageActivity _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
  }) =>
      _then(MutationToggleLikeToggleLikeV2MessageActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
      ));

  CopyWithFragmentUserMin<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2MessageActivity<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2MessageActivity<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2MessageActivity(this._res);

  TRes _res;

  call({
    String? $__typename,
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
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get messenger =>
      CopyWithFragmentUserMin.stub(_res);
}

class MutationToggleLikeToggleLikeV2ActivityReply
    implements FragmentActivityReply, MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2ActivityReply({
    this.$__typename = 'ActivityReply',
    required this.id,
    this.text,
    required this.likeCount,
    this.isLiked,
    required this.createdAt,
    this.user,
  });

  factory MutationToggleLikeToggleLikeV2ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$text = json['text'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    return MutationToggleLikeToggleLikeV2ActivityReply(
      $__typename: (l$$__typename as String),
      id: (l$id as int),
      text: (l$text as String?),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : FragmentUserMin.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final String $__typename;

  final int id;

  final String? text;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final FragmentUserMin? user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$text = text;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$createdAt = createdAt;
    final l$user = user;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$text,
      l$likeCount,
      l$isLiked,
      l$createdAt,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! MutationToggleLikeToggleLikeV2ActivityReply ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtensionMutationToggleLikeToggleLikeV2ActivityReply
    on MutationToggleLikeToggleLikeV2ActivityReply {
  CopyWithMutationToggleLikeToggleLikeV2ActivityReply<
          MutationToggleLikeToggleLikeV2ActivityReply>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2ActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2ActivityReply<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2ActivityReply(
    MutationToggleLikeToggleLikeV2ActivityReply instance,
    TRes Function(MutationToggleLikeToggleLikeV2ActivityReply) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2ActivityReply;

  factory CopyWithMutationToggleLikeToggleLikeV2ActivityReply.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2ActivityReply;

  TRes call({
    String? $__typename,
    int? id,
    String? text,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMin? user,
  });
  CopyWithFragmentUserMin<TRes> get user;
}

class _CopyWithImplMutationToggleLikeToggleLikeV2ActivityReply<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ActivityReply<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2ActivityReply(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2ActivityReply _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2ActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? text = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
  }) =>
      _then(MutationToggleLikeToggleLikeV2ActivityReply(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
      ));

  CopyWithFragmentUserMin<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWithFragmentUserMin.stub(_then(_instance))
        : CopyWithFragmentUserMin(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2ActivityReply<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ActivityReply<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2ActivityReply(this._res);

  TRes _res;

  call({
    String? $__typename,
    int? id,
    String? text,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    FragmentUserMin? user,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);
}

class MutationToggleLikeToggleLikeV2Thread
    implements
        FragmentThread,
        FragmentThreadMin,
        MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2Thread({
    this.$__typename = 'Thread',
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

  factory MutationToggleLikeToggleLikeV2Thread.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    final l$replyCommentId = json['replyCommentId'];
    final l$isLocked = json['isLocked'];
    final l$isSticky = json['isSticky'];
    final l$isSubscribed = json['isSubscribed'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$likes = json['likes'];
    return MutationToggleLikeToggleLikeV2Thread(
      $__typename: (l$$__typename as String),
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
              : MutationToggleLikeToggleLikeV2Threadcategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MutationToggleLikeToggleLikeV2ThreadmediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
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
              : MutationToggleLikeToggleLikeV2Threadlikes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final int id;

  final String? title;

  final String? body;

  final int? replyCountOrNull;

  final int? viewCount;

  final int? repliedAt;

  final String? siteUrl;

  final FragmentUserMin? user;

  final FragmentUserMin? replyUser;

  final List<MutationToggleLikeToggleLikeV2Threadcategories?>? categories;

  final List<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>?
      mediaCategories;

  final int? replyCommentId;

  final bool? isLocked;

  final bool? isSticky;

  final bool? isSubscribed;

  final int likeCount;

  final bool? isLiked;

  final int createdAt;

  final int updatedAt;

  final List<MutationToggleLikeToggleLikeV2Threadlikes?>? likes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    final l$$__typename = $__typename;
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
      l$$__typename,
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
    if (other is! MutationToggleLikeToggleLikeV2Thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2Thread
    on MutationToggleLikeToggleLikeV2Thread {
  CopyWithMutationToggleLikeToggleLikeV2Thread<
          MutationToggleLikeToggleLikeV2Thread>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2Thread(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2Thread<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2Thread(
    MutationToggleLikeToggleLikeV2Thread instance,
    TRes Function(MutationToggleLikeToggleLikeV2Thread) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2Thread;

  factory CopyWithMutationToggleLikeToggleLikeV2Thread.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2Thread;

  TRes call({
    String? $__typename,
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<MutationToggleLikeToggleLikeV2Threadcategories?>? categories,
    List<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>? mediaCategories,
    int? replyCommentId,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    int? updatedAt,
    List<MutationToggleLikeToggleLikeV2Threadlikes?>? likes,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentUserMin<TRes> get replyUser;
  TRes categories(
      Iterable<MutationToggleLikeToggleLikeV2Threadcategories?>? Function(
              Iterable<
                  CopyWithMutationToggleLikeToggleLikeV2Threadcategories<
                      MutationToggleLikeToggleLikeV2Threadcategories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>? Function(
              Iterable<
                  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<
                      MutationToggleLikeToggleLikeV2ThreadmediaCategories>?>?)
          _fn);
  TRes likes(
      Iterable<MutationToggleLikeToggleLikeV2Threadlikes?>? Function(
              Iterable<
                  CopyWithMutationToggleLikeToggleLikeV2Threadlikes<
                      MutationToggleLikeToggleLikeV2Threadlikes>?>?)
          _fn);
}

class _CopyWithImplMutationToggleLikeToggleLikeV2Thread<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Thread<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2Thread(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2Thread _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
      _then(MutationToggleLikeToggleLikeV2Thread(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
            : (categories
                as List<MutationToggleLikeToggleLikeV2Threadcategories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories
                as List<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>?),
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
            : (likes as List<MutationToggleLikeToggleLikeV2Threadlikes?>?),
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
          Iterable<MutationToggleLikeToggleLikeV2Threadcategories?>? Function(
                  Iterable<
                      CopyWithMutationToggleLikeToggleLikeV2Threadcategories<
                          MutationToggleLikeToggleLikeV2Threadcategories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWithMutationToggleLikeToggleLikeV2Threadcategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes mediaCategories(
          Iterable<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>? Function(
                  Iterable<
                      CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<
                          MutationToggleLikeToggleLikeV2ThreadmediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories(
                  e,
                  (i) => i,
                )))?.toList());

  TRes likes(
          Iterable<MutationToggleLikeToggleLikeV2Threadlikes?>? Function(
                  Iterable<
                      CopyWithMutationToggleLikeToggleLikeV2Threadlikes<
                          MutationToggleLikeToggleLikeV2Threadlikes>?>?)
              _fn) =>
      call(
          likes: _fn(_instance.likes?.map((e) => e == null
              ? null
              : CopyWithMutationToggleLikeToggleLikeV2Threadlikes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2Thread<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Thread<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2Thread(this._res);

  TRes _res;

  call({
    String? $__typename,
    int? id,
    String? title,
    String? body,
    int? replyCountOrNull,
    int? viewCount,
    int? repliedAt,
    String? siteUrl,
    FragmentUserMin? user,
    FragmentUserMin? replyUser,
    List<MutationToggleLikeToggleLikeV2Threadcategories?>? categories,
    List<MutationToggleLikeToggleLikeV2ThreadmediaCategories?>? mediaCategories,
    int? replyCommentId,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    int? likeCount,
    bool? isLiked,
    int? createdAt,
    int? updatedAt,
    List<MutationToggleLikeToggleLikeV2Threadlikes?>? likes,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentUserMin<TRes> get replyUser =>
      CopyWithFragmentUserMin.stub(_res);

  categories(_fn) => _res;

  mediaCategories(_fn) => _res;

  likes(_fn) => _res;
}

class MutationToggleLikeToggleLikeV2Threadcategories
    implements FragmentThreadcategories, FragmentThreadMincategories {
  MutationToggleLikeToggleLikeV2Threadcategories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory MutationToggleLikeToggleLikeV2Threadcategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLikeV2Threadcategories(
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
    if (other is! MutationToggleLikeToggleLikeV2Threadcategories ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2Threadcategories
    on MutationToggleLikeToggleLikeV2Threadcategories {
  CopyWithMutationToggleLikeToggleLikeV2Threadcategories<
          MutationToggleLikeToggleLikeV2Threadcategories>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2Threadcategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2Threadcategories<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2Threadcategories(
    MutationToggleLikeToggleLikeV2Threadcategories instance,
    TRes Function(MutationToggleLikeToggleLikeV2Threadcategories) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2Threadcategories;

  factory CopyWithMutationToggleLikeToggleLikeV2Threadcategories.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadcategories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImplMutationToggleLikeToggleLikeV2Threadcategories<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Threadcategories<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2Threadcategories(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2Threadcategories _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2Threadcategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLikeToggleLikeV2Threadcategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadcategories<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Threadcategories<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadcategories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class MutationToggleLikeToggleLikeV2ThreadmediaCategories
    implements FragmentThreadmediaCategories, FragmentThreadMinmediaCategories {
  MutationToggleLikeToggleLikeV2ThreadmediaCategories({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory MutationToggleLikeToggleLikeV2ThreadmediaCategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLikeV2ThreadmediaCategories(
      id: (l$id as int),
      title: l$title == null
          ? null
          : MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle? title;

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
    if (other is! MutationToggleLikeToggleLikeV2ThreadmediaCategories ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2ThreadmediaCategories
    on MutationToggleLikeToggleLikeV2ThreadmediaCategories {
  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<
          MutationToggleLikeToggleLikeV2ThreadmediaCategories>
      get copyWith =>
          CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<
    TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories(
    MutationToggleLikeToggleLikeV2ThreadmediaCategories instance,
    TRes Function(MutationToggleLikeToggleLikeV2ThreadmediaCategories) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategories;

  factory CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategories;

  TRes call({
    int? id,
    MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle? title,
    String? $__typename,
  });
  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<TRes>
      get title;
}

class _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategories<TRes>
    implements
        CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategories(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2ThreadmediaCategories _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2ThreadmediaCategories)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLikeToggleLikeV2ThreadmediaCategories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title
                as MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle.stub(
            _then(_instance))
        : CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategories<TRes>
    implements
        CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategories<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategories(
      this._res);

  TRes _res;

  call({
    int? id,
    MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle? title,
    String? $__typename,
  }) =>
      _res;

  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<TRes>
      get title =>
          CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle.stub(
              _res);
}

class MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle
    implements
        FragmentThreadmediaCategoriestitle,
        FragmentThreadMinmediaCategoriestitle {
  MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
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
    if (other is! MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle
    on MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle {
  CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<
          MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle>
      get copyWith =>
          CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<
    TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
    MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle instance,
    TRes Function(MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle)
        then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle;

  factory CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle.stub(
          TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<
        TRes>
    implements
        CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<
        TRes>
    implements
        CopyWithMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadmediaCategoriestitle(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class MutationToggleLikeToggleLikeV2Threadlikes implements FragmentThreadlikes {
  MutationToggleLikeToggleLikeV2Threadlikes({
    required this.id,
    this.$__typename = 'User',
  });

  factory MutationToggleLikeToggleLikeV2Threadlikes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLikeV2Threadlikes(
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
    if (other is! MutationToggleLikeToggleLikeV2Threadlikes ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2Threadlikes
    on MutationToggleLikeToggleLikeV2Threadlikes {
  CopyWithMutationToggleLikeToggleLikeV2Threadlikes<
          MutationToggleLikeToggleLikeV2Threadlikes>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2Threadlikes(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2Threadlikes<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2Threadlikes(
    MutationToggleLikeToggleLikeV2Threadlikes instance,
    TRes Function(MutationToggleLikeToggleLikeV2Threadlikes) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2Threadlikes;

  factory CopyWithMutationToggleLikeToggleLikeV2Threadlikes.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadlikes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImplMutationToggleLikeToggleLikeV2Threadlikes<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Threadlikes<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2Threadlikes(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2Threadlikes _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2Threadlikes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(MutationToggleLikeToggleLikeV2Threadlikes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadlikes<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2Threadlikes<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2Threadlikes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class MutationToggleLikeToggleLikeV2ThreadComment
    implements MutationToggleLikeToggleLikeV2 {
  MutationToggleLikeToggleLikeV2ThreadComment(
      {this.$__typename = 'ThreadComment'});

  factory MutationToggleLikeToggleLikeV2ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return MutationToggleLikeToggleLikeV2ThreadComment(
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
    if (other is! MutationToggleLikeToggleLikeV2ThreadComment ||
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

extension UtilityExtensionMutationToggleLikeToggleLikeV2ThreadComment
    on MutationToggleLikeToggleLikeV2ThreadComment {
  CopyWithMutationToggleLikeToggleLikeV2ThreadComment<
          MutationToggleLikeToggleLikeV2ThreadComment>
      get copyWith => CopyWithMutationToggleLikeToggleLikeV2ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWithMutationToggleLikeToggleLikeV2ThreadComment<TRes> {
  factory CopyWithMutationToggleLikeToggleLikeV2ThreadComment(
    MutationToggleLikeToggleLikeV2ThreadComment instance,
    TRes Function(MutationToggleLikeToggleLikeV2ThreadComment) then,
  ) = _CopyWithImplMutationToggleLikeToggleLikeV2ThreadComment;

  factory CopyWithMutationToggleLikeToggleLikeV2ThreadComment.stub(TRes res) =
      _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadComment;

  TRes call({String? $__typename});
}

class _CopyWithImplMutationToggleLikeToggleLikeV2ThreadComment<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ThreadComment<TRes> {
  _CopyWithImplMutationToggleLikeToggleLikeV2ThreadComment(
    this._instance,
    this._then,
  );

  final MutationToggleLikeToggleLikeV2ThreadComment _instance;

  final TRes Function(MutationToggleLikeToggleLikeV2ThreadComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(MutationToggleLikeToggleLikeV2ThreadComment(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadComment<TRes>
    implements CopyWithMutationToggleLikeToggleLikeV2ThreadComment<TRes> {
  _CopyWithStubImplMutationToggleLikeToggleLikeV2ThreadComment(this._res);

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
    if (other is! VariablesQueryMdToHtml || runtimeType != other.runtimeType) {
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
    if (other is! QueryMdToHtml || runtimeType != other.runtimeType) {
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
    if (other is! QueryMdToHtmlMarkdown || runtimeType != other.runtimeType) {
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

class QueryGenreTags {
  QueryGenreTags({
    this.GenreCollection,
    this.MediaTagCollection,
    this.$__typename = 'Query',
  });

  factory QueryGenreTags.fromJson(Map<String, dynamic> json) {
    final l$GenreCollection = json['GenreCollection'];
    final l$MediaTagCollection = json['MediaTagCollection'];
    final l$$__typename = json['__typename'];
    return QueryGenreTags(
      GenreCollection: (l$GenreCollection as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      MediaTagCollection: (l$MediaTagCollection as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryGenreTagsMediaTagCollection.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? GenreCollection;

  final List<QueryGenreTagsMediaTagCollection?>? MediaTagCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$GenreCollection = GenreCollection;
    _resultData['GenreCollection'] = l$GenreCollection?.map((e) => e).toList();
    final l$MediaTagCollection = MediaTagCollection;
    _resultData['MediaTagCollection'] =
        l$MediaTagCollection?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$GenreCollection = GenreCollection;
    final l$MediaTagCollection = MediaTagCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$GenreCollection == null
          ? null
          : Object.hashAll(l$GenreCollection.map((v) => v)),
      l$MediaTagCollection == null
          ? null
          : Object.hashAll(l$MediaTagCollection.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryGenreTags || runtimeType != other.runtimeType) {
      return false;
    }
    final l$GenreCollection = GenreCollection;
    final lOther$GenreCollection = other.GenreCollection;
    if (l$GenreCollection != null && lOther$GenreCollection != null) {
      if (l$GenreCollection.length != lOther$GenreCollection.length) {
        return false;
      }
      for (int i = 0; i < l$GenreCollection.length; i++) {
        final l$GenreCollection$entry = l$GenreCollection[i];
        final lOther$GenreCollection$entry = lOther$GenreCollection[i];
        if (l$GenreCollection$entry != lOther$GenreCollection$entry) {
          return false;
        }
      }
    } else if (l$GenreCollection != lOther$GenreCollection) {
      return false;
    }
    final l$MediaTagCollection = MediaTagCollection;
    final lOther$MediaTagCollection = other.MediaTagCollection;
    if (l$MediaTagCollection != null && lOther$MediaTagCollection != null) {
      if (l$MediaTagCollection.length != lOther$MediaTagCollection.length) {
        return false;
      }
      for (int i = 0; i < l$MediaTagCollection.length; i++) {
        final l$MediaTagCollection$entry = l$MediaTagCollection[i];
        final lOther$MediaTagCollection$entry = lOther$MediaTagCollection[i];
        if (l$MediaTagCollection$entry != lOther$MediaTagCollection$entry) {
          return false;
        }
      }
    } else if (l$MediaTagCollection != lOther$MediaTagCollection) {
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

extension UtilityExtensionQueryGenreTags on QueryGenreTags {
  CopyWithQueryGenreTags<QueryGenreTags> get copyWith => CopyWithQueryGenreTags(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryGenreTags<TRes> {
  factory CopyWithQueryGenreTags(
    QueryGenreTags instance,
    TRes Function(QueryGenreTags) then,
  ) = _CopyWithImplQueryGenreTags;

  factory CopyWithQueryGenreTags.stub(TRes res) =
      _CopyWithStubImplQueryGenreTags;

  TRes call({
    List<String?>? GenreCollection,
    List<QueryGenreTagsMediaTagCollection?>? MediaTagCollection,
    String? $__typename,
  });
  TRes MediaTagCollection(
      Iterable<QueryGenreTagsMediaTagCollection?>? Function(
              Iterable<
                  CopyWithQueryGenreTagsMediaTagCollection<
                      QueryGenreTagsMediaTagCollection>?>?)
          _fn);
}

class _CopyWithImplQueryGenreTags<TRes>
    implements CopyWithQueryGenreTags<TRes> {
  _CopyWithImplQueryGenreTags(
    this._instance,
    this._then,
  );

  final QueryGenreTags _instance;

  final TRes Function(QueryGenreTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? GenreCollection = _undefined,
    Object? MediaTagCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGenreTags(
        GenreCollection: GenreCollection == _undefined
            ? _instance.GenreCollection
            : (GenreCollection as List<String?>?),
        MediaTagCollection: MediaTagCollection == _undefined
            ? _instance.MediaTagCollection
            : (MediaTagCollection as List<QueryGenreTagsMediaTagCollection?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes MediaTagCollection(
          Iterable<QueryGenreTagsMediaTagCollection?>? Function(
                  Iterable<
                      CopyWithQueryGenreTagsMediaTagCollection<
                          QueryGenreTagsMediaTagCollection>?>?)
              _fn) =>
      call(
          MediaTagCollection:
              _fn(_instance.MediaTagCollection?.map((e) => e == null
                  ? null
                  : CopyWithQueryGenreTagsMediaTagCollection(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImplQueryGenreTags<TRes>
    implements CopyWithQueryGenreTags<TRes> {
  _CopyWithStubImplQueryGenreTags(this._res);

  TRes _res;

  call({
    List<String?>? GenreCollection,
    List<QueryGenreTagsMediaTagCollection?>? MediaTagCollection,
    String? $__typename,
  }) =>
      _res;

  MediaTagCollection(_fn) => _res;
}

const documentNodeQueryGenreTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GenreTags'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'GenreCollection'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'MediaTagCollection'),
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
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdult'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isGeneralSpoiler'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isMediaSpoiler'),
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

class QueryGenreTagsMediaTagCollection {
  QueryGenreTagsMediaTagCollection({
    required this.id,
    required this.name,
    this.description,
    this.category,
    this.isAdult,
    this.isGeneralSpoiler,
    this.isMediaSpoiler,
    this.$__typename = 'MediaTag',
  });

  factory QueryGenreTagsMediaTagCollection.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$isAdult = json['isAdult'];
    final l$isGeneralSpoiler = json['isGeneralSpoiler'];
    final l$isMediaSpoiler = json['isMediaSpoiler'];
    final l$$__typename = json['__typename'];
    return QueryGenreTagsMediaTagCollection(
      id: (l$id as int),
      name: (l$name as String),
      description: (l$description as String?),
      category: (l$category as String?),
      isAdult: (l$isAdult as bool?),
      isGeneralSpoiler: (l$isGeneralSpoiler as bool?),
      isMediaSpoiler: (l$isMediaSpoiler as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? description;

  final String? category;

  final bool? isAdult;

  final bool? isGeneralSpoiler;

  final bool? isMediaSpoiler;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$isGeneralSpoiler = isGeneralSpoiler;
    _resultData['isGeneralSpoiler'] = l$isGeneralSpoiler;
    final l$isMediaSpoiler = isMediaSpoiler;
    _resultData['isMediaSpoiler'] = l$isMediaSpoiler;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$isAdult = isAdult;
    final l$isGeneralSpoiler = isGeneralSpoiler;
    final l$isMediaSpoiler = isMediaSpoiler;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$isAdult,
      l$isGeneralSpoiler,
      l$isMediaSpoiler,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! QueryGenreTagsMediaTagCollection ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$isGeneralSpoiler = isGeneralSpoiler;
    final lOther$isGeneralSpoiler = other.isGeneralSpoiler;
    if (l$isGeneralSpoiler != lOther$isGeneralSpoiler) {
      return false;
    }
    final l$isMediaSpoiler = isMediaSpoiler;
    final lOther$isMediaSpoiler = other.isMediaSpoiler;
    if (l$isMediaSpoiler != lOther$isMediaSpoiler) {
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

extension UtilityExtensionQueryGenreTagsMediaTagCollection
    on QueryGenreTagsMediaTagCollection {
  CopyWithQueryGenreTagsMediaTagCollection<QueryGenreTagsMediaTagCollection>
      get copyWith => CopyWithQueryGenreTagsMediaTagCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryGenreTagsMediaTagCollection<TRes> {
  factory CopyWithQueryGenreTagsMediaTagCollection(
    QueryGenreTagsMediaTagCollection instance,
    TRes Function(QueryGenreTagsMediaTagCollection) then,
  ) = _CopyWithImplQueryGenreTagsMediaTagCollection;

  factory CopyWithQueryGenreTagsMediaTagCollection.stub(TRes res) =
      _CopyWithStubImplQueryGenreTagsMediaTagCollection;

  TRes call({
    int? id,
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    bool? isGeneralSpoiler,
    bool? isMediaSpoiler,
    String? $__typename,
  });
}

class _CopyWithImplQueryGenreTagsMediaTagCollection<TRes>
    implements CopyWithQueryGenreTagsMediaTagCollection<TRes> {
  _CopyWithImplQueryGenreTagsMediaTagCollection(
    this._instance,
    this._then,
  );

  final QueryGenreTagsMediaTagCollection _instance;

  final TRes Function(QueryGenreTagsMediaTagCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? isAdult = _undefined,
    Object? isGeneralSpoiler = _undefined,
    Object? isMediaSpoiler = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryGenreTagsMediaTagCollection(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        isGeneralSpoiler: isGeneralSpoiler == _undefined
            ? _instance.isGeneralSpoiler
            : (isGeneralSpoiler as bool?),
        isMediaSpoiler: isMediaSpoiler == _undefined
            ? _instance.isMediaSpoiler
            : (isMediaSpoiler as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryGenreTagsMediaTagCollection<TRes>
    implements CopyWithQueryGenreTagsMediaTagCollection<TRes> {
  _CopyWithStubImplQueryGenreTagsMediaTagCollection(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    bool? isGeneralSpoiler,
    bool? isMediaSpoiler,
    String? $__typename,
  }) =>
      _res;
}
