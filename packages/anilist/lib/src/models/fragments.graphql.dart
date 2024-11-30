import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class FragmentMediaMinimalF {
  FragmentMediaMinimalF({
    required this.id,
    this.type,
    this.format,
    this.status,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory FragmentMediaMinimalF.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$status = json['status'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalF(
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
          : FragmentMediaMinimalFtitle.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : FragmentMediaMinimalFcoverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final EnumMediaType? type;

  final EnumMediaFormat? format;

  final EnumMediaStatus? status;

  final FragmentMediaMinimalFtitle? title;

  final FragmentMediaMinimalFcoverImage? coverImage;

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
    if (!(other is FragmentMediaMinimalF) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionFragmentMediaMinimalF on FragmentMediaMinimalF {
  CopyWithFragmentMediaMinimalF<FragmentMediaMinimalF> get copyWith =>
      CopyWithFragmentMediaMinimalF(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMinimalF<TRes> {
  factory CopyWithFragmentMediaMinimalF(
    FragmentMediaMinimalF instance,
    TRes Function(FragmentMediaMinimalF) then,
  ) = _CopyWithImplFragmentMediaMinimalF;

  factory CopyWithFragmentMediaMinimalF.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalF;

  TRes call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    FragmentMediaMinimalFtitle? title,
    FragmentMediaMinimalFcoverImage? coverImage,
    String? $__typename,
  });
  CopyWithFragmentMediaMinimalFtitle<TRes> get title;
  CopyWithFragmentMediaMinimalFcoverImage<TRes> get coverImage;
}

class _CopyWithImplFragmentMediaMinimalF<TRes>
    implements CopyWithFragmentMediaMinimalF<TRes> {
  _CopyWithImplFragmentMediaMinimalF(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalF _instance;

  final TRes Function(FragmentMediaMinimalF) _then;

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
      _then(FragmentMediaMinimalF(
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
            : (title as FragmentMediaMinimalFtitle?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as FragmentMediaMinimalFcoverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentMediaMinimalFtitle<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWithFragmentMediaMinimalFtitle.stub(_then(_instance))
        : CopyWithFragmentMediaMinimalFtitle(
            local$title, (e) => call(title: e));
  }

  CopyWithFragmentMediaMinimalFcoverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWithFragmentMediaMinimalFcoverImage.stub(_then(_instance))
        : CopyWithFragmentMediaMinimalFcoverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImplFragmentMediaMinimalF<TRes>
    implements CopyWithFragmentMediaMinimalF<TRes> {
  _CopyWithStubImplFragmentMediaMinimalF(this._res);

  TRes _res;

  call({
    int? id,
    EnumMediaType? type,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
    FragmentMediaMinimalFtitle? title,
    FragmentMediaMinimalFcoverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentMediaMinimalFtitle<TRes> get title =>
      CopyWithFragmentMediaMinimalFtitle.stub(_res);

  CopyWithFragmentMediaMinimalFcoverImage<TRes> get coverImage =>
      CopyWithFragmentMediaMinimalFcoverImage.stub(_res);
}

const fragmentDefinitionMediaMinimalF = FragmentDefinitionNode(
  name: NameNode(value: 'MediaMinimalF'),
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
const documentNodeFragmentMediaMinimalF = DocumentNode(definitions: [
  fragmentDefinitionMediaMinimalF,
]);

class FragmentMediaMinimalFtitle {
  FragmentMediaMinimalFtitle({
    this.userPreferred,
    this.romaji,
    this.english,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory FragmentMediaMinimalFtitle.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$romaji = json['romaji'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalFtitle(
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
    if (!(other is FragmentMediaMinimalFtitle) ||
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

extension UtilityExtensionFragmentMediaMinimalFtitle
    on FragmentMediaMinimalFtitle {
  CopyWithFragmentMediaMinimalFtitle<FragmentMediaMinimalFtitle> get copyWith =>
      CopyWithFragmentMediaMinimalFtitle(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentMediaMinimalFtitle<TRes> {
  factory CopyWithFragmentMediaMinimalFtitle(
    FragmentMediaMinimalFtitle instance,
    TRes Function(FragmentMediaMinimalFtitle) then,
  ) = _CopyWithImplFragmentMediaMinimalFtitle;

  factory CopyWithFragmentMediaMinimalFtitle.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalFtitle;

  TRes call({
    String? userPreferred,
    String? romaji,
    String? english,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinimalFtitle<TRes>
    implements CopyWithFragmentMediaMinimalFtitle<TRes> {
  _CopyWithImplFragmentMediaMinimalFtitle(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalFtitle _instance;

  final TRes Function(FragmentMediaMinimalFtitle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? romaji = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinimalFtitle(
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

class _CopyWithStubImplFragmentMediaMinimalFtitle<TRes>
    implements CopyWithFragmentMediaMinimalFtitle<TRes> {
  _CopyWithStubImplFragmentMediaMinimalFtitle(this._res);

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

class FragmentMediaMinimalFcoverImage {
  FragmentMediaMinimalFcoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
    this.$__typename = 'MediaCoverImage',
  });

  factory FragmentMediaMinimalFcoverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return FragmentMediaMinimalFcoverImage(
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
    if (!(other is FragmentMediaMinimalFcoverImage) ||
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

extension UtilityExtensionFragmentMediaMinimalFcoverImage
    on FragmentMediaMinimalFcoverImage {
  CopyWithFragmentMediaMinimalFcoverImage<FragmentMediaMinimalFcoverImage>
      get copyWith => CopyWithFragmentMediaMinimalFcoverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWithFragmentMediaMinimalFcoverImage<TRes> {
  factory CopyWithFragmentMediaMinimalFcoverImage(
    FragmentMediaMinimalFcoverImage instance,
    TRes Function(FragmentMediaMinimalFcoverImage) then,
  ) = _CopyWithImplFragmentMediaMinimalFcoverImage;

  factory CopyWithFragmentMediaMinimalFcoverImage.stub(TRes res) =
      _CopyWithStubImplFragmentMediaMinimalFcoverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? medium,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImplFragmentMediaMinimalFcoverImage<TRes>
    implements CopyWithFragmentMediaMinimalFcoverImage<TRes> {
  _CopyWithImplFragmentMediaMinimalFcoverImage(
    this._instance,
    this._then,
  );

  final FragmentMediaMinimalFcoverImage _instance;

  final TRes Function(FragmentMediaMinimalFcoverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentMediaMinimalFcoverImage(
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

class _CopyWithStubImplFragmentMediaMinimalFcoverImage<TRes>
    implements CopyWithFragmentMediaMinimalFcoverImage<TRes> {
  _CopyWithStubImplFragmentMediaMinimalFcoverImage(this._res);

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
