import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentMediaMin {
  FragmentMediaMin({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.episodes,
    this.chapters,
    this.title,
    this.coverImage,
    this.bannerImage,
    this.$__typename = 'Media',
  });

  factory FragmentMediaMin.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMin(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : FragmentMediaMintitle.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : FragmentMediaMincoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final int? episodes;

  final int? chapters;

  final FragmentMediaMintitle? title;

  final FragmentMediaMincoverImage? coverImage;

  final String? bannerImage;

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
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
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
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$episodes,
      l$chapters,
      l$title,
      l$coverImage,
      l$bannerImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentMediaMin || runtimeType != other.runtimeType) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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

extension UtilityExtensionFragmentMediaMin on FragmentMediaMin {
  CopyWithFragmentMediaMin<FragmentMediaMin> get copyWith =>
      CopyWithFragmentMediaMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMin<TRes> {
  factory CopyWithFragmentMediaMin(
    FragmentMediaMin instance,
    TRes Function(FragmentMediaMin) then,
  ) = _CopyWithImplFragmentMediaMin;

  factory CopyWithFragmentMediaMin.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMin;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    FragmentMediaMintitle? title,
    FragmentMediaMincoverImage? coverImage,
    String? bannerImage,
    String? $__typename,
  });
  CopyWithFragmentMediaMintitle<TRes> get title;
  CopyWithFragmentMediaMincoverImage<TRes> get coverImage;
}

class _CopyWithImplFragmentMediaMin<TRes>
    implements CopyWithFragmentMediaMin<TRes> {
  _CopyWithImplFragmentMediaMin(
    this._instance,
    this._then,
  );

  final FragmentMediaMin _instance;

  final TRes Function(FragmentMediaMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMin(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentMediaMintitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentMediaMincoverImage?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMintitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentMediaMintitle.stub(_then(_instance))
        : CopyWithFragmentMediaMintitle(local$title, (e) => call(title: e));
  }

  CopyWithFragmentMediaMincoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentMediaMincoverImage.stub(_then(_instance))
        : CopyWithFragmentMediaMincoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplFragmentMediaMin<TRes>
    implements CopyWithFragmentMediaMin<TRes> {
  _CopyWithStubImplFragmentMediaMin(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    FragmentMediaMintitle? title,
    FragmentMediaMincoverImage? coverImage,
    String? bannerImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMintitle<TRes> get title =>
      CopyWithFragmentMediaMintitle.stub(_res);

  CopyWithFragmentMediaMincoverImage<TRes> get coverImage =>
      CopyWithFragmentMediaMincoverImage.stub(_res);
}

const fragmentDefinitionMediaMin = FragmentDefinitionNode(
  name: NameNode(value: 'MediaMin'),
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
      name: NameNode(value: 'episodes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chapters'),
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
      name: NameNode(value: 'bannerImage'),
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
const documentNodeFragmentMediaMin = DocumentNode(definitions: [
  fragmentDefinitionMediaMin,
]);

class FragmentMediaMintitle {
  FragmentMediaMintitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentMediaMintitle.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMintitle(
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
    if (other is! FragmentMediaMintitle || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentMediaMintitle on FragmentMediaMintitle {
  CopyWithFragmentMediaMintitle<FragmentMediaMintitle> get copyWith =>
      CopyWithFragmentMediaMintitle(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMintitle<TRes> {
  factory CopyWithFragmentMediaMintitle(
    FragmentMediaMintitle instance,
    TRes Function(FragmentMediaMintitle) then,
  ) = _CopyWithImplFragmentMediaMintitle;

  factory CopyWithFragmentMediaMintitle.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMintitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMintitle<TRes>
    implements CopyWithFragmentMediaMintitle<TRes> {
  _CopyWithImplFragmentMediaMintitle(
    this._instance,
    this._then,
  );

  final FragmentMediaMintitle _instance;

  final TRes Function(FragmentMediaMintitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMintitle(
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

class _CopyWithStubImplFragmentMediaMintitle<TRes>
    implements CopyWithFragmentMediaMintitle<TRes> {
  _CopyWithStubImplFragmentMediaMintitle(this._res);

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

class FragmentMediaMincoverImage {
  FragmentMediaMincoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentMediaMincoverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMincoverImage(
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
    if (other is! FragmentMediaMincoverImage ||
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

extension UtilityExtensionFragmentMediaMincoverImage
    on FragmentMediaMincoverImage {
  CopyWithFragmentMediaMincoverImage<FragmentMediaMincoverImage> get copyWith =>
      CopyWithFragmentMediaMincoverImage(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMincoverImage<TRes> {
  factory CopyWithFragmentMediaMincoverImage(
    FragmentMediaMincoverImage instance,
    TRes Function(FragmentMediaMincoverImage) then,
  ) = _CopyWithImplFragmentMediaMincoverImage;

  factory CopyWithFragmentMediaMincoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMincoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMincoverImage<TRes>
    implements CopyWithFragmentMediaMincoverImage<TRes> {
  _CopyWithImplFragmentMediaMincoverImage(
    this._instance,
    this._then,
  );

  final FragmentMediaMincoverImage _instance;

  final TRes Function(FragmentMediaMincoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMincoverImage(
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

class _CopyWithStubImplFragmentMediaMincoverImage<TRes>
    implements CopyWithFragmentMediaMincoverImage<TRes> {
  _CopyWithStubImplFragmentMediaMincoverImage(this._res);

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

class FragmentMediaList {
  FragmentMediaList({
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
    this.updatedAt,
    this.createdAt,
    this.$__typename = 'MediaList',
  });

  factory FragmentMediaList.fromJson(Map<String, dynamic> json) {
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
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return FragmentMediaList(
      id: (l$id as int),
      userId: (l$userId as int),
      media: l$media == null
          ? null
          : FragmentMediaListmedia.fromJson((l$media as Map<String, dynamic>)),
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
          : FragmentMediaListstartedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : FragmentMediaListcompletedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      priority: (l$priority as int?),
      updatedAt: (l$updatedAt as int?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int userId;

  final FragmentMediaListmedia? media;

  final EnumMediaListStatus? status;

  final int? progress;

  final int? progressVolumes;

  final double? score;

  final int? repeat;

  final bool? private;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final FragmentMediaListstartedAt? startedAt;

  final FragmentMediaListcompletedAt? completedAt;

  final int? priority;

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
    if (other is! FragmentMediaList || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentMediaList on FragmentMediaList {
  CopyWithFragmentMediaList<FragmentMediaList> get copyWith =>
      CopyWithFragmentMediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaList<TRes> {
  factory CopyWithFragmentMediaList(
    FragmentMediaList instance,
    TRes Function(FragmentMediaList) then,
  ) = _CopyWithImplFragmentMediaList;

  factory CopyWithFragmentMediaList.stub(TRes res) =
      _CopyWithStubImplFragmentMediaList;

  TRes call({
    int? id,
    int? userId,
    FragmentMediaListmedia? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    FragmentMediaListstartedAt? startedAt,
    FragmentMediaListcompletedAt? completedAt,
    int? priority,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  });
  CopyWithFragmentMediaListmedia<TRes> get media;
  CopyWithFragmentMediaListstartedAt<TRes> get startedAt;
  CopyWithFragmentMediaListcompletedAt<TRes> get completedAt;
}

class _CopyWithImplFragmentMediaList<TRes>
    implements CopyWithFragmentMediaList<TRes> {
  _CopyWithImplFragmentMediaList(
    this._instance,
    this._then,
  );

  final FragmentMediaList _instance;

  final TRes Function(FragmentMediaList) _then;

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
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaList(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        media: media == _undefined
            ? _instance.media
            : (media as FragmentMediaListmedia?),
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
            : (startedAt as FragmentMediaListstartedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as FragmentMediaListcompletedAt?),
        priority:
            priority == _undefined ? _instance.priority : (priority as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaListmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithFragmentMediaListmedia.stub(_then(_instance))
        : CopyWithFragmentMediaListmedia(local$media, (e) => call(media: e));
  }

  CopyWithFragmentMediaListstartedAt<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWithFragmentMediaListstartedAt.stub(_then(_instance))
        : CopyWithFragmentMediaListstartedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWithFragmentMediaListcompletedAt<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWithFragmentMediaListcompletedAt.stub(_then(_instance))
        : CopyWithFragmentMediaListcompletedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImplFragmentMediaList<TRes>
    implements CopyWithFragmentMediaList<TRes> {
  _CopyWithStubImplFragmentMediaList(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    FragmentMediaListmedia? media,
    EnumMediaListStatus? status,
    int? progress,
    int? progressVolumes,
    double? score,
    int? repeat,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    FragmentMediaListstartedAt? startedAt,
    FragmentMediaListcompletedAt? completedAt,
    int? priority,
    int? updatedAt,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaListmedia<TRes> get media =>
      CopyWithFragmentMediaListmedia.stub(_res);

  CopyWithFragmentMediaListstartedAt<TRes> get startedAt =>
      CopyWithFragmentMediaListstartedAt.stub(_res);

  CopyWithFragmentMediaListcompletedAt<TRes> get completedAt =>
      CopyWithFragmentMediaListcompletedAt.stub(_res);
}

const fragmentDefinitionMediaList = FragmentDefinitionNode(
  name: NameNode(value: 'MediaList'),
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
          name: NameNode(value: 'MediaMin'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'nextAiringEpisode'),
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
              name: NameNode(value: 'airingAt'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'timeUntilAiring'),
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
              name: NameNode(value: 'mediaId'),
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
const documentNodeFragmentMediaList = DocumentNode(definitions: [
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaMin,
]);

class FragmentMediaListmedia implements FragmentMediaMin {
  FragmentMediaListmedia({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.episodes,
    this.chapters,
    this.title,
    this.coverImage,
    this.bannerImage,
    this.$__typename = 'Media',
    this.nextAiringEpisode,
  });

  factory FragmentMediaListmedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    return FragmentMediaListmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : FragmentMediaListmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : FragmentMediaListmediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : FragmentMediaListmedianextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final int? episodes;

  final int? chapters;

  final FragmentMediaListmediatitle? title;

  final FragmentMediaListmediacoverImage? coverImage;

  final String? bannerImage;

  final String $__typename;

  final FragmentMediaListmedianextAiringEpisode? nextAiringEpisode;

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
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$format = format;
    final l$status = status;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    return Object.hashAll([
      l$id,
      l$type,
      l$format,
      l$status,
      l$episodes,
      l$chapters,
      l$title,
      l$coverImage,
      l$bannerImage,
      l$$__typename,
      l$nextAiringEpisode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentMediaListmedia || runtimeType != other.runtimeType) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentMediaListmedia on FragmentMediaListmedia {
  CopyWithFragmentMediaListmedia<FragmentMediaListmedia> get copyWith =>
      CopyWithFragmentMediaListmedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaListmedia<TRes> {
  factory CopyWithFragmentMediaListmedia(
    FragmentMediaListmedia instance,
    TRes Function(FragmentMediaListmedia) then,
  ) = _CopyWithImplFragmentMediaListmedia;

  factory CopyWithFragmentMediaListmedia.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    FragmentMediaListmediatitle? title,
    FragmentMediaListmediacoverImage? coverImage,
    String? bannerImage,
    String? $__typename,
    FragmentMediaListmedianextAiringEpisode? nextAiringEpisode,
  });
  CopyWithFragmentMediaListmediatitle<TRes> get title;
  CopyWithFragmentMediaListmediacoverImage<TRes> get coverImage;
  CopyWithFragmentMediaListmedianextAiringEpisode<TRes> get nextAiringEpisode;
}

class _CopyWithImplFragmentMediaListmedia<TRes>
    implements CopyWithFragmentMediaListmedia<TRes> {
  _CopyWithImplFragmentMediaListmedia(
    this._instance,
    this._then,
  );

  final FragmentMediaListmedia _instance;

  final TRes Function(FragmentMediaListmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? status = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
    Object? nextAiringEpisode = _undefined,
  }) =>
      _then(FragmentMediaListmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentMediaListmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentMediaListmediacoverImage?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as FragmentMediaListmedianextAiringEpisode?),
      ));

  CopyWithFragmentMediaListmediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentMediaListmediatitle.stub(_then(_instance))
        : CopyWithFragmentMediaListmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithFragmentMediaListmediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentMediaListmediacoverImage.stub(_then(_instance))
        : CopyWithFragmentMediaListmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithFragmentMediaListmedianextAiringEpisode<TRes> get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithFragmentMediaListmedianextAiringEpisode.stub(_then(_instance))
        : CopyWithFragmentMediaListmedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }
}

class _CopyWithStubImplFragmentMediaListmedia<TRes>
    implements CopyWithFragmentMediaListmedia<TRes> {
  _CopyWithStubImplFragmentMediaListmedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    int? episodes,
    int? chapters,
    FragmentMediaListmediatitle? title,
    FragmentMediaListmediacoverImage? coverImage,
    String? bannerImage,
    String? $__typename,
    FragmentMediaListmedianextAiringEpisode? nextAiringEpisode,
  }) =>
      _res;

  CopyWithFragmentMediaListmediatitle<TRes> get title =>
      CopyWithFragmentMediaListmediatitle.stub(_res);

  CopyWithFragmentMediaListmediacoverImage<TRes> get coverImage =>
      CopyWithFragmentMediaListmediacoverImage.stub(_res);

  CopyWithFragmentMediaListmedianextAiringEpisode<TRes> get nextAiringEpisode =>
      CopyWithFragmentMediaListmedianextAiringEpisode.stub(_res);
}

class FragmentMediaListmediatitle implements FragmentMediaMintitle {
  FragmentMediaListmediatitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentMediaListmediatitle.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListmediatitle(
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
    if (other is! FragmentMediaListmediatitle ||
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

extension UtilityExtensionFragmentMediaListmediatitle
    on FragmentMediaListmediatitle {
  CopyWithFragmentMediaListmediatitle<FragmentMediaListmediatitle>
      get copyWith => CopyWithFragmentMediaListmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListmediatitle<TRes> {
  factory CopyWithFragmentMediaListmediatitle(
    FragmentMediaListmediatitle instance,
    TRes Function(FragmentMediaListmediatitle) then,
  ) = _CopyWithImplFragmentMediaListmediatitle;

  factory CopyWithFragmentMediaListmediatitle.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListmediatitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListmediatitle<TRes>
    implements CopyWithFragmentMediaListmediatitle<TRes> {
  _CopyWithImplFragmentMediaListmediatitle(
    this._instance,
    this._then,
  );

  final FragmentMediaListmediatitle _instance;

  final TRes Function(FragmentMediaListmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListmediatitle(
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

class _CopyWithStubImplFragmentMediaListmediatitle<TRes>
    implements CopyWithFragmentMediaListmediatitle<TRes> {
  _CopyWithStubImplFragmentMediaListmediatitle(this._res);

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

class FragmentMediaListmediacoverImage implements FragmentMediaMincoverImage {
  FragmentMediaListmediacoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentMediaListmediacoverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListmediacoverImage(
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
    if (other is! FragmentMediaListmediacoverImage ||
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

extension UtilityExtensionFragmentMediaListmediacoverImage
    on FragmentMediaListmediacoverImage {
  CopyWithFragmentMediaListmediacoverImage<FragmentMediaListmediacoverImage>
      get copyWith => CopyWithFragmentMediaListmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListmediacoverImage<TRes> {
  factory CopyWithFragmentMediaListmediacoverImage(
    FragmentMediaListmediacoverImage instance,
    TRes Function(FragmentMediaListmediacoverImage) then,
  ) = _CopyWithImplFragmentMediaListmediacoverImage;

  factory CopyWithFragmentMediaListmediacoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListmediacoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListmediacoverImage<TRes>
    implements CopyWithFragmentMediaListmediacoverImage<TRes> {
  _CopyWithImplFragmentMediaListmediacoverImage(
    this._instance,
    this._then,
  );

  final FragmentMediaListmediacoverImage _instance;

  final TRes Function(FragmentMediaListmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListmediacoverImage(
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

class _CopyWithStubImplFragmentMediaListmediacoverImage<TRes>
    implements CopyWithFragmentMediaListmediacoverImage<TRes> {
  _CopyWithStubImplFragmentMediaListmediacoverImage(this._res);

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

class FragmentMediaListmedianextAiringEpisode {
  FragmentMediaListmedianextAiringEpisode({
    required this.id,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    required this.mediaId,
    this.$__typename = 'AiringSchedule',
  });

  factory FragmentMediaListmedianextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$mediaId = json['mediaId'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListmedianextAiringEpisode(
      id: (l$id as int),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      mediaId: (l$mediaId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final int mediaId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$mediaId = mediaId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$mediaId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! FragmentMediaListmedianextAiringEpisode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
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

extension UtilityExtensionFragmentMediaListmedianextAiringEpisode
    on FragmentMediaListmedianextAiringEpisode {
  CopyWithFragmentMediaListmedianextAiringEpisode<
          FragmentMediaListmedianextAiringEpisode>
      get copyWith => CopyWithFragmentMediaListmedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListmedianextAiringEpisode<TRes> {
  factory CopyWithFragmentMediaListmedianextAiringEpisode(
    FragmentMediaListmedianextAiringEpisode instance,
    TRes Function(FragmentMediaListmedianextAiringEpisode) then,
  ) = _CopyWithImplFragmentMediaListmedianextAiringEpisode;

  factory CopyWithFragmentMediaListmedianextAiringEpisode.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListmedianextAiringEpisode;

  TRes call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    int? mediaId,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListmedianextAiringEpisode<TRes>
    implements CopyWithFragmentMediaListmedianextAiringEpisode<TRes> {
  _CopyWithImplFragmentMediaListmedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final FragmentMediaListmedianextAiringEpisode _instance;

  final TRes Function(FragmentMediaListmedianextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? mediaId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListmedianextAiringEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaListmedianextAiringEpisode<TRes>
    implements CopyWithFragmentMediaListmedianextAiringEpisode<TRes> {
  _CopyWithStubImplFragmentMediaListmedianextAiringEpisode(this._res);

  TRes _res;

  call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    int? mediaId,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaListstartedAt {
  FragmentMediaListstartedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory FragmentMediaListstartedAt.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListstartedAt(
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
    if (other is! FragmentMediaListstartedAt ||
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

extension UtilityExtensionFragmentMediaListstartedAt
    on FragmentMediaListstartedAt {
  CopyWithFragmentMediaListstartedAt<FragmentMediaListstartedAt> get copyWith =>
      CopyWithFragmentMediaListstartedAt(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaListstartedAt<TRes> {
  factory CopyWithFragmentMediaListstartedAt(
    FragmentMediaListstartedAt instance,
    TRes Function(FragmentMediaListstartedAt) then,
  ) = _CopyWithImplFragmentMediaListstartedAt;

  factory CopyWithFragmentMediaListstartedAt.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListstartedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListstartedAt<TRes>
    implements CopyWithFragmentMediaListstartedAt<TRes> {
  _CopyWithImplFragmentMediaListstartedAt(
    this._instance,
    this._then,
  );

  final FragmentMediaListstartedAt _instance;

  final TRes Function(FragmentMediaListstartedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListstartedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaListstartedAt<TRes>
    implements CopyWithFragmentMediaListstartedAt<TRes> {
  _CopyWithStubImplFragmentMediaListstartedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaListcompletedAt {
  FragmentMediaListcompletedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory FragmentMediaListcompletedAt.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return FragmentMediaListcompletedAt(
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
    if (other is! FragmentMediaListcompletedAt ||
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

extension UtilityExtensionFragmentMediaListcompletedAt
    on FragmentMediaListcompletedAt {
  CopyWithFragmentMediaListcompletedAt<FragmentMediaListcompletedAt>
      get copyWith => CopyWithFragmentMediaListcompletedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaListcompletedAt<TRes> {
  factory CopyWithFragmentMediaListcompletedAt(
    FragmentMediaListcompletedAt instance,
    TRes Function(FragmentMediaListcompletedAt) then,
  ) = _CopyWithImplFragmentMediaListcompletedAt;

  factory CopyWithFragmentMediaListcompletedAt.stub(TRes res) =
      _CopyWithStubImplFragmentMediaListcompletedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaListcompletedAt<TRes>
    implements CopyWithFragmentMediaListcompletedAt<TRes> {
  _CopyWithImplFragmentMediaListcompletedAt(
    this._instance,
    this._then,
  );

  final FragmentMediaListcompletedAt _instance;

  final TRes Function(FragmentMediaListcompletedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaListcompletedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaListcompletedAt<TRes>
    implements CopyWithFragmentMediaListcompletedAt<TRes> {
  _CopyWithStubImplFragmentMediaListcompletedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class FragmentUserMin {
  FragmentUserMin({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory FragmentUserMin.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return FragmentUserMin(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : FragmentUserMinavatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final FragmentUserMinavatar? avatar;

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
    if (other is! FragmentUserMin || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserMin on FragmentUserMin {
  CopyWithFragmentUserMin<FragmentUserMin> get copyWith =>
      CopyWithFragmentUserMin(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserMin<TRes> {
  factory CopyWithFragmentUserMin(
    FragmentUserMin instance,
    TRes Function(FragmentUserMin) then,
  ) = _CopyWithImplFragmentUserMin;

  factory CopyWithFragmentUserMin.stub(TRes res) =
      _CopyWithStubImplFragmentUserMin;

  TRes call({
    int? id,
    String? name,
    FragmentUserMinavatar? avatar,
    String? $__typename,
  });
  CopyWithFragmentUserMinavatar<TRes> get avatar;
}

class _CopyWithImplFragmentUserMin<TRes>
    implements CopyWithFragmentUserMin<TRes> {
  _CopyWithImplFragmentUserMin(
    this._instance,
    this._then,
  );

  final FragmentUserMin _instance;

  final TRes Function(FragmentUserMin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMin(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as FragmentUserMinavatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserMinavatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWithFragmentUserMinavatar.stub(_then(_instance))
        : CopyWithFragmentUserMinavatar(local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImplFragmentUserMin<TRes>
    implements CopyWithFragmentUserMin<TRes> {
  _CopyWithStubImplFragmentUserMin(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    FragmentUserMinavatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMinavatar<TRes> get avatar =>
      CopyWithFragmentUserMinavatar.stub(_res);
}

const fragmentDefinitionUserMin = FragmentDefinitionNode(
  name: NameNode(value: 'UserMin'),
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
const documentNodeFragmentUserMin = DocumentNode(definitions: [
  fragmentDefinitionUserMin,
]);

class FragmentUserMinavatar {
  FragmentUserMinavatar({
    this.large,
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory FragmentUserMinavatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return FragmentUserMinavatar(
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
    if (other is! FragmentUserMinavatar || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserMinavatar on FragmentUserMinavatar {
  CopyWithFragmentUserMinavatar<FragmentUserMinavatar> get copyWith =>
      CopyWithFragmentUserMinavatar(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserMinavatar<TRes> {
  factory CopyWithFragmentUserMinavatar(
    FragmentUserMinavatar instance,
    TRes Function(FragmentUserMinavatar) then,
  ) = _CopyWithImplFragmentUserMinavatar;

  factory CopyWithFragmentUserMinavatar.stub(TRes res) =
      _CopyWithStubImplFragmentUserMinavatar;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserMinavatar<TRes>
    implements CopyWithFragmentUserMinavatar<TRes> {
  _CopyWithImplFragmentUserMinavatar(
    this._instance,
    this._then,
  );

  final FragmentUserMinavatar _instance;

  final TRes Function(FragmentUserMinavatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserMinavatar(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentUserMinavatar<TRes>
    implements CopyWithFragmentUserMinavatar<TRes> {
  _CopyWithStubImplFragmentUserMinavatar(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class FragmentUserSocials {
  FragmentUserSocials({
    this.isFollowing,
    this.isFollower,
    this.isBlocked,
    this.$__typename = 'User',
  });

  factory FragmentUserSocials.fromJson(Map<String, dynamic> json) {
    final l$isFollowing = json['isFollowing'];
    final l$isFollower = json['isFollower'];
    final l$isBlocked = json['isBlocked'];
    final l$$__typename = json['__typename'];
    return FragmentUserSocials(
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
    if (other is! FragmentUserSocials || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserSocials on FragmentUserSocials {
  CopyWithFragmentUserSocials<FragmentUserSocials> get copyWith =>
      CopyWithFragmentUserSocials(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSocials<TRes> {
  factory CopyWithFragmentUserSocials(
    FragmentUserSocials instance,
    TRes Function(FragmentUserSocials) then,
  ) = _CopyWithImplFragmentUserSocials;

  factory CopyWithFragmentUserSocials.stub(TRes res) =
      _CopyWithStubImplFragmentUserSocials;

  TRes call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSocials<TRes>
    implements CopyWithFragmentUserSocials<TRes> {
  _CopyWithImplFragmentUserSocials(
    this._instance,
    this._then,
  );

  final FragmentUserSocials _instance;

  final TRes Function(FragmentUserSocials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFollowing = _undefined,
    Object? isFollower = _undefined,
    Object? isBlocked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSocials(
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

class _CopyWithStubImplFragmentUserSocials<TRes>
    implements CopyWithFragmentUserSocials<TRes> {
  _CopyWithStubImplFragmentUserSocials(this._res);

  TRes _res;

  call({
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserSocials = FragmentDefinitionNode(
  name: NameNode(value: 'UserSocials'),
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
const documentNodeFragmentUserSocials = DocumentNode(definitions: [
  fragmentDefinitionUserSocials,
]);

class FragmentUserSettings {
  FragmentUserSettings({
    this.options,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory FragmentUserSettings.fromJson(Map<String, dynamic> json) {
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettings(
      options: l$options == null
          ? null
          : FragmentUserSettingsoptions.fromJson(
              (l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : FragmentUserSettingsmediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentUserSettingsoptions? options;

  final FragmentUserSettingsmediaListOptions? mediaListOptions;

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
    if (other is! FragmentUserSettings || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserSettings on FragmentUserSettings {
  CopyWithFragmentUserSettings<FragmentUserSettings> get copyWith =>
      CopyWithFragmentUserSettings(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserSettings<TRes> {
  factory CopyWithFragmentUserSettings(
    FragmentUserSettings instance,
    TRes Function(FragmentUserSettings) then,
  ) = _CopyWithImplFragmentUserSettings;

  factory CopyWithFragmentUserSettings.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettings;

  TRes call({
    FragmentUserSettingsoptions? options,
    FragmentUserSettingsmediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsoptions<TRes> get options;
  CopyWithFragmentUserSettingsmediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImplFragmentUserSettings<TRes>
    implements CopyWithFragmentUserSettings<TRes> {
  _CopyWithImplFragmentUserSettings(
    this._instance,
    this._then,
  );

  final FragmentUserSettings _instance;

  final TRes Function(FragmentUserSettings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettings(
        options: options == _undefined
            ? _instance.options
            : (options as FragmentUserSettingsoptions?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as FragmentUserSettingsmediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsoptions<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWithFragmentUserSettingsoptions.stub(_then(_instance))
        : CopyWithFragmentUserSettingsoptions(
            local$options, (e) => call(options: e));
  }

  CopyWithFragmentUserSettingsmediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWithFragmentUserSettingsmediaListOptions.stub(_then(_instance))
        : CopyWithFragmentUserSettingsmediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImplFragmentUserSettings<TRes>
    implements CopyWithFragmentUserSettings<TRes> {
  _CopyWithStubImplFragmentUserSettings(this._res);

  TRes _res;

  call({
    FragmentUserSettingsoptions? options,
    FragmentUserSettingsmediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsoptions<TRes> get options =>
      CopyWithFragmentUserSettingsoptions.stub(_res);

  CopyWithFragmentUserSettingsmediaListOptions<TRes> get mediaListOptions =>
      CopyWithFragmentUserSettingsmediaListOptions.stub(_res);
}

const fragmentDefinitionUserSettings = FragmentDefinitionNode(
  name: NameNode(value: 'UserSettings'),
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
const documentNodeFragmentUserSettings = DocumentNode(definitions: [
  fragmentDefinitionUserSettings,
]);

class FragmentUserSettingsoptions {
  FragmentUserSettingsoptions({
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

  factory FragmentUserSettingsoptions.fromJson(Map<String, dynamic> json) {
    final l$titleLanguage = json['titleLanguage'];
    final l$displayAdultContent = json['displayAdultContent'];
    final l$airingNotifications = json['airingNotifications'];
    final l$profileColor = json['profileColor'];
    final l$timezone = json['timezone'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsoptions(
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
    if (other is! FragmentUserSettingsoptions ||
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

extension UtilityExtensionFragmentUserSettingsoptions
    on FragmentUserSettingsoptions {
  CopyWithFragmentUserSettingsoptions<FragmentUserSettingsoptions>
      get copyWith => CopyWithFragmentUserSettingsoptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsoptions<TRes> {
  factory CopyWithFragmentUserSettingsoptions(
    FragmentUserSettingsoptions instance,
    TRes Function(FragmentUserSettingsoptions) then,
  ) = _CopyWithImplFragmentUserSettingsoptions;

  factory CopyWithFragmentUserSettingsoptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsoptions;

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

class _CopyWithImplFragmentUserSettingsoptions<TRes>
    implements CopyWithFragmentUserSettingsoptions<TRes> {
  _CopyWithImplFragmentUserSettingsoptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsoptions _instance;

  final TRes Function(FragmentUserSettingsoptions) _then;

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
      _then(FragmentUserSettingsoptions(
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

class _CopyWithStubImplFragmentUserSettingsoptions<TRes>
    implements CopyWithFragmentUserSettingsoptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsoptions(this._res);

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

class FragmentUserSettingsmediaListOptions {
  FragmentUserSettingsmediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory FragmentUserSettingsmediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsmediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJsonEnumScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : FragmentUserSettingsmediaListOptionsanimeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : FragmentUserSettingsmediaListOptionsmangaList.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumScoreFormat? scoreFormat;

  final String? rowOrder;

  final FragmentUserSettingsmediaListOptionsanimeList? animeList;

  final FragmentUserSettingsmediaListOptionsmangaList? mangaList;

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
    if (other is! FragmentUserSettingsmediaListOptions ||
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

extension UtilityExtensionFragmentUserSettingsmediaListOptions
    on FragmentUserSettingsmediaListOptions {
  CopyWithFragmentUserSettingsmediaListOptions<
          FragmentUserSettingsmediaListOptions>
      get copyWith => CopyWithFragmentUserSettingsmediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsmediaListOptions<TRes> {
  factory CopyWithFragmentUserSettingsmediaListOptions(
    FragmentUserSettingsmediaListOptions instance,
    TRes Function(FragmentUserSettingsmediaListOptions) then,
  ) = _CopyWithImplFragmentUserSettingsmediaListOptions;

  factory CopyWithFragmentUserSettingsmediaListOptions.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsmediaListOptions;

  TRes call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsmediaListOptionsanimeList? animeList,
    FragmentUserSettingsmediaListOptionsmangaList? mangaList,
    String? $__typename,
  });
  CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> get animeList;
  CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> get mangaList;
}

class _CopyWithImplFragmentUserSettingsmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptions<TRes> {
  _CopyWithImplFragmentUserSettingsmediaListOptions(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsmediaListOptions _instance;

  final TRes Function(FragmentUserSettingsmediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsmediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as EnumScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as FragmentUserSettingsmediaListOptionsanimeList?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as FragmentUserSettingsmediaListOptionsmangaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWithFragmentUserSettingsmediaListOptionsanimeList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsmediaListOptionsanimeList(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWithFragmentUserSettingsmediaListOptionsmangaList.stub(
            _then(_instance))
        : CopyWithFragmentUserSettingsmediaListOptionsmangaList(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImplFragmentUserSettingsmediaListOptions<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptions<TRes> {
  _CopyWithStubImplFragmentUserSettingsmediaListOptions(this._res);

  TRes _res;

  call({
    EnumScoreFormat? scoreFormat,
    String? rowOrder,
    FragmentUserSettingsmediaListOptionsanimeList? animeList,
    FragmentUserSettingsmediaListOptionsmangaList? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> get animeList =>
      CopyWithFragmentUserSettingsmediaListOptionsanimeList.stub(_res);

  CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> get mangaList =>
      CopyWithFragmentUserSettingsmediaListOptionsmangaList.stub(_res);
}

class FragmentUserSettingsmediaListOptionsanimeList {
  FragmentUserSettingsmediaListOptionsanimeList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsmediaListOptionsanimeList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsmediaListOptionsanimeList(
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
    if (other is! FragmentUserSettingsmediaListOptionsanimeList ||
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

extension UtilityExtensionFragmentUserSettingsmediaListOptionsanimeList
    on FragmentUserSettingsmediaListOptionsanimeList {
  CopyWithFragmentUserSettingsmediaListOptionsanimeList<
          FragmentUserSettingsmediaListOptionsanimeList>
      get copyWith => CopyWithFragmentUserSettingsmediaListOptionsanimeList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> {
  factory CopyWithFragmentUserSettingsmediaListOptionsanimeList(
    FragmentUserSettingsmediaListOptionsanimeList instance,
    TRes Function(FragmentUserSettingsmediaListOptionsanimeList) then,
  ) = _CopyWithImplFragmentUserSettingsmediaListOptionsanimeList;

  factory CopyWithFragmentUserSettingsmediaListOptionsanimeList.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsmediaListOptionsanimeList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> {
  _CopyWithImplFragmentUserSettingsmediaListOptionsanimeList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsmediaListOptionsanimeList _instance;

  final TRes Function(FragmentUserSettingsmediaListOptionsanimeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsmediaListOptionsanimeList(
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

class _CopyWithStubImplFragmentUserSettingsmediaListOptionsanimeList<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptionsanimeList<TRes> {
  _CopyWithStubImplFragmentUserSettingsmediaListOptionsanimeList(this._res);

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

class FragmentUserSettingsmediaListOptionsmangaList {
  FragmentUserSettingsmediaListOptionsmangaList({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory FragmentUserSettingsmediaListOptionsmangaList.fromJson(
      Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$customLists = json['customLists'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return FragmentUserSettingsmediaListOptionsmangaList(
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
    if (other is! FragmentUserSettingsmediaListOptionsmangaList ||
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

extension UtilityExtensionFragmentUserSettingsmediaListOptionsmangaList
    on FragmentUserSettingsmediaListOptionsmangaList {
  CopyWithFragmentUserSettingsmediaListOptionsmangaList<
          FragmentUserSettingsmediaListOptionsmangaList>
      get copyWith => CopyWithFragmentUserSettingsmediaListOptionsmangaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> {
  factory CopyWithFragmentUserSettingsmediaListOptionsmangaList(
    FragmentUserSettingsmediaListOptionsmangaList instance,
    TRes Function(FragmentUserSettingsmediaListOptionsmangaList) then,
  ) = _CopyWithImplFragmentUserSettingsmediaListOptionsmangaList;

  factory CopyWithFragmentUserSettingsmediaListOptionsmangaList.stub(TRes res) =
      _CopyWithStubImplFragmentUserSettingsmediaListOptionsmangaList;

  TRes call({
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? customLists,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserSettingsmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> {
  _CopyWithImplFragmentUserSettingsmediaListOptionsmangaList(
    this._instance,
    this._then,
  );

  final FragmentUserSettingsmediaListOptionsmangaList _instance;

  final TRes Function(FragmentUserSettingsmediaListOptionsmangaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? customLists = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserSettingsmediaListOptionsmangaList(
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

class _CopyWithStubImplFragmentUserSettingsmediaListOptionsmangaList<TRes>
    implements CopyWithFragmentUserSettingsmediaListOptionsmangaList<TRes> {
  _CopyWithStubImplFragmentUserSettingsmediaListOptionsmangaList(this._res);

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

class FragmentUserStatistics {
  FragmentUserStatistics({
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

  factory FragmentUserStatistics.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$minutesWatched = json['minutesWatched'];
    final l$episodesWatched = json['episodesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$genres = json['genres'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatistics(
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
              : FragmentUserStatisticsgenres.fromJson(
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

  final List<FragmentUserStatisticsgenres?>? genres;

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
    if (other is! FragmentUserStatistics || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentUserStatistics on FragmentUserStatistics {
  CopyWithFragmentUserStatistics<FragmentUserStatistics> get copyWith =>
      CopyWithFragmentUserStatistics(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentUserStatistics<TRes> {
  factory CopyWithFragmentUserStatistics(
    FragmentUserStatistics instance,
    TRes Function(FragmentUserStatistics) then,
  ) = _CopyWithImplFragmentUserStatistics;

  factory CopyWithFragmentUserStatistics.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatistics;

  TRes call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsgenres?>? genres,
    String? $__typename,
  });
  TRes genres(
      Iterable<FragmentUserStatisticsgenres?>? Function(
              Iterable<
                  CopyWithFragmentUserStatisticsgenres<
                      FragmentUserStatisticsgenres>?>?)
          _fn);
}

class _CopyWithImplFragmentUserStatistics<TRes>
    implements CopyWithFragmentUserStatistics<TRes> {
  _CopyWithImplFragmentUserStatistics(
    this._instance,
    this._then,
  );

  final FragmentUserStatistics _instance;

  final TRes Function(FragmentUserStatistics) _then;

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
      _then(FragmentUserStatistics(
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
            : (genres as List<FragmentUserStatisticsgenres?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes genres(
          Iterable<FragmentUserStatisticsgenres?>? Function(
                  Iterable<
                      CopyWithFragmentUserStatisticsgenres<
                          FragmentUserStatisticsgenres>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWithFragmentUserStatisticsgenres(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplFragmentUserStatistics<TRes>
    implements CopyWithFragmentUserStatistics<TRes> {
  _CopyWithStubImplFragmentUserStatistics(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<FragmentUserStatisticsgenres?>? genres,
    String? $__typename,
  }) =>
      _res;

  genres(_fn) => _res;
}

const fragmentDefinitionUserStatistics = FragmentDefinitionNode(
  name: NameNode(value: 'UserStatistics'),
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
const documentNodeFragmentUserStatistics = DocumentNode(definitions: [
  fragmentDefinitionUserStatistics,
]);

class FragmentUserStatisticsgenres {
  FragmentUserStatisticsgenres({
    required this.count,
    this.genre,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    this.$__typename = 'UserGenreStatistic',
  });

  factory FragmentUserStatisticsgenres.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$genre = json['genre'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$$__typename = json['__typename'];
    return FragmentUserStatisticsgenres(
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
    if (other is! FragmentUserStatisticsgenres ||
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

extension UtilityExtensionFragmentUserStatisticsgenres
    on FragmentUserStatisticsgenres {
  CopyWithFragmentUserStatisticsgenres<FragmentUserStatisticsgenres>
      get copyWith => CopyWithFragmentUserStatisticsgenres(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentUserStatisticsgenres<TRes> {
  factory CopyWithFragmentUserStatisticsgenres(
    FragmentUserStatisticsgenres instance,
    TRes Function(FragmentUserStatisticsgenres) then,
  ) = _CopyWithImplFragmentUserStatisticsgenres;

  factory CopyWithFragmentUserStatisticsgenres.stub(TRes res) =
      _CopyWithStubImplFragmentUserStatisticsgenres;

  TRes call({
    int? count,
    String? genre,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    String? $__typename,
  });
}

class _CopyWithImplFragmentUserStatisticsgenres<TRes>
    implements CopyWithFragmentUserStatisticsgenres<TRes> {
  _CopyWithImplFragmentUserStatisticsgenres(
    this._instance,
    this._then,
  );

  final FragmentUserStatisticsgenres _instance;

  final TRes Function(FragmentUserStatisticsgenres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? genre = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentUserStatisticsgenres(
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

class _CopyWithStubImplFragmentUserStatisticsgenres<TRes>
    implements CopyWithFragmentUserStatisticsgenres<TRes> {
  _CopyWithStubImplFragmentUserStatisticsgenres(this._res);

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
