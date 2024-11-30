import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentMediaMinF {
  FragmentMediaMinF({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory FragmentMediaMinF.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinF(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      title: l$title == null
          ? null
          : FragmentMediaMinFtitle.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : FragmentMediaMinFcoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final FragmentMediaMinFtitle? title;

  final FragmentMediaMinFcoverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJsonEnumMediaFormat(l$format);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaStatus(l$status);
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
    final l$format = format;
    final l$status = status;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
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
    if (!(other is FragmentMediaMinF) || runtimeType != other.runtimeType) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtensionFragmentMediaMinF on FragmentMediaMinF {
  CopyWithFragmentMediaMinF<FragmentMediaMinF> get copyWith =>
      CopyWithFragmentMediaMinF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMinF<TRes> {
  factory CopyWithFragmentMediaMinF(
    FragmentMediaMinF instance,
    TRes Function(FragmentMediaMinF) then,
  ) = _CopyWithImplFragmentMediaMinF;

  factory CopyWithFragmentMediaMinF.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinF;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    FragmentMediaMinFtitle? title,
    FragmentMediaMinFcoverImage? coverImage,
    String? $__typename,
  });
  CopyWithFragmentMediaMinFtitle<TRes> get title;
  CopyWithFragmentMediaMinFcoverImage<TRes> get coverImage;
}

class _CopyWithImplFragmentMediaMinF<TRes>
    implements CopyWithFragmentMediaMinF<TRes> {
  _CopyWithImplFragmentMediaMinF(
    this._instance,
    this._then,
  );

  final FragmentMediaMinF _instance;

  final TRes Function(FragmentMediaMinF) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinF(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentMediaMinFtitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentMediaMinFcoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMinFtitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentMediaMinFtitle.stub(_then(_instance))
        : CopyWithFragmentMediaMinFtitle(local$title, (e) => call(title: e));
  }

  CopyWithFragmentMediaMinFcoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentMediaMinFcoverImage.stub(_then(_instance))
        : CopyWithFragmentMediaMinFcoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplFragmentMediaMinF<TRes>
    implements CopyWithFragmentMediaMinF<TRes> {
  _CopyWithStubImplFragmentMediaMinF(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    FragmentMediaMinFtitle? title,
    FragmentMediaMinFcoverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMinFtitle<TRes> get title =>
      CopyWithFragmentMediaMinFtitle.stub(_res);

  CopyWithFragmentMediaMinFcoverImage<TRes> get coverImage =>
      CopyWithFragmentMediaMinFcoverImage.stub(_res);
}

const fragmentDefinitionMediaMinF = FragmentDefinitionNode(
  name: NameNode(value: 'MediaMinF'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'format'),
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
          name: NameNode(value: 'romaji'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'english'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'native'),
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
          name: NameNode(value: 'extraLarge'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
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
          name: NameNode(value: 'color'),
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
const documentNodeFragmentMediaMinF = DocumentNode(definitions: [
  fragmentDefinitionMediaMinF,
]);

class FragmentMediaMinFtitle {
  FragmentMediaMinFtitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentMediaMinFtitle.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinFtitle(
      userPreferred: (l$userPreferred as String?),
      romaji: (l$romaji as String?),
      english: (l$english as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? romaji;

  final String? english;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$romaji = romaji;
    final l$english = english;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$romaji,
      l$english,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaMinFtitle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtensionFragmentMediaMinFtitle on FragmentMediaMinFtitle {
  CopyWithFragmentMediaMinFtitle<FragmentMediaMinFtitle> get copyWith =>
      CopyWithFragmentMediaMinFtitle(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMinFtitle<TRes> {
  factory CopyWithFragmentMediaMinFtitle(
    FragmentMediaMinFtitle instance,
    TRes Function(FragmentMediaMinFtitle) then,
  ) = _CopyWithImplFragmentMediaMinFtitle;

  factory CopyWithFragmentMediaMinFtitle.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinFtitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinFtitle<TRes>
    implements CopyWithFragmentMediaMinFtitle<TRes> {
  _CopyWithImplFragmentMediaMinFtitle(
    this._instance,
    this._then,
  );

  final FragmentMediaMinFtitle _instance;

  final TRes Function(FragmentMediaMinFtitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinFtitle(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaMinFtitle<TRes>
    implements CopyWithFragmentMediaMinFtitle<TRes> {
  _CopyWithStubImplFragmentMediaMinFtitle(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaMinFcoverImage {
  FragmentMediaMinFcoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentMediaMinFcoverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinFcoverImage(
      extraLarge: (l$extraLarge as String?),
      large: (l$large as String?),
      medium: (l$medium as String?),
      color: (l$color as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String? large;

  final String? medium;

  final String? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$large = large;
    final l$medium = medium;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$large,
      l$medium,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaMinFcoverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtensionFragmentMediaMinFcoverImage
    on FragmentMediaMinFcoverImage {
  CopyWithFragmentMediaMinFcoverImage<FragmentMediaMinFcoverImage>
      get copyWith => CopyWithFragmentMediaMinFcoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaMinFcoverImage<TRes> {
  factory CopyWithFragmentMediaMinFcoverImage(
    FragmentMediaMinFcoverImage instance,
    TRes Function(FragmentMediaMinFcoverImage) then,
  ) = _CopyWithImplFragmentMediaMinFcoverImage;

  factory CopyWithFragmentMediaMinFcoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinFcoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinFcoverImage<TRes>
    implements CopyWithFragmentMediaMinFcoverImage<TRes> {
  _CopyWithImplFragmentMediaMinFcoverImage(
    this._instance,
    this._then,
  );

  final FragmentMediaMinFcoverImage _instance;

  final TRes Function(FragmentMediaMinFcoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinFcoverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        color: color == _undefined ? _instance.color : (color as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaMinFcoverImage<TRes>
    implements CopyWithFragmentMediaMinFcoverImage<TRes> {
  _CopyWithStubImplFragmentMediaMinFcoverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaListF {
  FragmentMediaListF({
    required this.id,
    required this.userId,
    this.media,
    this.status,
    this.progress,
    this.progressVolumes,
    this.score,
    this.repeat,
    this.private,
    this.notes,
    this.hiddenFromStatusLists,
    this.startedAt,
    this.completedAt,
    this.priority,
    this.customLists,
    this.updatedAt,
    this.createdAt,
    this.$__typename = 'MediaList',
  });

  factory FragmentMediaListF.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$media = json['media'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$score = json['score'];
    final l$repeat = json['repeat'];
    final l$private = json['private'];
    final l$notes = json['notes'];
    final l$hiddenFromStatusLists = json['hiddenFromStatusLists'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$priority = json['priority'];
    final l$customLists = json['customLists'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListF(
      id: (l$id as int),
      userId: (l$userId as int),
      media: l$media == null
          ? null
          : FragmentMediaMinF.fromJson((l$media as Map<String, dynamic>)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      score: (l$score as num?)?.toDouble(),
      repeat: (l$repeat as int?),
      private: (l$private as bool?),
      notes: (l$notes as String?),
      hiddenFromStatusLists: (l$hiddenFromStatusLists as bool?),
      startedAt: l$startedAt == null
          ? null
          : FragmentMediaListFstartedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : FragmentMediaListFcompletedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      priority: (l$priority as int?),
      customLists: (l$customLists as String?),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final FragmentMediaMinF? media;

  final EnumMediaListStatus? status;

  final int? progress;

  final int? progressVolumes;

  final double? score;

  final int? repeat;

  final bool? private;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final FragmentMediaListFstartedAt? startedAt;

  final FragmentMediaListFcompletedAt? completedAt;

  final int? priority;

  final String? customLists;

  final int? updatedAt;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$repeat = repeat;
    _resultData['repeat'] = l$repeat;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    _resultData['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
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
    final l$media = media;
    final l$status = status;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$score = score;
    final l$repeat = repeat;
    final l$private = private;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$priority = priority;
    final l$customLists = customLists;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$media,
      l$status,
      l$progress,
      l$progressVolumes,
      l$score,
      l$repeat,
      l$private,
      l$notes,
      l$hiddenFromStatusLists,
      l$startedAt,
      l$completedAt,
      l$priority,
      l$customLists,
      l$updatedAt,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaListF) || runtimeType != other.runtimeType) {
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
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtensionFragmentMediaListF on FragmentMediaListF {
  CopyWithFragmentMediaListF<FragmentMediaListF> get copyWith =>
      CopyWithFragmentMediaListF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaListF<TRes> {
  factory CopyWithFragmentMediaListF(
    FragmentMediaListF instance,
    TRes Function(FragmentMediaListF) then,
  ) = _CopyWithImplFragmentMediaListF;

  factory CopyWithFragmentMediaListF.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListF;

  TRes call({
    int? id,
    int? userId,
    FragmentMediaMinF? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    FragmentMediaListFstartedAt? startedAt,
    FragmentMediaListFcompletedAt? completedAt,
    int? priority,
    String? customLists,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  });
  CopyWithFragmentMediaMinF<TRes> get media;
  CopyWithFragmentMediaListFstartedAt<TRes> get startedAt;
  CopyWithFragmentMediaListFcompletedAt<TRes> get completedAt;
}

class _CopyWithImplFragmentMediaListF<TRes>
    implements CopyWithFragmentMediaListF<TRes> {
  _CopyWithImplFragmentMediaListF(
    this._instance,
    this._then,
  );

  final FragmentMediaListF _instance;

  final TRes Function(FragmentMediaListF) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? media = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? score = _undefined,
    Object? repeat = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? priority = _undefined,
    Object? customLists = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListF(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaMinF?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        score: score == _undefined ? _instance.score : (score as double?),
        repeat: repeat == _undefined ? _instance.repeat : (repeat as int?),
        private: private == _undefined ? _instance.private : (private as bool?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        hiddenFromStatusLists: hiddenFromStatusLists == _undefined
            ? _instance.hiddenFromStatusLists
            : (hiddenFromStatusLists as bool?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as FragmentMediaListFstartedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as FragmentMediaListFcompletedAt?),
        priority:
            priority == _undefined ? _instance.priority : (priority as int?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as String?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMinF<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaMinF.stub(_then(_instance))
        : CopyWithFragmentMediaMinF(local$media, (e) => call(media: e));
  }

  CopyWithFragmentMediaListFstartedAt<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWithFragmentMediaListFstartedAt.stub(_then(_instance))
        : CopyWithFragmentMediaListFstartedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWithFragmentMediaListFcompletedAt<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWithFragmentMediaListFcompletedAt.stub(_then(_instance))
        : CopyWithFragmentMediaListFcompletedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImplFragmentMediaListF<TRes>
    implements CopyWithFragmentMediaListF<TRes> {
  _CopyWithStubImplFragmentMediaListF(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    FragmentMediaMinF? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    FragmentMediaListFstartedAt? startedAt,
    FragmentMediaListFcompletedAt? completedAt,
    int? priority,
    String? customLists,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMinF<TRes> get media =>
      CopyWithFragmentMediaMinF.stub(_res);

  CopyWithFragmentMediaListFstartedAt<TRes> get startedAt =>
      CopyWithFragmentMediaListFstartedAt.stub(_res);

  CopyWithFragmentMediaListFcompletedAt<TRes> get completedAt =>
      CopyWithFragmentMediaListFcompletedAt.stub(_res);
}

const fragmentDefinitionMediaListF = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListF'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaList'),
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
      name: NameNode(value: 'progressVolumes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'score'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'format'),
          value: EnumValueNode(name: NameNode(value: 'POINT_10')),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repeat'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'private'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'hiddenFromStatusLists'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'year'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'day'),
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
      name: NameNode(value: 'completedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'year'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'day'),
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
      name: NameNode(value: 'priority'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'customLists'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'asArray'),
          value: BooleanValueNode(value: true),
        )
      ],
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
);
const documentNodeFragmentMediaListF = DocumentNode(definitions: [
  fragmentDefinitionMediaListF,
  fragmentDefinitionMediaMinF,
]);

class FragmentMediaListFstartedAt {
  FragmentMediaListFstartedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory FragmentMediaListFstartedAt.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListFstartedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaListFstartedAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtensionFragmentMediaListFstartedAt
    on FragmentMediaListFstartedAt {
  CopyWithFragmentMediaListFstartedAt<FragmentMediaListFstartedAt>
      get copyWith => CopyWithFragmentMediaListFstartedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListFstartedAt<TRes> {
  factory CopyWithFragmentMediaListFstartedAt(
    FragmentMediaListFstartedAt instance,
    TRes Function(FragmentMediaListFstartedAt) then,
  ) = _CopyWithImplFragmentMediaListFstartedAt;

  factory CopyWithFragmentMediaListFstartedAt.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListFstartedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListFstartedAt<TRes>
    implements CopyWithFragmentMediaListFstartedAt<TRes> {
  _CopyWithImplFragmentMediaListFstartedAt(
    this._instance,
    this._then,
  );

  final FragmentMediaListFstartedAt _instance;

  final TRes Function(FragmentMediaListFstartedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListFstartedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaListFstartedAt<TRes>
    implements CopyWithFragmentMediaListFstartedAt<TRes> {
  _CopyWithStubImplFragmentMediaListFstartedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaListFcompletedAt {
  FragmentMediaListFcompletedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory FragmentMediaListFcompletedAt.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListFcompletedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaListFcompletedAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtensionFragmentMediaListFcompletedAt
    on FragmentMediaListFcompletedAt {
  CopyWithFragmentMediaListFcompletedAt<FragmentMediaListFcompletedAt>
      get copyWith => CopyWithFragmentMediaListFcompletedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListFcompletedAt<TRes> {
  factory CopyWithFragmentMediaListFcompletedAt(
    FragmentMediaListFcompletedAt instance,
    TRes Function(FragmentMediaListFcompletedAt) then,
  ) = _CopyWithImplFragmentMediaListFcompletedAt;

  factory CopyWithFragmentMediaListFcompletedAt.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListFcompletedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListFcompletedAt<TRes>
    implements CopyWithFragmentMediaListFcompletedAt<TRes> {
  _CopyWithImplFragmentMediaListFcompletedAt(
    this._instance,
    this._then,
  );

  final FragmentMediaListFcompletedAt _instance;

  final TRes Function(FragmentMediaListFcompletedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListFcompletedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaListFcompletedAt<TRes>
    implements CopyWithFragmentMediaListFcompletedAt<TRes> {
  _CopyWithStubImplFragmentMediaListFcompletedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class FragmentUserMinF {
  FragmentUserMinF({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory FragmentUserMinF.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return FragmentUserMinF(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : FragmentUserMinFavatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final FragmentUserMinFavatar? avatar;

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
    if (!(other is FragmentUserMinF) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserMinF on FragmentUserMinF {
  CopyWithFragmentUserMinF<FragmentUserMinF> get copyWith =>
      CopyWithFragmentUserMinF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserMinF<TRes> {
  factory CopyWithFragmentUserMinF(
    FragmentUserMinF instance,
    TRes Function(FragmentUserMinF) then,
  ) = _CopyWithImplFragmentUserMinF;

  factory CopyWithFragmentUserMinF.stub(TRes res) =
      _CopyWithStubImplFragmentUserMinF;

  TRes call({
    int? id,
    String? name,
    FragmentUserMinFavatar? avatar,
    String? $__typename,
  });
  CopyWithFragmentUserMinFavatar<TRes> get avatar;
}

class _CopyWithImplFragmentUserMinF<TRes>
    implements CopyWithFragmentUserMinF<TRes> {
  _CopyWithImplFragmentUserMinF(
    this._instance,
    this._then,
  );

  final FragmentUserMinF _instance;

  final TRes Function(FragmentUserMinF) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMinF(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as FragmentUserMinFavatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinFavatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithFragmentUserMinFavatar.stub(_then(_instance))
        : CopyWithFragmentUserMinFavatar(local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplFragmentUserMinF<TRes>
    implements CopyWithFragmentUserMinF<TRes> {
  _CopyWithStubImplFragmentUserMinF(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    FragmentUserMinFavatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinFavatar<TRes> get avatar =>
      CopyWithFragmentUserMinFavatar.stub(_res);
}

const fragmentDefinitionUserMinF = FragmentDefinitionNode(
  name: NameNode(value: 'UserMinF'),
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
const documentNodeFragmentUserMinF = DocumentNode(definitions: [
  fragmentDefinitionUserMinF,
]);

class FragmentUserMinFavatar {
  FragmentUserMinFavatar({
    this.large,
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory FragmentUserMinFavatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return FragmentUserMinFavatar(
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
    if (!(other is FragmentUserMinFavatar) ||
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

extension UtilityExtensionFragmentUserMinFavatar on FragmentUserMinFavatar {
  CopyWithFragmentUserMinFavatar<FragmentUserMinFavatar> get copyWith =>
      CopyWithFragmentUserMinFavatar(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserMinFavatar<TRes> {
  factory CopyWithFragmentUserMinFavatar(
    FragmentUserMinFavatar instance,
    TRes Function(FragmentUserMinFavatar) then,
  ) = _CopyWithImplFragmentUserMinFavatar;

  factory CopyWithFragmentUserMinFavatar.stub(TRes res) =
      _CopyWithStubImplFragmentUserMinFavatar;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserMinFavatar<TRes>
    implements CopyWithFragmentUserMinFavatar<TRes> {
  _CopyWithImplFragmentUserMinFavatar(
    this._instance,
    this._then,
  );

  final FragmentUserMinFavatar _instance;

  final TRes Function(FragmentUserMinFavatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMinFavatar(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentUserMinFavatar<TRes>
    implements CopyWithFragmentUserMinFavatar<TRes> {
  _CopyWithStubImplFragmentUserMinFavatar(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class FragmentUserSocialsF {
  FragmentUserSocialsF({
    this.isFollowing,
    this.isFollower,
    this.isBlocked,
    this.$__typename = 'User',
  });

  factory FragmentUserSocialsF.fromJson(Map<String, dynamic> json) {
    final l$isFollowing = json['isFollowing'];
    final l$isFollower = json['isFollower'];
    final l$isBlocked = json['isBlocked'];
    final l$$__typename = json['__typename'];
    return FragmentUserSocialsF(
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
    if (!(other is FragmentUserSocialsF) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserSocialsF on FragmentUserSocialsF {
  CopyWithFragmentUserSocialsF<FragmentUserSocialsF> get copyWith =>
      CopyWithFragmentUserSocialsF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSocialsF<TRes> {
  factory CopyWithFragmentUserSocialsF(
    FragmentUserSocialsF instance,
    TRes Function(FragmentUserSocialsF) then,
  ) = _CopyWithImplFragmentUserSocialsF;

  factory CopyWithFragmentUserSocialsF.stub(TRes res) =
      _CopyWithStubImplFragmentUserSocialsF;

  TRes call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSocialsF<TRes>
    implements CopyWithFragmentUserSocialsF<TRes> {
  _CopyWithImplFragmentUserSocialsF(
    this._instance,
    this._then,
  );

  final FragmentUserSocialsF _instance;

  final TRes Function(FragmentUserSocialsF) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFollowing = _undefined,
    Object? isFollower = _undefined,
    Object? isBlocked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSocialsF(
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

class _CopyWithStubImplFragmentUserSocialsF<TRes>
    implements CopyWithFragmentUserSocialsF<TRes> {
  _CopyWithStubImplFragmentUserSocialsF(this._res);

  TRes _res;

  call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserSocialsF = FragmentDefinitionNode(
  name: NameNode(value: 'UserSocialsF'),
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
const documentNodeFragmentUserSocialsF = DocumentNode(definitions: [
  fragmentDefinitionUserSocialsF,
]);

class FragmentUserSettingsF {
  FragmentUserSettingsF({
    this.options,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory FragmentUserSettingsF.fromJson(Map<String, dynamic> json) {
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsF(
      options: l$options == null
          ? null
          : FragmentUserSettingsFoptions.fromJson(
              (l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : FragmentUserSettingsFmediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserSettingsFoptions? options;

  final FragmentUserSettingsFmediaListOptions? mediaListOptions;

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
    if (!(other is FragmentUserSettingsF) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserSettingsF on FragmentUserSettingsF {
  CopyWithFragmentUserSettingsF<FragmentUserSettingsF> get copyWith =>
      CopyWithFragmentUserSettingsF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSettingsF<TRes> {
  factory CopyWithFragmentUserSettingsF(
    FragmentUserSettingsF instance,
    TRes Function(FragmentUserSettingsF) then,
  ) = _CopyWithImplFragmentUserSettingsF;

  factory CopyWithFragmentUserSettingsF.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsF;

  TRes call({
    FragmentUserSettingsFoptions? options,
    FragmentUserSettingsFmediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsFoptions<TRes> get options;
  CopyWithFragmentUserSettingsFmediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImplFragmentUserSettingsF<TRes>
    implements CopyWithFragmentUserSettingsF<TRes> {
  _CopyWithImplFragmentUserSettingsF(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsF _instance;

  final TRes Function(FragmentUserSettingsF) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsF(
        options: options == _undefined
            ? _instance.options
            : (options as FragmentUserSettingsFoptions?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as FragmentUserSettingsFmediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsFoptions<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWithFragmentUserSettingsFoptions.stub(_then(_instance))
        : CopyWithFragmentUserSettingsFoptions(
            local$options, (e) => call(options: e));
  }

  CopyWithFragmentUserSettingsFmediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWithFragmentUserSettingsFmediaListOptions.stub(_then(_instance))
        : CopyWithFragmentUserSettingsFmediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImplFragmentUserSettingsF<TRes>
    implements CopyWithFragmentUserSettingsF<TRes> {
  _CopyWithStubImplFragmentUserSettingsF(this._res);

  TRes _res;

  call({
    FragmentUserSettingsFoptions? options,
    FragmentUserSettingsFmediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsFoptions<TRes> get options =>
      CopyWithFragmentUserSettingsFoptions.stub(_res);

  CopyWithFragmentUserSettingsFmediaListOptions<TRes> get mediaListOptions =>
      CopyWithFragmentUserSettingsFmediaListOptions.stub(_res);
}

const fragmentDefinitionUserSettingsF = FragmentDefinitionNode(
  name: NameNode(value: 'UserSettingsF'),
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
const documentNodeFragmentUserSettingsF = DocumentNode(definitions: [
  fragmentDefinitionUserSettingsF,
]);

class FragmentUserSettingsFoptions {
  FragmentUserSettingsFoptions({
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

  factory FragmentUserSettingsFoptions.fromJson(Map<String, dynamic> json) {
    final l$titleLanguage = json['titleLanguage'];
    final l$displayAdultContent = json['displayAdultContent'];
    final l$airingNotifications = json['airingNotifications'];
    final l$profileColor = json['profileColor'];
    final l$timezone = json['timezone'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFoptions(
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
    if (!(other is FragmentUserSettingsFoptions) ||
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

extension UtilityExtensionFragmentUserSettingsFoptions
    on FragmentUserSettingsFoptions {
  CopyWithFragmentUserSettingsFoptions<FragmentUserSettingsFoptions>
      get copyWith => CopyWithFragmentUserSettingsFoptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFoptions<TRes> {
  factory CopyWithFragmentUserSettingsFoptions(
    FragmentUserSettingsFoptions instance,
    TRes Function(FragmentUserSettingsFoptions) then,
  ) = _CopyWithImplFragmentUserSettingsFoptions;

  factory CopyWithFragmentUserSettingsFoptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsFoptions;

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

class _CopyWithImplFragmentUserSettingsFoptions<TRes>
    implements CopyWithFragmentUserSettingsFoptions<TRes> {
  _CopyWithImplFragmentUserSettingsFoptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFoptions _instance;

  final TRes Function(FragmentUserSettingsFoptions) _then;

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
      _then(FragmentUserSettingsFoptions(
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

class _CopyWithStubImplFragmentUserSettingsFoptions<TRes>
    implements CopyWithFragmentUserSettingsFoptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsFoptions(this._res);

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

class FragmentUserSettingsFmediaListOptions {
  FragmentUserSettingsFmediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory FragmentUserSettingsFmediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFmediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJsonEnumScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : FragmentUserSettingsFmediaListOptionsanimeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : FragmentUserSettingsFmediaListOptionsmangaList.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumScoreFormat? scoreFormat;

  final String? rowOrder;

  final FragmentUserSettingsFmediaListOptionsanimeList? animeList;

  final FragmentUserSettingsFmediaListOptionsmangaList? mangaList;

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
    if (!(other is FragmentUserSettingsFmediaListOptions) ||
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

extension UtilityExtensionFragmentUserSettingsFmediaListOptions
    on FragmentUserSettingsFmediaListOptions {
  CopyWithFragmentUserSettingsFmediaListOptions<
          FragmentUserSettingsFmediaListOptions>
      get copyWith => CopyWithFragmentUserSettingsFmediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFmediaListOptions<TRes> {
  factory CopyWithFragmentUserSettingsFmediaListOptions(
    FragmentUserSettingsFmediaListOptions instance,
    TRes Function(FragmentUserSettingsFmediaListOptions) then,
  ) = _CopyWithImplFragmentUserSettingsFmediaListOptions;

  factory CopyWithFragmentUserSettingsFmediaListOptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsFmediaListOptions;

  TRes call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsFmediaListOptionsanimeList? animeList,
    FragmentUserSettingsFmediaListOptionsmangaList? mangaList,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> get animeList;
  CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> get mangaList;
}

class _CopyWithImplFragmentUserSettingsFmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptions<TRes> {
  _CopyWithImplFragmentUserSettingsFmediaListOptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFmediaListOptions _instance;

  final TRes Function(FragmentUserSettingsFmediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFmediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as EnumScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as FragmentUserSettingsFmediaListOptionsanimeList?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as FragmentUserSettingsFmediaListOptionsmangaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWithFragmentUserSettingsFmediaListOptionsanimeList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsFmediaListOptionsanimeList(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWithFragmentUserSettingsFmediaListOptionsmangaList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsFmediaListOptionsmangaList(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImplFragmentUserSettingsFmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsFmediaListOptions(this._res);

  TRes _res;

  call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsFmediaListOptionsanimeList? animeList,
    FragmentUserSettingsFmediaListOptionsmangaList? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> get animeList =>
      CopyWithFragmentUserSettingsFmediaListOptionsanimeList.stub(_res);

  CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> get mangaList =>
      CopyWithFragmentUserSettingsFmediaListOptionsmangaList.stub(_res);
}

class FragmentUserSettingsFmediaListOptionsanimeList {
  FragmentUserSettingsFmediaListOptionsanimeList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsFmediaListOptionsanimeList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFmediaListOptionsanimeList(
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
    if (!(other is FragmentUserSettingsFmediaListOptionsanimeList) ||
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

extension UtilityExtensionFragmentUserSettingsFmediaListOptionsanimeList
    on FragmentUserSettingsFmediaListOptionsanimeList {
  CopyWithFragmentUserSettingsFmediaListOptionsanimeList<
          FragmentUserSettingsFmediaListOptionsanimeList>
      get copyWith => CopyWithFragmentUserSettingsFmediaListOptionsanimeList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> {
  factory CopyWithFragmentUserSettingsFmediaListOptionsanimeList(
    FragmentUserSettingsFmediaListOptionsanimeList instance,
    TRes Function(FragmentUserSettingsFmediaListOptionsanimeList) then,
  ) = _CopyWithImplFragmentUserSettingsFmediaListOptionsanimeList;

  factory CopyWithFragmentUserSettingsFmediaListOptionsanimeList.stub(
          TRes res) =
      _CopyWithStubImplFragmentUserSettingsFmediaListOptionsanimeList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsFmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> {
  _CopyWithImplFragmentUserSettingsFmediaListOptionsanimeList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFmediaListOptionsanimeList _instance;

  final TRes Function(FragmentUserSettingsFmediaListOptionsanimeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFmediaListOptionsanimeList(
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

class _CopyWithStubImplFragmentUserSettingsFmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptionsanimeList<TRes> {
  _CopyWithStubImplFragmentUserSettingsFmediaListOptionsanimeList(this._res);

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

class FragmentUserSettingsFmediaListOptionsmangaList {
  FragmentUserSettingsFmediaListOptionsmangaList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsFmediaListOptionsmangaList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsFmediaListOptionsmangaList(
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
    if (!(other is FragmentUserSettingsFmediaListOptionsmangaList) ||
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

extension UtilityExtensionFragmentUserSettingsFmediaListOptionsmangaList
    on FragmentUserSettingsFmediaListOptionsmangaList {
  CopyWithFragmentUserSettingsFmediaListOptionsmangaList<
          FragmentUserSettingsFmediaListOptionsmangaList>
      get copyWith => CopyWithFragmentUserSettingsFmediaListOptionsmangaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> {
  factory CopyWithFragmentUserSettingsFmediaListOptionsmangaList(
    FragmentUserSettingsFmediaListOptionsmangaList instance,
    TRes Function(FragmentUserSettingsFmediaListOptionsmangaList) then,
  ) = _CopyWithImplFragmentUserSettingsFmediaListOptionsmangaList;

  factory CopyWithFragmentUserSettingsFmediaListOptionsmangaList.stub(
          TRes res) =
      _CopyWithStubImplFragmentUserSettingsFmediaListOptionsmangaList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsFmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> {
  _CopyWithImplFragmentUserSettingsFmediaListOptionsmangaList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsFmediaListOptionsmangaList _instance;

  final TRes Function(FragmentUserSettingsFmediaListOptionsmangaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsFmediaListOptionsmangaList(
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

class _CopyWithStubImplFragmentUserSettingsFmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsFmediaListOptionsmangaList<TRes> {
  _CopyWithStubImplFragmentUserSettingsFmediaListOptionsmangaList(this._res);

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

class FragmentUserStatisticsF {
  FragmentUserStatisticsF({
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

  factory FragmentUserStatisticsF.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$minutesWatched = json['minutesWatched'];
    final l$episodesWatched = json['episodesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$genres = json['genres'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatisticsF(
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
              : FragmentUserStatisticsFgenres.fromJson(
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

  final List<FragmentUserStatisticsFgenres?>? genres;

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
    if (!(other is FragmentUserStatisticsF) ||
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

extension UtilityExtensionFragmentUserStatisticsF on FragmentUserStatisticsF {
  CopyWithFragmentUserStatisticsF<FragmentUserStatisticsF> get copyWith =>
      CopyWithFragmentUserStatisticsF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserStatisticsF<TRes> {
  factory CopyWithFragmentUserStatisticsF(
    FragmentUserStatisticsF instance,
    TRes Function(FragmentUserStatisticsF) then,
  ) = _CopyWithImplFragmentUserStatisticsF;

  factory CopyWithFragmentUserStatisticsF.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatisticsF;

  TRes call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsFgenres?>? genres,
    String? $__typename,
  });
  TRes genres(
      Iterable<FragmentUserStatisticsFgenres?>? Function(
              Iterable<
                  CopyWithFragmentUserStatisticsFgenres<
                      FragmentUserStatisticsFgenres>?>?)
          _fn);
}

class _CopyWithImplFragmentUserStatisticsF<TRes>
    implements CopyWithFragmentUserStatisticsF<TRes> {
  _CopyWithImplFragmentUserStatisticsF(
    this._instance,
    this._then,
  );

  final FragmentUserStatisticsF _instance;

  final TRes Function(FragmentUserStatisticsF) _then;

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
      _then(FragmentUserStatisticsF(
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
            : (genres as List<FragmentUserStatisticsFgenres?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes genres(
          Iterable<FragmentUserStatisticsFgenres?>? Function(
                  Iterable<
                      CopyWithFragmentUserStatisticsFgenres<
                          FragmentUserStatisticsFgenres>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWithFragmentUserStatisticsFgenres(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplFragmentUserStatisticsF<TRes>
    implements CopyWithFragmentUserStatisticsF<TRes> {
  _CopyWithStubImplFragmentUserStatisticsF(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsFgenres?>? genres,
    String? $__typename,
  }) =>
      _res;

  genres(_fn) => _res;
}

const fragmentDefinitionUserStatisticsF = FragmentDefinitionNode(
  name: NameNode(value: 'UserStatisticsF'),
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
const documentNodeFragmentUserStatisticsF = DocumentNode(definitions: [
  fragmentDefinitionUserStatisticsF,
]);

class FragmentUserStatisticsFgenres {
  FragmentUserStatisticsFgenres({
    required this.count,
    this.genre,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    this.$__typename = 'UserGenreStatistic',
  });

  factory FragmentUserStatisticsFgenres.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$genre = json['genre'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatisticsFgenres(
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
    if (!(other is FragmentUserStatisticsFgenres) ||
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

extension UtilityExtensionFragmentUserStatisticsFgenres
    on FragmentUserStatisticsFgenres {
  CopyWithFragmentUserStatisticsFgenres<FragmentUserStatisticsFgenres>
      get copyWith => CopyWithFragmentUserStatisticsFgenres(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserStatisticsFgenres<TRes> {
  factory CopyWithFragmentUserStatisticsFgenres(
    FragmentUserStatisticsFgenres instance,
    TRes Function(FragmentUserStatisticsFgenres) then,
  ) = _CopyWithImplFragmentUserStatisticsFgenres;

  factory CopyWithFragmentUserStatisticsFgenres.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatisticsFgenres;

  TRes call({
    int? count,
    String? genre,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserStatisticsFgenres<TRes>
    implements CopyWithFragmentUserStatisticsFgenres<TRes> {
  _CopyWithImplFragmentUserStatisticsFgenres(
    this._instance,
    this._then,
  );

  final FragmentUserStatisticsFgenres _instance;

  final TRes Function(FragmentUserStatisticsFgenres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? genre = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserStatisticsFgenres(
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

class _CopyWithStubImplFragmentUserStatisticsFgenres<TRes>
    implements CopyWithFragmentUserStatisticsFgenres<TRes> {
  _CopyWithStubImplFragmentUserStatisticsFgenres(this._res);

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
