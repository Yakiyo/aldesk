import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentMediaMinimalFrag {
  FragmentMediaMinimalFrag({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory FragmentMediaMinimalFrag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalFrag(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      title: l$title == null
          ? null
          : FragmentMediaMinimalFragtitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : FragmentMediaMinimalFragcoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final FragmentMediaMinimalFragtitle? title;

  final FragmentMediaMinimalFragcoverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
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
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
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
    if (!(other is FragmentMediaMinimalFrag) ||
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

extension UtilityExtensionFragmentMediaMinimalFrag on FragmentMediaMinimalFrag {
  CopyWithFragmentMediaMinimalFrag<FragmentMediaMinimalFrag> get copyWith =>
      CopyWithFragmentMediaMinimalFrag(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMinimalFrag<TRes> {
  factory CopyWithFragmentMediaMinimalFrag(
    FragmentMediaMinimalFrag instance,
    TRes Function(FragmentMediaMinimalFrag) then,
  ) = _CopyWithImplFragmentMediaMinimalFrag;

  factory CopyWithFragmentMediaMinimalFrag.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalFrag;

  TRes call({
    int? id,
    EnumMediaType? type,
    FragmentMediaMinimalFragtitle? title,
    FragmentMediaMinimalFragcoverImage? coverImage,
    String? $__typename,
  });
  CopyWithFragmentMediaMinimalFragtitle<TRes> get title;
  CopyWithFragmentMediaMinimalFragcoverImage<TRes> get coverImage;
}

class _CopyWithImplFragmentMediaMinimalFrag<TRes>
    implements CopyWithFragmentMediaMinimalFrag<TRes> {
  _CopyWithImplFragmentMediaMinimalFrag(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalFrag _instance;

  final TRes Function(FragmentMediaMinimalFrag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinimalFrag(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as FragmentMediaMinimalFragtitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentMediaMinimalFragcoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMinimalFragtitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentMediaMinimalFragtitle.stub(_then(_instance))
        : CopyWithFragmentMediaMinimalFragtitle(
            local$title, (e) => call(title: e));
  }

  CopyWithFragmentMediaMinimalFragcoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentMediaMinimalFragcoverImage.stub(_then(_instance))
        : CopyWithFragmentMediaMinimalFragcoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplFragmentMediaMinimalFrag<TRes>
    implements CopyWithFragmentMediaMinimalFrag<TRes> {
  _CopyWithStubImplFragmentMediaMinimalFrag(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    FragmentMediaMinimalFragtitle? title,
    FragmentMediaMinimalFragcoverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMinimalFragtitle<TRes> get title =>
      CopyWithFragmentMediaMinimalFragtitle.stub(_res);

  CopyWithFragmentMediaMinimalFragcoverImage<TRes> get coverImage =>
      CopyWithFragmentMediaMinimalFragcoverImage.stub(_res);
}

const fragmentDefinitionMediaMinimalFrag = FragmentDefinitionNode(
  name: NameNode(value: 'MediaMinimalFrag'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'romaji'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
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
const documentNodeFragmentMediaMinimalFrag = DocumentNode(definitions: [
  fragmentDefinitionMediaMinimalFrag,
]);

class FragmentMediaMinimalFragtitle {
  FragmentMediaMinimalFragtitle({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentMediaMinimalFragtitle.fromJson(Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalFragtitle(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaMinimalFragtitle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtensionFragmentMediaMinimalFragtitle
    on FragmentMediaMinimalFragtitle {
  CopyWithFragmentMediaMinimalFragtitle<FragmentMediaMinimalFragtitle>
      get copyWith => CopyWithFragmentMediaMinimalFragtitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaMinimalFragtitle<TRes> {
  factory CopyWithFragmentMediaMinimalFragtitle(
    FragmentMediaMinimalFragtitle instance,
    TRes Function(FragmentMediaMinimalFragtitle) then,
  ) = _CopyWithImplFragmentMediaMinimalFragtitle;

  factory CopyWithFragmentMediaMinimalFragtitle.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalFragtitle;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinimalFragtitle<TRes>
    implements CopyWithFragmentMediaMinimalFragtitle<TRes> {
  _CopyWithImplFragmentMediaMinimalFragtitle(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalFragtitle _instance;

  final TRes Function(FragmentMediaMinimalFragtitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinimalFragtitle(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaMinimalFragtitle<TRes>
    implements CopyWithFragmentMediaMinimalFragtitle<TRes> {
  _CopyWithStubImplFragmentMediaMinimalFragtitle(this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaMinimalFragcoverImage {
  FragmentMediaMinimalFragcoverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentMediaMinimalFragcoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalFragcoverImage(
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
    if (!(other is FragmentMediaMinimalFragcoverImage) ||
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

extension UtilityExtensionFragmentMediaMinimalFragcoverImage
    on FragmentMediaMinimalFragcoverImage {
  CopyWithFragmentMediaMinimalFragcoverImage<FragmentMediaMinimalFragcoverImage>
      get copyWith => CopyWithFragmentMediaMinimalFragcoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaMinimalFragcoverImage<TRes> {
  factory CopyWithFragmentMediaMinimalFragcoverImage(
    FragmentMediaMinimalFragcoverImage instance,
    TRes Function(FragmentMediaMinimalFragcoverImage) then,
  ) = _CopyWithImplFragmentMediaMinimalFragcoverImage;

  factory CopyWithFragmentMediaMinimalFragcoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalFragcoverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinimalFragcoverImage<TRes>
    implements CopyWithFragmentMediaMinimalFragcoverImage<TRes> {
  _CopyWithImplFragmentMediaMinimalFragcoverImage(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalFragcoverImage _instance;

  final TRes Function(FragmentMediaMinimalFragcoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinimalFragcoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaMinimalFragcoverImage<TRes>
    implements CopyWithFragmentMediaMinimalFragcoverImage<TRes> {
  _CopyWithStubImplFragmentMediaMinimalFragcoverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class FragmentMediaCategory {
  FragmentMediaCategory({
    this.type,
    this.format,
    this.$__typename = 'Media',
  });

  factory FragmentMediaCategory.fromJson(Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$format = json['format'];
    final l$$__typename = json['__typename'];
    return FragmentMediaCategory(
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJsonEnumMediaFormat(l$format);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$format = format;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$format,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaCategory) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentMediaCategory on FragmentMediaCategory {
  CopyWithFragmentMediaCategory<FragmentMediaCategory> get copyWith =>
      CopyWithFragmentMediaCategory(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaCategory<TRes> {
  factory CopyWithFragmentMediaCategory(
    FragmentMediaCategory instance,
    TRes Function(FragmentMediaCategory) then,
  ) = _CopyWithImplFragmentMediaCategory;

  factory CopyWithFragmentMediaCategory.stub(TRes res) =
      _CopyWithStubImplFragmentMediaCategory;

  TRes call({
    EnumMediaType? type,
    EnumMediaFormat? format,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaCategory<TRes>
    implements CopyWithFragmentMediaCategory<TRes> {
  _CopyWithImplFragmentMediaCategory(
    this._instance,
    this._then,
  );

  final FragmentMediaCategory _instance;

  final TRes Function(FragmentMediaCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? format = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaCategory(
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaCategory<TRes>
    implements CopyWithFragmentMediaCategory<TRes> {
  _CopyWithStubImplFragmentMediaCategory(this._res);

  TRes _res;

  call({
    EnumMediaType? type,
    EnumMediaFormat? format,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaCategory = FragmentDefinitionNode(
  name: NameNode(value: 'MediaCategory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentMediaCategory = DocumentNode(definitions: [
  fragmentDefinitionMediaCategory,
]);

class FragmentMediaExtraInfo {
  FragmentMediaExtraInfo({
    this.season,
    this.seasonYear,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.$__typename = 'Media',
  });

  factory FragmentMediaExtraInfo.fromJson(Map<String, dynamic> json) {
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$averageScore = json['averageScore'];
    final l$meanScore = json['meanScore'];
    final l$popularity = json['popularity'];
    final l$$__typename = json['__typename'];
    return FragmentMediaExtraInfo(
      season: l$season == null
          ? null
          : fromJsonEnumMediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      averageScore: (l$averageScore as int?),
      meanScore: (l$meanScore as int?),
      popularity: (l$popularity as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final EnumMediaSeason? season;

  final int? seasonYear;

  final int? averageScore;

  final int? meanScore;

  final int? popularity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJsonEnumMediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$averageScore = averageScore;
    final l$meanScore = meanScore;
    final l$popularity = popularity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$season,
      l$seasonYear,
      l$averageScore,
      l$meanScore,
      l$popularity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentMediaExtraInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
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

extension UtilityExtensionFragmentMediaExtraInfo on FragmentMediaExtraInfo {
  CopyWithFragmentMediaExtraInfo<FragmentMediaExtraInfo> get copyWith =>
      CopyWithFragmentMediaExtraInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaExtraInfo<TRes> {
  factory CopyWithFragmentMediaExtraInfo(
    FragmentMediaExtraInfo instance,
    TRes Function(FragmentMediaExtraInfo) then,
  ) = _CopyWithImplFragmentMediaExtraInfo;

  factory CopyWithFragmentMediaExtraInfo.stub(TRes res) =
      _CopyWithStubImplFragmentMediaExtraInfo;

  TRes call({
    EnumMediaSeason? season,
    int? seasonYear,
    int? averageScore,
    int? meanScore,
    int? popularity,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaExtraInfo<TRes>
    implements CopyWithFragmentMediaExtraInfo<TRes> {
  _CopyWithImplFragmentMediaExtraInfo(
    this._instance,
    this._then,
  );

  final FragmentMediaExtraInfo _instance;

  final TRes Function(FragmentMediaExtraInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? averageScore = _undefined,
    Object? meanScore = _undefined,
    Object? popularity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaExtraInfo(
        season: season == _undefined
            ? _instance.season
            : (season as EnumMediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplFragmentMediaExtraInfo<TRes>
    implements CopyWithFragmentMediaExtraInfo<TRes> {
  _CopyWithStubImplFragmentMediaExtraInfo(this._res);

  TRes _res;

  call({
    EnumMediaSeason? season,
    int? seasonYear,
    int? averageScore,
    int? meanScore,
    int? popularity,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaExtraInfo = FragmentDefinitionNode(
  name: NameNode(value: 'MediaExtraInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'season'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'seasonYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'averageScore'),
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
      name: NameNode(value: 'popularity'),
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
const documentNodeFragmentMediaExtraInfo = DocumentNode(definitions: [
  fragmentDefinitionMediaExtraInfo,
]);

class VariablesQueryMediaMinimal {
  factory VariablesQueryMediaMinimal({
    int? id,
    String? search,
  }) =>
      VariablesQueryMediaMinimal._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  VariablesQueryMediaMinimal._(this._$data);

  factory VariablesQueryMediaMinimal.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryMediaMinimal._(result$data);
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

  CopyWithVariablesQueryMediaMinimal<VariablesQueryMediaMinimal> get copyWith =>
      CopyWithVariablesQueryMediaMinimal(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryMediaMinimal) ||
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

abstract class CopyWithVariablesQueryMediaMinimal<TRes> {
  factory CopyWithVariablesQueryMediaMinimal(
    VariablesQueryMediaMinimal instance,
    TRes Function(VariablesQueryMediaMinimal) then,
  ) = _CopyWithImplVariablesQueryMediaMinimal;

  factory CopyWithVariablesQueryMediaMinimal.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMediaMinimal;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImplVariablesQueryMediaMinimal<TRes>
    implements CopyWithVariablesQueryMediaMinimal<TRes> {
  _CopyWithImplVariablesQueryMediaMinimal(
    this._instance,
    this._then,
  );

  final VariablesQueryMediaMinimal _instance;

  final TRes Function(VariablesQueryMediaMinimal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryMediaMinimal._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMediaMinimal<TRes>
    implements CopyWithVariablesQueryMediaMinimal<TRes> {
  _CopyWithStubImplVariablesQueryMediaMinimal(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class QueryMediaMinimal {
  QueryMediaMinimal({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMediaMinimal.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMediaMinimal(
      Media: l$Media == null
          ? null
          : FragmentMediaMinimalFrag.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentMediaMinimalFrag? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMinimal) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtensionQueryMediaMinimal on QueryMediaMinimal {
  CopyWithQueryMediaMinimal<QueryMediaMinimal> get copyWith =>
      CopyWithQueryMediaMinimal(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMinimal<TRes> {
  factory CopyWithQueryMediaMinimal(
    QueryMediaMinimal instance,
    TRes Function(QueryMediaMinimal) then,
  ) = _CopyWithImplQueryMediaMinimal;

  factory CopyWithQueryMediaMinimal.stub(TRes res) =
      _CopyWithStubImplQueryMediaMinimal;

  TRes call({
    FragmentMediaMinimalFrag? Media,
    String? $__typename,
  });
  CopyWithFragmentMediaMinimalFrag<TRes> get Media;
}

class _CopyWithImplQueryMediaMinimal<TRes>
    implements CopyWithQueryMediaMinimal<TRes> {
  _CopyWithImplQueryMediaMinimal(
    this._instance,
    this._then,
  );

  final QueryMediaMinimal _instance;

  final TRes Function(QueryMediaMinimal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMinimal(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as FragmentMediaMinimalFrag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMinimalFrag<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithFragmentMediaMinimalFrag.stub(_then(_instance))
        : CopyWithFragmentMediaMinimalFrag(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMediaMinimal<TRes>
    implements CopyWithQueryMediaMinimal<TRes> {
  _CopyWithStubImplQueryMediaMinimal(this._res);

  TRes _res;

  call({
    FragmentMediaMinimalFrag? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMinimalFrag<TRes> get Media =>
      CopyWithFragmentMediaMinimalFrag.stub(_res);
}

const documentNodeQueryMediaMinimal = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaMinimal'),
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
        name: NameNode(value: 'Media'),
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
            name: NameNode(value: 'MediaMinimalFrag'),
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
  fragmentDefinitionMediaMinimalFrag,
]);

class VariablesQueryMedia {
  factory VariablesQueryMedia({
    int? id,
    String? search,
  }) =>
      VariablesQueryMedia._({
        if (id != null) r'id': id,
        if (search != null) r'search': search,
      });

  VariablesQueryMedia._(this._$data);

  factory VariablesQueryMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return VariablesQueryMedia._(result$data);
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

  CopyWithVariablesQueryMedia<VariablesQueryMedia> get copyWith =>
      CopyWithVariablesQueryMedia(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryMedia) || runtimeType != other.runtimeType) {
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

abstract class CopyWithVariablesQueryMedia<TRes> {
  factory CopyWithVariablesQueryMedia(
    VariablesQueryMedia instance,
    TRes Function(VariablesQueryMedia) then,
  ) = _CopyWithImplVariablesQueryMedia;

  factory CopyWithVariablesQueryMedia.stub(TRes res) =
      _CopyWithStubImplVariablesQueryMedia;

  TRes call({
    int? id,
    String? search,
  });
}

class _CopyWithImplVariablesQueryMedia<TRes>
    implements CopyWithVariablesQueryMedia<TRes> {
  _CopyWithImplVariablesQueryMedia(
    this._instance,
    this._then,
  );

  final VariablesQueryMedia _instance;

  final TRes Function(VariablesQueryMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? search = _undefined,
  }) =>
      _then(VariablesQueryMedia._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImplVariablesQueryMedia<TRes>
    implements CopyWithVariablesQueryMedia<TRes> {
  _CopyWithStubImplVariablesQueryMedia(this._res);

  TRes _res;

  call({
    int? id,
    String? search,
  }) =>
      _res;
}

class QueryMedia {
  QueryMedia({
    this.Media,
    this.$__typename = 'Query',
  });

  factory QueryMedia.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return QueryMedia(
      Media: l$Media == null
          ? null
          : QueryMediaMedia.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryMediaMedia? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMedia) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtensionQueryMedia on QueryMedia {
  CopyWithQueryMedia<QueryMedia> get copyWith => CopyWithQueryMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMedia<TRes> {
  factory CopyWithQueryMedia(
    QueryMedia instance,
    TRes Function(QueryMedia) then,
  ) = _CopyWithImplQueryMedia;

  factory CopyWithQueryMedia.stub(TRes res) = _CopyWithStubImplQueryMedia;

  TRes call({
    QueryMediaMedia? Media,
    String? $__typename,
  });
  CopyWithQueryMediaMedia<TRes> get Media;
}

class _CopyWithImplQueryMedia<TRes> implements CopyWithQueryMedia<TRes> {
  _CopyWithImplQueryMedia(
    this._instance,
    this._then,
  );

  final QueryMedia _instance;

  final TRes Function(QueryMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMedia(
        Media:
            Media == _undefined ? _instance.Media : (Media as QueryMediaMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMedia<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWithQueryMediaMedia.stub(_then(_instance))
        : CopyWithQueryMediaMedia(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImplQueryMedia<TRes> implements CopyWithQueryMedia<TRes> {
  _CopyWithStubImplQueryMedia(this._res);

  TRes _res;

  call({
    QueryMediaMedia? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMedia<TRes> get Media => CopyWithQueryMediaMedia.stub(_res);
}

const documentNodeQueryMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Media'),
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
        name: NameNode(value: 'Media'),
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
            name: NameNode(value: 'MediaMinimalFrag'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'MediaCategory'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'MediaExtraInfo'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
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
            name: NameNode(value: 'startDate'),
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
            name: NameNode(value: 'endDate'),
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
            name: NameNode(value: 'volumes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLicensed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'source'),
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
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'synonyms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tags'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'isAdult'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mediaListEntry'),
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
                name: NameNode(value: 'status'),
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
                name: NameNode(value: 'repeat'),
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
  fragmentDefinitionMediaMinimalFrag,
  fragmentDefinitionMediaCategory,
  fragmentDefinitionMediaExtraInfo,
]);

class QueryMediaMedia
    implements
        FragmentMediaMinimalFrag,
        FragmentMediaCategory,
        FragmentMediaExtraInfo {
  QueryMediaMedia({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.format,
    this.season,
    this.seasonYear,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.status,
    this.description,
    this.bannerImage,
    this.startDate,
    this.endDate,
    this.episodes,
    this.chapters,
    this.volumes,
    this.isLicensed,
    this.source,
    this.genres,
    this.synonyms,
    this.tags,
    this.isAdult,
    this.nextAiringEpisode,
    this.mediaListEntry,
  });

  factory QueryMediaMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$format = json['format'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$averageScore = json['averageScore'];
    final l$meanScore = json['meanScore'];
    final l$popularity = json['popularity'];
    final l$status = json['status'];
    final l$description = json['description'];
    final l$bannerImage = json['bannerImage'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$volumes = json['volumes'];
    final l$isLicensed = json['isLicensed'];
    final l$source = json['source'];
    final l$genres = json['genres'];
    final l$synonyms = json['synonyms'];
    final l$tags = json['tags'];
    final l$isAdult = json['isAdult'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$mediaListEntry = json['mediaListEntry'];
    return QueryMediaMedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      title: l$title == null
          ? null
          : QueryMediaMediatitle.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryMediaMediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      format: l$format == null
          ? null
          : fromJsonEnumMediaFormat((l$format as String)),
      season: l$season == null
          ? null
          : fromJsonEnumMediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      averageScore: (l$averageScore as int?),
      meanScore: (l$meanScore as int?),
      popularity: (l$popularity as int?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      description: (l$description as String?),
      bannerImage: (l$bannerImage as String?),
      startDate: l$startDate == null
          ? null
          : QueryMediaMediastartDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : QueryMediaMediaendDate.fromJson(
              (l$endDate as Map<String, dynamic>)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      volumes: (l$volumes as int?),
      isLicensed: (l$isLicensed as bool?),
      source: l$source == null
          ? null
          : fromJsonEnumMediaSource((l$source as String)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      synonyms:
          (l$synonyms as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryMediaMediatags.fromJson((e as Map<String, dynamic>)))
          .toList(),
      isAdult: (l$isAdult as bool?),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : QueryMediaMedianextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : QueryMediaMediamediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
    );
  }

  final int id;

  final EnumMediaType? type;

  final QueryMediaMediatitle? title;

  final QueryMediaMediacoverImage? coverImage;

  final String $__typename;

  final EnumMediaFormat? format;

  final EnumMediaSeason? season;

  final int? seasonYear;

  final int? averageScore;

  final int? meanScore;

  final int? popularity;

  final EnumMediaStatus? status;

  final String? description;

  final String? bannerImage;

  final QueryMediaMediastartDate? startDate;

  final QueryMediaMediaendDate? endDate;

  final int? episodes;

  final int? chapters;

  final int? volumes;

  final bool? isLicensed;

  final EnumMediaSource? source;

  final List<String?>? genres;

  final List<String?>? synonyms;

  final List<QueryMediaMediatags?>? tags;

  final bool? isAdult;

  final QueryMediaMedianextAiringEpisode? nextAiringEpisode;

  final QueryMediaMediamediaListEntry? mediaListEntry;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJsonEnumMediaFormat(l$format);
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJsonEnumMediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaStatus(l$status);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$isLicensed = isLicensed;
    _resultData['isLicensed'] = l$isLicensed;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJsonEnumMediaSource(l$source);
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$synonyms = synonyms;
    _resultData['synonyms'] = l$synonyms?.map((e) => e).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$format = format;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$averageScore = averageScore;
    final l$meanScore = meanScore;
    final l$popularity = popularity;
    final l$status = status;
    final l$description = description;
    final l$bannerImage = bannerImage;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$volumes = volumes;
    final l$isLicensed = isLicensed;
    final l$source = source;
    final l$genres = genres;
    final l$synonyms = synonyms;
    final l$tags = tags;
    final l$isAdult = isAdult;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$mediaListEntry = mediaListEntry;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
      l$format,
      l$season,
      l$seasonYear,
      l$averageScore,
      l$meanScore,
      l$popularity,
      l$status,
      l$description,
      l$bannerImage,
      l$startDate,
      l$endDate,
      l$episodes,
      l$chapters,
      l$volumes,
      l$isLicensed,
      l$source,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$synonyms == null ? null : Object.hashAll(l$synonyms.map((v) => v)),
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$isAdult,
      l$nextAiringEpisode,
      l$mediaListEntry,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMedia) || runtimeType != other.runtimeType) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
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
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
      return false;
    }
    final l$isLicensed = isLicensed;
    final lOther$isLicensed = other.isLicensed;
    if (l$isLicensed != lOther$isLicensed) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
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
    final l$synonyms = synonyms;
    final lOther$synonyms = other.synonyms;
    if (l$synonyms != null && lOther$synonyms != null) {
      if (l$synonyms.length != lOther$synonyms.length) {
        return false;
      }
      for (int i = 0; i < l$synonyms.length; i++) {
        final l$synonyms$entry = l$synonyms[i];
        final lOther$synonyms$entry = lOther$synonyms[i];
        if (l$synonyms$entry != lOther$synonyms$entry) {
          return false;
        }
      }
    } else if (l$synonyms != lOther$synonyms) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMedia on QueryMediaMedia {
  CopyWithQueryMediaMedia<QueryMediaMedia> get copyWith =>
      CopyWithQueryMediaMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMedia<TRes> {
  factory CopyWithQueryMediaMedia(
    QueryMediaMedia instance,
    TRes Function(QueryMediaMedia) then,
  ) = _CopyWithImplQueryMediaMedia;

  factory CopyWithQueryMediaMedia.stub(TRes res) =
      _CopyWithStubImplQueryMediaMedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    QueryMediaMediatitle? title,
    QueryMediaMediacoverImage? coverImage,
    String? $__typename,
    EnumMediaFormat? format,
    EnumMediaSeason? season,
    int? seasonYear,
    int? averageScore,
    int? meanScore,
    int? popularity,
    EnumMediaStatus? status,
    String? description,
    String? bannerImage,
    QueryMediaMediastartDate? startDate,
    QueryMediaMediaendDate? endDate,
    int? episodes,
    int? chapters,
    int? volumes,
    bool? isLicensed,
    EnumMediaSource? source,
    List<String?>? genres,
    List<String?>? synonyms,
    List<QueryMediaMediatags?>? tags,
    bool? isAdult,
    QueryMediaMedianextAiringEpisode? nextAiringEpisode,
    QueryMediaMediamediaListEntry? mediaListEntry,
  });
  CopyWithQueryMediaMediatitle<TRes> get title;
  CopyWithQueryMediaMediacoverImage<TRes> get coverImage;
  CopyWithQueryMediaMediastartDate<TRes> get startDate;
  CopyWithQueryMediaMediaendDate<TRes> get endDate;
  TRes tags(
      Iterable<QueryMediaMediatags?>? Function(
              Iterable<CopyWithQueryMediaMediatags<QueryMediaMediatags>?>?)
          _fn);
  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode;
  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImplQueryMediaMedia<TRes>
    implements CopyWithQueryMediaMedia<TRes> {
  _CopyWithImplQueryMediaMedia(
    this._instance,
    this._then,
  );

  final QueryMediaMedia _instance;

  final TRes Function(QueryMediaMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? format = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? averageScore = _undefined,
    Object? meanScore = _undefined,
    Object? popularity = _undefined,
    Object? status = _undefined,
    Object? description = _undefined,
    Object? bannerImage = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? volumes = _undefined,
    Object? isLicensed = _undefined,
    Object? source = _undefined,
    Object? genres = _undefined,
    Object? synonyms = _undefined,
    Object? tags = _undefined,
    Object? isAdult = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? mediaListEntry = _undefined,
  }) =>
      _then(QueryMediaMedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as QueryMediaMediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as QueryMediaMediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        format: format == _undefined
            ? _instance.format
            : (format as EnumMediaFormat?),
        season: season == _undefined
            ? _instance.season
            : (season as EnumMediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as QueryMediaMediastartDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as QueryMediaMediaendDate?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        isLicensed: isLicensed == _undefined
            ? _instance.isLicensed
            : (isLicensed as bool?),
        source: source == _undefined
            ? _instance.source
            : (source as EnumMediaSource?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        synonyms: synonyms == _undefined
            ? _instance.synonyms
            : (synonyms as List<String?>?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<QueryMediaMediatags?>?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as QueryMediaMedianextAiringEpisode?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as QueryMediaMediamediaListEntry?),
      ));

  CopyWithQueryMediaMediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryMediaMediatitle.stub(_then(_instance))
        : CopyWithQueryMediaMediatitle(local$title, (e) => call(title: e));
  }

  CopyWithQueryMediaMediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryMediaMediacoverImage.stub(_then(_instance))
        : CopyWithQueryMediaMediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryMediaMediastartDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWithQueryMediaMediastartDate.stub(_then(_instance))
        : CopyWithQueryMediaMediastartDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWithQueryMediaMediaendDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWithQueryMediaMediaendDate.stub(_then(_instance))
        : CopyWithQueryMediaMediaendDate(
            local$endDate, (e) => call(endDate: e));
  }

  TRes tags(
          Iterable<QueryMediaMediatags?>? Function(
                  Iterable<CopyWithQueryMediaMediatags<QueryMediaMediatags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWithQueryMediaMediatags(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithQueryMediaMedianextAiringEpisode.stub(_then(_instance))
        : CopyWithQueryMediaMedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWithQueryMediaMediamediaListEntry.stub(_then(_instance))
        : CopyWithQueryMediaMediamediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImplQueryMediaMedia<TRes>
    implements CopyWithQueryMediaMedia<TRes> {
  _CopyWithStubImplQueryMediaMedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    QueryMediaMediatitle? title,
    QueryMediaMediacoverImage? coverImage,
    String? $__typename,
    EnumMediaFormat? format,
    EnumMediaSeason? season,
    int? seasonYear,
    int? averageScore,
    int? meanScore,
    int? popularity,
    EnumMediaStatus? status,
    String? description,
    String? bannerImage,
    QueryMediaMediastartDate? startDate,
    QueryMediaMediaendDate? endDate,
    int? episodes,
    int? chapters,
    int? volumes,
    bool? isLicensed,
    EnumMediaSource? source,
    List<String?>? genres,
    List<String?>? synonyms,
    List<QueryMediaMediatags?>? tags,
    bool? isAdult,
    QueryMediaMedianextAiringEpisode? nextAiringEpisode,
    QueryMediaMediamediaListEntry? mediaListEntry,
  }) =>
      _res;

  CopyWithQueryMediaMediatitle<TRes> get title =>
      CopyWithQueryMediaMediatitle.stub(_res);

  CopyWithQueryMediaMediacoverImage<TRes> get coverImage =>
      CopyWithQueryMediaMediacoverImage.stub(_res);

  CopyWithQueryMediaMediastartDate<TRes> get startDate =>
      CopyWithQueryMediaMediastartDate.stub(_res);

  CopyWithQueryMediaMediaendDate<TRes> get endDate =>
      CopyWithQueryMediaMediaendDate.stub(_res);

  tags(_fn) => _res;

  CopyWithQueryMediaMedianextAiringEpisode<TRes> get nextAiringEpisode =>
      CopyWithQueryMediaMedianextAiringEpisode.stub(_res);

  CopyWithQueryMediaMediamediaListEntry<TRes> get mediaListEntry =>
      CopyWithQueryMediaMediamediaListEntry.stub(_res);
}

class QueryMediaMediatitle implements FragmentMediaMinimalFragtitle {
  QueryMediaMediatitle({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryMediaMediatitle.fromJson(Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediatitle(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediatitle) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtensionQueryMediaMediatitle on QueryMediaMediatitle {
  CopyWithQueryMediaMediatitle<QueryMediaMediatitle> get copyWith =>
      CopyWithQueryMediaMediatitle(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediatitle<TRes> {
  factory CopyWithQueryMediaMediatitle(
    QueryMediaMediatitle instance,
    TRes Function(QueryMediaMediatitle) then,
  ) = _CopyWithImplQueryMediaMediatitle;

  factory CopyWithQueryMediaMediatitle.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediatitle;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediatitle<TRes>
    implements CopyWithQueryMediaMediatitle<TRes> {
  _CopyWithImplQueryMediaMediatitle(
    this._instance,
    this._then,
  );

  final QueryMediaMediatitle _instance;

  final TRes Function(QueryMediaMediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediatitle(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediatitle<TRes>
    implements CopyWithQueryMediaMediatitle<TRes> {
  _CopyWithStubImplQueryMediaMediatitle(this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediacoverImage implements FragmentMediaMinimalFragcoverImage {
  QueryMediaMediacoverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryMediaMediacoverImage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediacoverImage(
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
    if (!(other is QueryMediaMediacoverImage) ||
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

extension UtilityExtensionQueryMediaMediacoverImage
    on QueryMediaMediacoverImage {
  CopyWithQueryMediaMediacoverImage<QueryMediaMediacoverImage> get copyWith =>
      CopyWithQueryMediaMediacoverImage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediacoverImage<TRes> {
  factory CopyWithQueryMediaMediacoverImage(
    QueryMediaMediacoverImage instance,
    TRes Function(QueryMediaMediacoverImage) then,
  ) = _CopyWithImplQueryMediaMediacoverImage;

  factory CopyWithQueryMediaMediacoverImage.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediacoverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediacoverImage<TRes>
    implements CopyWithQueryMediaMediacoverImage<TRes> {
  _CopyWithImplQueryMediaMediacoverImage(
    this._instance,
    this._then,
  );

  final QueryMediaMediacoverImage _instance;

  final TRes Function(QueryMediaMediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediacoverImage<TRes>
    implements CopyWithQueryMediaMediacoverImage<TRes> {
  _CopyWithStubImplQueryMediaMediacoverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediastartDate {
  QueryMediaMediastartDate({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediastartDate.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediastartDate(
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
    if (!(other is QueryMediaMediastartDate) ||
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

extension UtilityExtensionQueryMediaMediastartDate on QueryMediaMediastartDate {
  CopyWithQueryMediaMediastartDate<QueryMediaMediastartDate> get copyWith =>
      CopyWithQueryMediaMediastartDate(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediastartDate<TRes> {
  factory CopyWithQueryMediaMediastartDate(
    QueryMediaMediastartDate instance,
    TRes Function(QueryMediaMediastartDate) then,
  ) = _CopyWithImplQueryMediaMediastartDate;

  factory CopyWithQueryMediaMediastartDate.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediastartDate;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediastartDate<TRes>
    implements CopyWithQueryMediaMediastartDate<TRes> {
  _CopyWithImplQueryMediaMediastartDate(
    this._instance,
    this._then,
  );

  final QueryMediaMediastartDate _instance;

  final TRes Function(QueryMediaMediastartDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediastartDate(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediastartDate<TRes>
    implements CopyWithQueryMediaMediastartDate<TRes> {
  _CopyWithStubImplQueryMediaMediastartDate(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediaendDate {
  QueryMediaMediaendDate({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediaendDate.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediaendDate(
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
    if (!(other is QueryMediaMediaendDate) ||
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

extension UtilityExtensionQueryMediaMediaendDate on QueryMediaMediaendDate {
  CopyWithQueryMediaMediaendDate<QueryMediaMediaendDate> get copyWith =>
      CopyWithQueryMediaMediaendDate(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediaendDate<TRes> {
  factory CopyWithQueryMediaMediaendDate(
    QueryMediaMediaendDate instance,
    TRes Function(QueryMediaMediaendDate) then,
  ) = _CopyWithImplQueryMediaMediaendDate;

  factory CopyWithQueryMediaMediaendDate.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediaendDate;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediaendDate<TRes>
    implements CopyWithQueryMediaMediaendDate<TRes> {
  _CopyWithImplQueryMediaMediaendDate(
    this._instance,
    this._then,
  );

  final QueryMediaMediaendDate _instance;

  final TRes Function(QueryMediaMediaendDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediaendDate(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediaendDate<TRes>
    implements CopyWithQueryMediaMediaendDate<TRes> {
  _CopyWithStubImplQueryMediaMediaendDate(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediatags {
  QueryMediaMediatags({
    required this.id,
    required this.name,
    this.description,
    this.$__typename = 'MediaTag',
  });

  factory QueryMediaMediatags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediatags(
      id: (l$id as int),
      name: (l$name as String),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediatags) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMediatags on QueryMediaMediatags {
  CopyWithQueryMediaMediatags<QueryMediaMediatags> get copyWith =>
      CopyWithQueryMediaMediatags(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryMediaMediatags<TRes> {
  factory CopyWithQueryMediaMediatags(
    QueryMediaMediatags instance,
    TRes Function(QueryMediaMediatags) then,
  ) = _CopyWithImplQueryMediaMediatags;

  factory CopyWithQueryMediaMediatags.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediatags;

  TRes call({
    int? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediatags<TRes>
    implements CopyWithQueryMediaMediatags<TRes> {
  _CopyWithImplQueryMediaMediatags(
    this._instance,
    this._then,
  );

  final QueryMediaMediatags _instance;

  final TRes Function(QueryMediaMediatags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediatags(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediatags<TRes>
    implements CopyWithQueryMediaMediatags<TRes> {
  _CopyWithStubImplQueryMediaMediatags(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMedianextAiringEpisode {
  QueryMediaMedianextAiringEpisode({
    required this.id,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryMediaMedianextAiringEpisode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return QueryMediaMedianextAiringEpisode(
      id: (l$id as int),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMedianextAiringEpisode) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMedianextAiringEpisode
    on QueryMediaMedianextAiringEpisode {
  CopyWithQueryMediaMedianextAiringEpisode<QueryMediaMedianextAiringEpisode>
      get copyWith => CopyWithQueryMediaMedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  factory CopyWithQueryMediaMedianextAiringEpisode(
    QueryMediaMedianextAiringEpisode instance,
    TRes Function(QueryMediaMedianextAiringEpisode) then,
  ) = _CopyWithImplQueryMediaMedianextAiringEpisode;

  factory CopyWithQueryMediaMedianextAiringEpisode.stub(TRes res) =
      _CopyWithStubImplQueryMediaMedianextAiringEpisode;

  TRes call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMedianextAiringEpisode<TRes>
    implements CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  _CopyWithImplQueryMediaMedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final QueryMediaMedianextAiringEpisode _instance;

  final TRes Function(QueryMediaMedianextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMedianextAiringEpisode(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMedianextAiringEpisode<TRes>
    implements CopyWithQueryMediaMedianextAiringEpisode<TRes> {
  _CopyWithStubImplQueryMediaMedianextAiringEpisode(this._res);

  TRes _res;

  call({
    int? id,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediamediaListEntry {
  QueryMediaMediamediaListEntry({
    required this.id,
    this.status,
    this.score,
    this.progress,
    this.progressVolumes,
    this.repeat,
    this.notes,
    this.startedAt,
    this.completedAt,
    this.$__typename = 'MediaList',
  });

  factory QueryMediaMediamediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$score = json['score'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$repeat = json['repeat'];
    final l$notes = json['notes'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediamediaListEntry(
      id: (l$id as int),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      score: (l$score as num?)?.toDouble(),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      repeat: (l$repeat as int?),
      notes: (l$notes as String?),
      startedAt: l$startedAt == null
          ? null
          : QueryMediaMediamediaListEntrystartedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : QueryMediaMediamediaListEntrycompletedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaListStatus? status;

  final double? score;

  final int? progress;

  final int? progressVolumes;

  final int? repeat;

  final String? notes;

  final QueryMediaMediamediaListEntrystartedAt? startedAt;

  final QueryMediaMediamediaListEntrycompletedAt? completedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$repeat = repeat;
    _resultData['repeat'] = l$repeat;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$score = score;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$repeat = repeat;
    final l$notes = notes;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$score,
      l$progress,
      l$progressVolumes,
      l$repeat,
      l$notes,
      l$startedAt,
      l$completedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryMediaMediamediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryMediaMediamediaListEntry
    on QueryMediaMediamediaListEntry {
  CopyWithQueryMediaMediamediaListEntry<QueryMediaMediamediaListEntry>
      get copyWith => CopyWithQueryMediaMediamediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediamediaListEntry<TRes> {
  factory CopyWithQueryMediaMediamediaListEntry(
    QueryMediaMediamediaListEntry instance,
    TRes Function(QueryMediaMediamediaListEntry) then,
  ) = _CopyWithImplQueryMediaMediamediaListEntry;

  factory CopyWithQueryMediaMediamediaListEntry.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediamediaListEntry;

  TRes call({
    int? id,
    EnumMediaListStatus? status,
    double? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    String? notes,
    QueryMediaMediamediaListEntrystartedAt? startedAt,
    QueryMediaMediamediaListEntrycompletedAt? completedAt,
    String? $__typename,
  });
  CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> get startedAt;
  CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> get completedAt;
}

class _CopyWithImplQueryMediaMediamediaListEntry<TRes>
    implements CopyWithQueryMediaMediamediaListEntry<TRes> {
  _CopyWithImplQueryMediaMediamediaListEntry(
    this._instance,
    this._then,
  );

  final QueryMediaMediamediaListEntry _instance;

  final TRes Function(QueryMediaMediamediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? score = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? repeat = _undefined,
    Object? notes = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediamediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        score: score == _undefined ? _instance.score : (score as double?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        repeat: repeat == _undefined ? _instance.repeat : (repeat as int?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as QueryMediaMediamediaListEntrystartedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as QueryMediaMediamediaListEntrycompletedAt?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWithQueryMediaMediamediaListEntrystartedAt.stub(_then(_instance))
        : CopyWithQueryMediaMediamediaListEntrystartedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWithQueryMediaMediamediaListEntrycompletedAt.stub(
            _then(_instance))
        : CopyWithQueryMediaMediamediaListEntrycompletedAt(
            local$completedAt, (e) => call(completedAt: e));
  }
}

class _CopyWithStubImplQueryMediaMediamediaListEntry<TRes>
    implements CopyWithQueryMediaMediamediaListEntry<TRes> {
  _CopyWithStubImplQueryMediaMediamediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaListStatus? status,
    double? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    String? notes,
    QueryMediaMediamediaListEntrystartedAt? startedAt,
    QueryMediaMediamediaListEntrycompletedAt? completedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> get startedAt =>
      CopyWithQueryMediaMediamediaListEntrystartedAt.stub(_res);

  CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> get completedAt =>
      CopyWithQueryMediaMediamediaListEntrycompletedAt.stub(_res);
}

class QueryMediaMediamediaListEntrystartedAt {
  QueryMediaMediamediaListEntrystartedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediamediaListEntrystartedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediamediaListEntrystartedAt(
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
    if (!(other is QueryMediaMediamediaListEntrystartedAt) ||
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

extension UtilityExtensionQueryMediaMediamediaListEntrystartedAt
    on QueryMediaMediamediaListEntrystartedAt {
  CopyWithQueryMediaMediamediaListEntrystartedAt<
          QueryMediaMediamediaListEntrystartedAt>
      get copyWith => CopyWithQueryMediaMediamediaListEntrystartedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> {
  factory CopyWithQueryMediaMediamediaListEntrystartedAt(
    QueryMediaMediamediaListEntrystartedAt instance,
    TRes Function(QueryMediaMediamediaListEntrystartedAt) then,
  ) = _CopyWithImplQueryMediaMediamediaListEntrystartedAt;

  factory CopyWithQueryMediaMediamediaListEntrystartedAt.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediamediaListEntrystartedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediamediaListEntrystartedAt<TRes>
    implements CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> {
  _CopyWithImplQueryMediaMediamediaListEntrystartedAt(
    this._instance,
    this._then,
  );

  final QueryMediaMediamediaListEntrystartedAt _instance;

  final TRes Function(QueryMediaMediamediaListEntrystartedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediamediaListEntrystartedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediamediaListEntrystartedAt<TRes>
    implements CopyWithQueryMediaMediamediaListEntrystartedAt<TRes> {
  _CopyWithStubImplQueryMediaMediamediaListEntrystartedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class QueryMediaMediamediaListEntrycompletedAt {
  QueryMediaMediamediaListEntrycompletedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory QueryMediaMediamediaListEntrycompletedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return QueryMediaMediamediaListEntrycompletedAt(
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
    if (!(other is QueryMediaMediamediaListEntrycompletedAt) ||
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

extension UtilityExtensionQueryMediaMediamediaListEntrycompletedAt
    on QueryMediaMediamediaListEntrycompletedAt {
  CopyWithQueryMediaMediamediaListEntrycompletedAt<
          QueryMediaMediamediaListEntrycompletedAt>
      get copyWith => CopyWithQueryMediaMediamediaListEntrycompletedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> {
  factory CopyWithQueryMediaMediamediaListEntrycompletedAt(
    QueryMediaMediamediaListEntrycompletedAt instance,
    TRes Function(QueryMediaMediamediaListEntrycompletedAt) then,
  ) = _CopyWithImplQueryMediaMediamediaListEntrycompletedAt;

  factory CopyWithQueryMediaMediamediaListEntrycompletedAt.stub(TRes res) =
      _CopyWithStubImplQueryMediaMediamediaListEntrycompletedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImplQueryMediaMediamediaListEntrycompletedAt<TRes>
    implements CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> {
  _CopyWithImplQueryMediaMediamediaListEntrycompletedAt(
    this._instance,
    this._then,
  );

  final QueryMediaMediamediaListEntrycompletedAt _instance;

  final TRes Function(QueryMediaMediamediaListEntrycompletedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryMediaMediamediaListEntrycompletedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryMediaMediamediaListEntrycompletedAt<TRes>
    implements CopyWithQueryMediaMediamediaListEntrycompletedAt<TRes> {
  _CopyWithStubImplQueryMediaMediamediaListEntrycompletedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryUserList {
  factory VariablesQueryUserList({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  }) =>
      VariablesQueryUserList._({
        if (userId != null) r'userId': userId,
        if (status != null) r'status': status,
        if (mediaType != null) r'mediaType': mediaType,
      });

  VariablesQueryUserList._(this._$data);

  factory VariablesQueryUserList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String));
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJsonEnumMediaType((l$mediaType as String));
    }
    return VariablesQueryUserList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  EnumMediaListStatus? get status => (_$data['status'] as EnumMediaListStatus?);

  EnumMediaType? get mediaType => (_$data['mediaType'] as EnumMediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJsonEnumMediaType(l$mediaType);
    }
    return result$data;
  }

  CopyWithVariablesQueryUserList<VariablesQueryUserList> get copyWith =>
      CopyWithVariablesQueryUserList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryUserList) ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$status = status;
    final l$mediaType = mediaType;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryUserList<TRes> {
  factory CopyWithVariablesQueryUserList(
    VariablesQueryUserList instance,
    TRes Function(VariablesQueryUserList) then,
  ) = _CopyWithImplVariablesQueryUserList;

  factory CopyWithVariablesQueryUserList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryUserList;

  TRes call({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  });
}

class _CopyWithImplVariablesQueryUserList<TRes>
    implements CopyWithVariablesQueryUserList<TRes> {
  _CopyWithImplVariablesQueryUserList(
    this._instance,
    this._then,
  );

  final VariablesQueryUserList _instance;

  final TRes Function(VariablesQueryUserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? status = _undefined,
    Object? mediaType = _undefined,
  }) =>
      _then(VariablesQueryUserList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (status != _undefined) 'status': (status as EnumMediaListStatus?),
        if (mediaType != _undefined) 'mediaType': (mediaType as EnumMediaType?),
      }));
}

class _CopyWithStubImplVariablesQueryUserList<TRes>
    implements CopyWithVariablesQueryUserList<TRes> {
  _CopyWithStubImplVariablesQueryUserList(this._res);

  TRes _res;

  call({
    int? userId,
    EnumMediaListStatus? status,
    EnumMediaType? mediaType,
  }) =>
      _res;
}

class QueryUserList {
  QueryUserList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory QueryUserList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return QueryUserList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : QueryUserListMediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryUserListMediaListCollection? MediaListCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaListCollection = MediaListCollection;
    _resultData['MediaListCollection'] = l$MediaListCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaListCollection = MediaListCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaListCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaListCollection = MediaListCollection;
    final lOther$MediaListCollection = other.MediaListCollection;
    if (l$MediaListCollection != lOther$MediaListCollection) {
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

extension UtilityExtensionQueryUserList on QueryUserList {
  CopyWithQueryUserList<QueryUserList> get copyWith => CopyWithQueryUserList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryUserList<TRes> {
  factory CopyWithQueryUserList(
    QueryUserList instance,
    TRes Function(QueryUserList) then,
  ) = _CopyWithImplQueryUserList;

  factory CopyWithQueryUserList.stub(TRes res) = _CopyWithStubImplQueryUserList;

  TRes call({
    QueryUserListMediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImplQueryUserList<TRes> implements CopyWithQueryUserList<TRes> {
  _CopyWithImplQueryUserList(
    this._instance,
    this._then,
  );

  final QueryUserList _instance;

  final TRes Function(QueryUserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as QueryUserListMediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWithQueryUserListMediaListCollection.stub(_then(_instance))
        : CopyWithQueryUserListMediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImplQueryUserList<TRes>
    implements CopyWithQueryUserList<TRes> {
  _CopyWithStubImplQueryUserList(this._res);

  TRes _res;

  call({
    QueryUserListMediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollection<TRes> get MediaListCollection =>
      CopyWithQueryUserListMediaListCollection.stub(_res);
}

const documentNodeQueryUserList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserList'),
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
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaListCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'mediaType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'lists'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
                name: NameNode(value: 'entries'),
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
                    name: NameNode(value: 'progress'),
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
                        name: NameNode(value: 'MediaMinimalFrag'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMediaMinimalFrag,
]);

class QueryUserListMediaListCollection {
  QueryUserListMediaListCollection({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory QueryUserListMediaListCollection.fromJson(Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollection(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryUserListMediaListCollectionlists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryUserListMediaListCollectionlists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
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

extension UtilityExtensionQueryUserListMediaListCollection
    on QueryUserListMediaListCollection {
  CopyWithQueryUserListMediaListCollection<QueryUserListMediaListCollection>
      get copyWith => CopyWithQueryUserListMediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollection<TRes> {
  factory CopyWithQueryUserListMediaListCollection(
    QueryUserListMediaListCollection instance,
    TRes Function(QueryUserListMediaListCollection) then,
  ) = _CopyWithImplQueryUserListMediaListCollection;

  factory CopyWithQueryUserListMediaListCollection.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollection;

  TRes call({
    List<QueryUserListMediaListCollectionlists?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<QueryUserListMediaListCollectionlists?>? Function(
              Iterable<
                  CopyWithQueryUserListMediaListCollectionlists<
                      QueryUserListMediaListCollectionlists>?>?)
          _fn);
}

class _CopyWithImplQueryUserListMediaListCollection<TRes>
    implements CopyWithQueryUserListMediaListCollection<TRes> {
  _CopyWithImplQueryUserListMediaListCollection(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollection _instance;

  final TRes Function(QueryUserListMediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollection(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<QueryUserListMediaListCollectionlists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lists(
          Iterable<QueryUserListMediaListCollectionlists?>? Function(
                  Iterable<
                      CopyWithQueryUserListMediaListCollectionlists<
                          QueryUserListMediaListCollectionlists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWithQueryUserListMediaListCollectionlists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryUserListMediaListCollection<TRes>
    implements CopyWithQueryUserListMediaListCollection<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollection(this._res);

  TRes _res;

  call({
    List<QueryUserListMediaListCollectionlists?>? lists,
    String? $__typename,
  }) =>
      _res;

  lists(_fn) => _res;
}

class QueryUserListMediaListCollectionlists {
  QueryUserListMediaListCollectionlists({
    this.name,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory QueryUserListMediaListCollectionlists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlists(
      name: (l$name as String?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryUserListMediaListCollectionlistsentries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final EnumMediaListStatus? status;

  final List<QueryUserListMediaListCollectionlistsentries?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtensionQueryUserListMediaListCollectionlists
    on QueryUserListMediaListCollectionlists {
  CopyWithQueryUserListMediaListCollectionlists<
          QueryUserListMediaListCollectionlists>
      get copyWith => CopyWithQueryUserListMediaListCollectionlists(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlists<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlists(
    QueryUserListMediaListCollectionlists instance,
    TRes Function(QueryUserListMediaListCollectionlists) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlists;

  factory CopyWithQueryUserListMediaListCollectionlists.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlists;

  TRes call({
    String? name,
    EnumMediaListStatus? status,
    List<QueryUserListMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<QueryUserListMediaListCollectionlistsentries?>? Function(
              Iterable<
                  CopyWithQueryUserListMediaListCollectionlistsentries<
                      QueryUserListMediaListCollectionlistsentries>?>?)
          _fn);
}

class _CopyWithImplQueryUserListMediaListCollectionlists<TRes>
    implements CopyWithQueryUserListMediaListCollectionlists<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlists(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlists _instance;

  final TRes Function(QueryUserListMediaListCollectionlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlists(
        name: name == _undefined ? _instance.name : (name as String?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<QueryUserListMediaListCollectionlistsentries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<QueryUserListMediaListCollectionlistsentries?>? Function(
                  Iterable<
                      CopyWithQueryUserListMediaListCollectionlistsentries<
                          QueryUserListMediaListCollectionlistsentries>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWithQueryUserListMediaListCollectionlistsentries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryUserListMediaListCollectionlists<TRes>
    implements CopyWithQueryUserListMediaListCollectionlists<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlists(this._res);

  TRes _res;

  call({
    String? name,
    EnumMediaListStatus? status,
    List<QueryUserListMediaListCollectionlistsentries?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class QueryUserListMediaListCollectionlistsentries {
  QueryUserListMediaListCollectionlistsentries({
    required this.id,
    this.progress,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory QueryUserListMediaListCollectionlistsentries.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$progress = json['progress'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentries(
      id: (l$id as int),
      progress: (l$progress as int?),
      media: l$media == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? progress;

  final QueryUserListMediaListCollectionlistsentriesmedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$progress,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlistsentries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentries
    on QueryUserListMediaListCollectionlistsentries {
  CopyWithQueryUserListMediaListCollectionlistsentries<
          QueryUserListMediaListCollectionlistsentries>
      get copyWith => CopyWithQueryUserListMediaListCollectionlistsentries(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentries(
    QueryUserListMediaListCollectionlistsentries instance,
    TRes Function(QueryUserListMediaListCollectionlistsentries) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentries;

  factory CopyWithQueryUserListMediaListCollectionlistsentries.stub(TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentries;

  TRes call({
    int? id,
    int? progress,
    QueryUserListMediaListCollectionlistsentriesmedia? media,
    String? $__typename,
  });
  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media;
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentries<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentries(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentries _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentries(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryUserListMediaListCollectionlistsentriesmedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(
            _then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentries<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentries<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentries(this._res);

  TRes _res;

  call({
    int? id,
    int? progress,
    QueryUserListMediaListCollectionlistsentriesmedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> get media =>
      CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(_res);
}

class QueryUserListMediaListCollectionlistsentriesmedia
    implements FragmentMediaMinimalFrag {
  QueryUserListMediaListCollectionlistsentriesmedia({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
  });

  factory QueryUserListMediaListCollectionlistsentriesmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    return QueryUserListMediaListCollectionlistsentriesmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      title: l$title == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryUserListMediaListCollectionlistsentriesmediacoverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
    );
  }

  final int id;

  final EnumMediaType? type;

  final QueryUserListMediaListCollectionlistsentriesmediatitle? title;

  final QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlistsentriesmedia) ||
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
    return true;
  }
}

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmedia
    on QueryUserListMediaListCollectionlistsentriesmedia {
  CopyWithQueryUserListMediaListCollectionlistsentriesmedia<
          QueryUserListMediaListCollectionlistsentriesmedia>
      get copyWith => CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmedia(
    QueryUserListMediaListCollectionlistsentriesmedia instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmedia) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmedia.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    QueryUserListMediaListCollectionlistsentriesmediatitle? title,
    QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
  });
  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title;
  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage;
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmedia(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmedia _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentriesmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        title: title == _undefined
            ? _instance.title
            : (title
                as QueryUserListMediaListCollectionlistsentriesmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as QueryUserListMediaListCollectionlistsentriesmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
      ));

  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
            _then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage
            .stub(_then(_instance))
        : CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia<TRes>
    implements CopyWithQueryUserListMediaListCollectionlistsentriesmedia<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    QueryUserListMediaListCollectionlistsentriesmediatitle? title,
    QueryUserListMediaListCollectionlistsentriesmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
  }) =>
      _res;

  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
      get title =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
              _res);

  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<TRes>
      get coverImage =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage
              .stub(_res);
}

class QueryUserListMediaListCollectionlistsentriesmediatitle
    implements FragmentMediaMinimalFragtitle {
  QueryUserListMediaListCollectionlistsentriesmediatitle({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryUserListMediaListCollectionlistsentriesmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentriesmediatitle(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryUserListMediaListCollectionlistsentriesmediatitle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmediatitle
    on QueryUserListMediaListCollectionlistsentriesmediatitle {
  CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<
          QueryUserListMediaListCollectionlistsentriesmediatitle>
      get copyWith =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<
    TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle(
    QueryUserListMediaListCollectionlistsentriesmediatitle instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmediatitle) then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle<TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediatitle(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmediatitle _instance;

  final TRes Function(QueryUserListMediaListCollectionlistsentriesmediatitle)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmediatitle(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediatitle<TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediatitle(
      this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryUserListMediaListCollectionlistsentriesmediacoverImage
    implements FragmentMediaMinimalFragcoverImage {
  QueryUserListMediaListCollectionlistsentriesmediacoverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryUserListMediaListCollectionlistsentriesmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return QueryUserListMediaListCollectionlistsentriesmediacoverImage(
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
    if (!(other
            is QueryUserListMediaListCollectionlistsentriesmediacoverImage) ||
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

extension UtilityExtensionQueryUserListMediaListCollectionlistsentriesmediacoverImage
    on QueryUserListMediaListCollectionlistsentriesmediacoverImage {
  CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
          QueryUserListMediaListCollectionlistsentriesmediacoverImage>
      get copyWith =>
          CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
    TRes> {
  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage(
    QueryUserListMediaListCollectionlistsentriesmediacoverImage instance,
    TRes Function(QueryUserListMediaListCollectionlistsentriesmediacoverImage)
        then,
  ) = _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage;

  factory CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage.stub(
          TRes res) =
      _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithImplQueryUserListMediaListCollectionlistsentriesmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryUserListMediaListCollectionlistsentriesmediacoverImage _instance;

  final TRes Function(
      QueryUserListMediaListCollectionlistsentriesmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryUserListMediaListCollectionlistsentriesmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage<
        TRes>
    implements
        CopyWithQueryUserListMediaListCollectionlistsentriesmediacoverImage<
            TRes> {
  _CopyWithStubImplQueryUserListMediaListCollectionlistsentriesmediacoverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class VariablesQueryHomePageList {
  factory VariablesQueryHomePageList({
    int? userId,
    EnumMediaType? mediaType,
  }) =>
      VariablesQueryHomePageList._({
        if (userId != null) r'userId': userId,
        if (mediaType != null) r'mediaType': mediaType,
      });

  VariablesQueryHomePageList._(this._$data);

  factory VariablesQueryHomePageList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJsonEnumMediaType((l$mediaType as String));
    }
    return VariablesQueryHomePageList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  EnumMediaType? get mediaType => (_$data['mediaType'] as EnumMediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJsonEnumMediaType(l$mediaType);
    }
    return result$data;
  }

  CopyWithVariablesQueryHomePageList<VariablesQueryHomePageList> get copyWith =>
      CopyWithVariablesQueryHomePageList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryHomePageList) ||
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
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$mediaType = mediaType;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryHomePageList<TRes> {
  factory CopyWithVariablesQueryHomePageList(
    VariablesQueryHomePageList instance,
    TRes Function(VariablesQueryHomePageList) then,
  ) = _CopyWithImplVariablesQueryHomePageList;

  factory CopyWithVariablesQueryHomePageList.stub(TRes res) =
      _CopyWithStubImplVariablesQueryHomePageList;

  TRes call({
    int? userId,
    EnumMediaType? mediaType,
  });
}

class _CopyWithImplVariablesQueryHomePageList<TRes>
    implements CopyWithVariablesQueryHomePageList<TRes> {
  _CopyWithImplVariablesQueryHomePageList(
    this._instance,
    this._then,
  );

  final VariablesQueryHomePageList _instance;

  final TRes Function(VariablesQueryHomePageList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? mediaType = _undefined,
  }) =>
      _then(VariablesQueryHomePageList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (mediaType != _undefined) 'mediaType': (mediaType as EnumMediaType?),
      }));
}

class _CopyWithStubImplVariablesQueryHomePageList<TRes>
    implements CopyWithVariablesQueryHomePageList<TRes> {
  _CopyWithStubImplVariablesQueryHomePageList(this._res);

  TRes _res;

  call({
    int? userId,
    EnumMediaType? mediaType,
  }) =>
      _res;
}

class QueryHomePageList {
  QueryHomePageList({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryHomePageList.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryHomePageList(
      Page: l$Page == null
          ? null
          : QueryHomePageListPage.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryHomePageListPage? Page;

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
    if (!(other is QueryHomePageList) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryHomePageList on QueryHomePageList {
  CopyWithQueryHomePageList<QueryHomePageList> get copyWith =>
      CopyWithQueryHomePageList(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryHomePageList<TRes> {
  factory CopyWithQueryHomePageList(
    QueryHomePageList instance,
    TRes Function(QueryHomePageList) then,
  ) = _CopyWithImplQueryHomePageList;

  factory CopyWithQueryHomePageList.stub(TRes res) =
      _CopyWithStubImplQueryHomePageList;

  TRes call({
    QueryHomePageListPage? Page,
    String? $__typename,
  });
  CopyWithQueryHomePageListPage<TRes> get Page;
}

class _CopyWithImplQueryHomePageList<TRes>
    implements CopyWithQueryHomePageList<TRes> {
  _CopyWithImplQueryHomePageList(
    this._instance,
    this._then,
  );

  final QueryHomePageList _instance;

  final TRes Function(QueryHomePageList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageList(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryHomePageListPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryHomePageListPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryHomePageListPage.stub(_then(_instance))
        : CopyWithQueryHomePageListPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryHomePageList<TRes>
    implements CopyWithQueryHomePageList<TRes> {
  _CopyWithStubImplQueryHomePageList(this._res);

  TRes _res;

  call({
    QueryHomePageListPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryHomePageListPage<TRes> get Page =>
      CopyWithQueryHomePageListPage.stub(_res);
}

const documentNodeQueryHomePageList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HomePageList'),
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
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
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
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '40'),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mediaList'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'mediaType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status'),
                value: EnumValueNode(name: NameNode(value: 'CURRENT')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'STATUS')),
                  EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'progress'),
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
                name: NameNode(value: 'media'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaMinimalFrag'),
                    directives: [],
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
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'nextAiringEpisode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMediaMinimalFrag,
]);

class QueryHomePageListPage {
  QueryHomePageListPage({
    this.mediaList,
    this.$__typename = 'Page',
  });

  factory QueryHomePageListPage.fromJson(Map<String, dynamic> json) {
    final l$mediaList = json['mediaList'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPage(
      mediaList: (l$mediaList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryHomePageListPagemediaList.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<QueryHomePageListPagemediaList?>? mediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaList = mediaList;
    _resultData['mediaList'] = l$mediaList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaList = mediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaList == null ? null : Object.hashAll(l$mediaList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaList = mediaList;
    final lOther$mediaList = other.mediaList;
    if (l$mediaList != null && lOther$mediaList != null) {
      if (l$mediaList.length != lOther$mediaList.length) {
        return false;
      }
      for (int i = 0; i < l$mediaList.length; i++) {
        final l$mediaList$entry = l$mediaList[i];
        final lOther$mediaList$entry = lOther$mediaList[i];
        if (l$mediaList$entry != lOther$mediaList$entry) {
          return false;
        }
      }
    } else if (l$mediaList != lOther$mediaList) {
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

extension UtilityExtensionQueryHomePageListPage on QueryHomePageListPage {
  CopyWithQueryHomePageListPage<QueryHomePageListPage> get copyWith =>
      CopyWithQueryHomePageListPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryHomePageListPage<TRes> {
  factory CopyWithQueryHomePageListPage(
    QueryHomePageListPage instance,
    TRes Function(QueryHomePageListPage) then,
  ) = _CopyWithImplQueryHomePageListPage;

  factory CopyWithQueryHomePageListPage.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPage;

  TRes call({
    List<QueryHomePageListPagemediaList?>? mediaList,
    String? $__typename,
  });
  TRes mediaList(
      Iterable<QueryHomePageListPagemediaList?>? Function(
              Iterable<
                  CopyWithQueryHomePageListPagemediaList<
                      QueryHomePageListPagemediaList>?>?)
          _fn);
}

class _CopyWithImplQueryHomePageListPage<TRes>
    implements CopyWithQueryHomePageListPage<TRes> {
  _CopyWithImplQueryHomePageListPage(
    this._instance,
    this._then,
  );

  final QueryHomePageListPage _instance;

  final TRes Function(QueryHomePageListPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPage(
        mediaList: mediaList == _undefined
            ? _instance.mediaList
            : (mediaList as List<QueryHomePageListPagemediaList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaList(
          Iterable<QueryHomePageListPagemediaList?>? Function(
                  Iterable<
                      CopyWithQueryHomePageListPagemediaList<
                          QueryHomePageListPagemediaList>?>?)
              _fn) =>
      call(
          mediaList: _fn(_instance.mediaList?.map((e) => e == null
              ? null
              : CopyWithQueryHomePageListPagemediaList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryHomePageListPage<TRes>
    implements CopyWithQueryHomePageListPage<TRes> {
  _CopyWithStubImplQueryHomePageListPage(this._res);

  TRes _res;

  call({
    List<QueryHomePageListPagemediaList?>? mediaList,
    String? $__typename,
  }) =>
      _res;

  mediaList(_fn) => _res;
}

class QueryHomePageListPagemediaList {
  QueryHomePageListPagemediaList({
    this.progress,
    this.updatedAt,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory QueryHomePageListPagemediaList.fromJson(Map<String, dynamic> json) {
    final l$progress = json['progress'];
    final l$updatedAt = json['updatedAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaList(
      progress: (l$progress as int?),
      updatedAt: (l$updatedAt as int?),
      media: l$media == null
          ? null
          : QueryHomePageListPagemediaListmedia.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? progress;

  final int? updatedAt;

  final QueryHomePageListPagemediaListmedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    final l$updatedAt = updatedAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$progress,
      l$updatedAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtensionQueryHomePageListPagemediaList
    on QueryHomePageListPagemediaList {
  CopyWithQueryHomePageListPagemediaList<QueryHomePageListPagemediaList>
      get copyWith => CopyWithQueryHomePageListPagemediaList(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaList<TRes> {
  factory CopyWithQueryHomePageListPagemediaList(
    QueryHomePageListPagemediaList instance,
    TRes Function(QueryHomePageListPagemediaList) then,
  ) = _CopyWithImplQueryHomePageListPagemediaList;

  factory CopyWithQueryHomePageListPagemediaList.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaList;

  TRes call({
    int? progress,
    int? updatedAt,
    QueryHomePageListPagemediaListmedia? media,
    String? $__typename,
  });
  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media;
}

class _CopyWithImplQueryHomePageListPagemediaList<TRes>
    implements CopyWithQueryHomePageListPagemediaList<TRes> {
  _CopyWithImplQueryHomePageListPagemediaList(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaList _instance;

  final TRes Function(QueryHomePageListPagemediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? progress = _undefined,
    Object? updatedAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaList(
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        media: media == _undefined
            ? _instance.media
            : (media as QueryHomePageListPagemediaListmedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWithQueryHomePageListPagemediaListmedia.stub(_then(_instance))
        : CopyWithQueryHomePageListPagemediaListmedia(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImplQueryHomePageListPagemediaList<TRes>
    implements CopyWithQueryHomePageListPagemediaList<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaList(this._res);

  TRes _res;

  call({
    int? progress,
    int? updatedAt,
    QueryHomePageListPagemediaListmedia? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryHomePageListPagemediaListmedia<TRes> get media =>
      CopyWithQueryHomePageListPagemediaListmedia.stub(_res);
}

class QueryHomePageListPagemediaListmedia implements FragmentMediaMinimalFrag {
  QueryHomePageListPagemediaListmedia({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
    this.status,
    this.nextAiringEpisode,
  });

  factory QueryHomePageListPagemediaListmedia.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$status = json['status'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    return QueryHomePageListPagemediaListmedia(
      id: (l$id as int),
      type: l$type == null ? null : fromJsonEnumMediaType((l$type as String)),
      title: l$title == null
          ? null
          : QueryHomePageListPagemediaListmediatitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : QueryHomePageListPagemediaListmediacoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      status: l$status == null
          ? null
          : fromJsonEnumMediaStatus((l$status as String)),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : QueryHomePageListPagemediaListmedianextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
    );
  }

  final int id;

  final EnumMediaType? type;

  final QueryHomePageListPagemediaListmediatitle? title;

  final QueryHomePageListPagemediaListmediacoverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

  final EnumMediaStatus? status;

  final QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJsonEnumMediaType(l$type);
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJsonEnumMediaStatus(l$status);
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$status = status;
    final l$nextAiringEpisode = nextAiringEpisode;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
      l$status,
      l$nextAiringEpisode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaListmedia) ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtensionQueryHomePageListPagemediaListmedia
    on QueryHomePageListPagemediaListmedia {
  CopyWithQueryHomePageListPagemediaListmedia<
          QueryHomePageListPagemediaListmedia>
      get copyWith => CopyWithQueryHomePageListPagemediaListmedia(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmedia(
    QueryHomePageListPagemediaListmedia instance,
    TRes Function(QueryHomePageListPagemediaListmedia) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmedia;

  factory CopyWithQueryHomePageListPagemediaListmedia.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmedia;

  TRes call({
    int? id,
    EnumMediaType? type,
    QueryHomePageListPagemediaListmediatitle? title,
    QueryHomePageListPagemediaListmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    EnumMediaStatus? status,
    QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode,
  });
  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title;
  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage;
  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode;
}

class _CopyWithImplQueryHomePageListPagemediaListmedia<TRes>
    implements CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmedia(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmedia _instance;

  final TRes Function(QueryHomePageListPagemediaListmedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? status = _undefined,
    Object? nextAiringEpisode = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as EnumMediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as QueryHomePageListPagemediaListmediatitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as QueryHomePageListPagemediaListmediacoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        status: status == _undefined
            ? _instance.status
            : (status as EnumMediaStatus?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode
                as QueryHomePageListPagemediaListmedianextAiringEpisode?),
      ));

  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithQueryHomePageListPagemediaListmediatitle.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmediatitle(
            local$title, (e) => call(title: e));
  }

  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmediacoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
            _then(_instance))
        : CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }
}

class _CopyWithStubImplQueryHomePageListPagemediaListmedia<TRes>
    implements CopyWithQueryHomePageListPagemediaListmedia<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmedia(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    QueryHomePageListPagemediaListmediatitle? title,
    QueryHomePageListPagemediaListmediacoverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    EnumMediaStatus? status,
    QueryHomePageListPagemediaListmedianextAiringEpisode? nextAiringEpisode,
  }) =>
      _res;

  CopyWithQueryHomePageListPagemediaListmediatitle<TRes> get title =>
      CopyWithQueryHomePageListPagemediaListmediatitle.stub(_res);

  CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> get coverImage =>
      CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(_res);

  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
              _res);
}

class QueryHomePageListPagemediaListmediatitle
    implements FragmentMediaMinimalFragtitle {
  QueryHomePageListPagemediaListmediatitle({
    this.romaji,
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory QueryHomePageListPagemediaListmediatitle.fromJson(
      Map<String, dynamic> json) {
    final l$romaji = json['romaji'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmediatitle(
      romaji: (l$romaji as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? romaji;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$romaji = romaji;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$romaji,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaListmediatitle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtensionQueryHomePageListPagemediaListmediatitle
    on QueryHomePageListPagemediaListmediatitle {
  CopyWithQueryHomePageListPagemediaListmediatitle<
          QueryHomePageListPagemediaListmediatitle>
      get copyWith => CopyWithQueryHomePageListPagemediaListmediatitle(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmediatitle(
    QueryHomePageListPagemediaListmediatitle instance,
    TRes Function(QueryHomePageListPagemediaListmediatitle) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmediatitle;

  factory CopyWithQueryHomePageListPagemediaListmediatitle.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmediatitle;

  TRes call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmediatitle<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmediatitle(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmediatitle _instance;

  final TRes Function(QueryHomePageListPagemediaListmediatitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? romaji = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmediatitle(
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryHomePageListPagemediaListmediatitle<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediatitle<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmediatitle(this._res);

  TRes _res;

  call({
    String? romaji,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class QueryHomePageListPagemediaListmediacoverImage
    implements FragmentMediaMinimalFragcoverImage {
  QueryHomePageListPagemediaListmediacoverImage({
    this.large,
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory QueryHomePageListPagemediaListmediacoverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmediacoverImage(
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
    if (!(other is QueryHomePageListPagemediaListmediacoverImage) ||
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

extension UtilityExtensionQueryHomePageListPagemediaListmediacoverImage
    on QueryHomePageListPagemediaListmediacoverImage {
  CopyWithQueryHomePageListPagemediaListmediacoverImage<
          QueryHomePageListPagemediaListmediacoverImage>
      get copyWith => CopyWithQueryHomePageListPagemediaListmediacoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  factory CopyWithQueryHomePageListPagemediaListmediacoverImage(
    QueryHomePageListPagemediaListmediacoverImage instance,
    TRes Function(QueryHomePageListPagemediaListmediacoverImage) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmediacoverImage;

  factory CopyWithQueryHomePageListPagemediaListmediacoverImage.stub(TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmediacoverImage<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmediacoverImage(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmediacoverImage _instance;

  final TRes Function(QueryHomePageListPagemediaListmediacoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmediacoverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage<TRes>
    implements CopyWithQueryHomePageListPagemediaListmediacoverImage<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmediacoverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class QueryHomePageListPagemediaListmedianextAiringEpisode {
  QueryHomePageListPagemediaListmedianextAiringEpisode({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory QueryHomePageListPagemediaListmedianextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return QueryHomePageListPagemediaListmedianextAiringEpisode(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryHomePageListPagemediaListmedianextAiringEpisode) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryHomePageListPagemediaListmedianextAiringEpisode
    on QueryHomePageListPagemediaListmedianextAiringEpisode {
  CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<
          QueryHomePageListPagemediaListmedianextAiringEpisode>
      get copyWith =>
          CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<
    TRes> {
  factory CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode(
    QueryHomePageListPagemediaListmedianextAiringEpisode instance,
    TRes Function(QueryHomePageListPagemediaListmedianextAiringEpisode) then,
  ) = _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode;

  factory CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode.stub(
          TRes res) =
      _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode<TRes>
    implements
        CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes> {
  _CopyWithImplQueryHomePageListPagemediaListmedianextAiringEpisode(
    this._instance,
    this._then,
  );

  final QueryHomePageListPagemediaListmedianextAiringEpisode _instance;

  final TRes Function(QueryHomePageListPagemediaListmedianextAiringEpisode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryHomePageListPagemediaListmedianextAiringEpisode(
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode<
        TRes>
    implements
        CopyWithQueryHomePageListPagemediaListmedianextAiringEpisode<TRes> {
  _CopyWithStubImplQueryHomePageListPagemediaListmedianextAiringEpisode(
      this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}
