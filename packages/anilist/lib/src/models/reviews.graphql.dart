import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class VariablesFragmentReview {
  factory VariablesFragmentReview({bool? asHtml}) => VariablesFragmentReview._({
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesFragmentReview._(this._$data);

  factory VariablesFragmentReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesFragmentReview._(result$data);
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

  CopyWithVariablesFragmentReview<VariablesFragmentReview> get copyWith =>
      CopyWithVariablesFragmentReview(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesFragmentReview) ||
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

abstract class CopyWithVariablesFragmentReview<TRes> {
  factory CopyWithVariablesFragmentReview(
    VariablesFragmentReview instance,
    TRes Function(VariablesFragmentReview) then,
  ) = _CopyWithImplVariablesFragmentReview;

  factory CopyWithVariablesFragmentReview.stub(TRes res) =
      _CopyWithStubImplVariablesFragmentReview;

  TRes call({bool? asHtml});
}

class _CopyWithImplVariablesFragmentReview<TRes>
    implements CopyWithVariablesFragmentReview<TRes> {
  _CopyWithImplVariablesFragmentReview(
    this._instance,
    this._then,
  );

  final VariablesFragmentReview _instance;

  final TRes Function(VariablesFragmentReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? asHtml = _undefined}) => _then(VariablesFragmentReview._({
        ..._instance._$data,
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesFragmentReview<TRes>
    implements CopyWithVariablesFragmentReview<TRes> {
  _CopyWithStubImplVariablesFragmentReview(this._res);

  TRes _res;

  call({bool? asHtml}) => _res;
}

class FragmentReview {
  FragmentReview({
    required this.id,
    this.summary,
    this.body,
    this.rating,
    this.ratingAmount,
    this.userRating,
    this.score,
    this.private,
    this.siteUrl,
    required this.createdAt,
    required this.updatedAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory FragmentReview.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$body = json['body'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$userRating = json['userRating'];
    final l$score = json['score'];
    final l$private = json['private'];
    final l$siteUrl = json['siteUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return FragmentReview(
      id: (l$id as int),
      summary: (l$summary as String?),
      body: (l$body as String?),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      userRating: l$userRating == null
          ? null
          : fromJsonEnumReviewRating((l$userRating as String)),
      score: (l$score as int?),
      private: (l$private as bool?),
      siteUrl: (l$siteUrl as String?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
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

  final String? summary;

  final String? body;

  final int? rating;

  final int? ratingAmount;

  final EnumReviewRating? userRating;

  final int? score;

  final bool? private;

  final String? siteUrl;

  final int createdAt;

  final int updatedAt;

  final FragmentUserMin? user;

  final FragmentMediaMin? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJsonEnumReviewRating(l$userRating);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
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
    final l$summary = summary;
    final l$body = body;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$userRating = userRating;
    final l$score = score;
    final l$private = private;
    final l$siteUrl = siteUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$body,
      l$rating,
      l$ratingAmount,
      l$userRating,
      l$score,
      l$private,
      l$siteUrl,
      l$createdAt,
      l$updatedAt,
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
    if (!(other is FragmentReview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtensionFragmentReview on FragmentReview {
  CopyWithFragmentReview<FragmentReview> get copyWith => CopyWithFragmentReview(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentReview<TRes> {
  factory CopyWithFragmentReview(
    FragmentReview instance,
    TRes Function(FragmentReview) then,
  ) = _CopyWithImplFragmentReview;

  factory CopyWithFragmentReview.stub(TRes res) =
      _CopyWithStubImplFragmentReview;

  TRes call({
    int? id,
    String? summary,
    String? body,
    int? rating,
    int? ratingAmount,
    EnumReviewRating? userRating,
    int? score,
    bool? private,
    String? siteUrl,
    int? createdAt,
    int? updatedAt,
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  });
  CopyWithFragmentUserMin<TRes> get user;
  CopyWithFragmentMediaMin<TRes> get media;
}

class _CopyWithImplFragmentReview<TRes>
    implements CopyWithFragmentReview<TRes> {
  _CopyWithImplFragmentReview(
    this._instance,
    this._then,
  );

  final FragmentReview _instance;

  final TRes Function(FragmentReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? body = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? userRating = _undefined,
    Object? score = _undefined,
    Object? private = _undefined,
    Object? siteUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(FragmentReview(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as EnumReviewRating?),
        score: score == _undefined ? _instance.score : (score as int?),
        private: private == _undefined ? _instance.private : (private as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
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

class _CopyWithStubImplFragmentReview<TRes>
    implements CopyWithFragmentReview<TRes> {
  _CopyWithStubImplFragmentReview(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    String? body,
    int? rating,
    int? ratingAmount,
    EnumReviewRating? userRating,
    int? score,
    bool? private,
    String? siteUrl,
    int? createdAt,
    int? updatedAt,
    FragmentUserMin? user,
    FragmentMediaMin? media,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentUserMin<TRes> get user => CopyWithFragmentUserMin.stub(_res);

  CopyWithFragmentMediaMin<TRes> get media =>
      CopyWithFragmentMediaMin.stub(_res);
}

const fragmentDefinitionReview = FragmentDefinitionNode(
  name: NameNode(value: 'Review'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
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
      name: NameNode(value: 'summary'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'body'),
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
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ratingAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'userRating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'score'),
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
      name: NameNode(value: 'updatedAt'),
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
const documentNodeFragmentReview = DocumentNode(definitions: [
  fragmentDefinitionReview,
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
]);

class VariablesQueryPaginatedReviews {
  factory VariablesQueryPaginatedReviews({
    int? page,
    int? perPage,
    int? reviewsId,
    int? mediaId,
    int? userId,
    EnumMediaType? mediaType,
    List<EnumReviewSort?>? sort,
    bool? asHtml,
  }) =>
      VariablesQueryPaginatedReviews._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (reviewsId != null) r'reviewsId': reviewsId,
        if (mediaId != null) r'mediaId': mediaId,
        if (userId != null) r'userId': userId,
        if (mediaType != null) r'mediaType': mediaType,
        if (sort != null) r'sort': sort,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesQueryPaginatedReviews._(this._$data);

  factory VariablesQueryPaginatedReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('reviewsId')) {
      final l$reviewsId = data['reviewsId'];
      result$data['reviewsId'] = (l$reviewsId as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
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
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJsonEnumReviewSort((e as String)))
          .toList();
    }
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesQueryPaginatedReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get perPage => (_$data['perPage'] as int?);

  int? get reviewsId => (_$data['reviewsId'] as int?);

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get userId => (_$data['userId'] as int?);

  EnumMediaType? get mediaType => (_$data['mediaType'] as EnumMediaType?);

  List<EnumReviewSort?>? get sort => (_$data['sort'] as List<EnumReviewSort?>?);

  bool? get asHtml => (_$data['asHtml'] as bool?);

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
    if (_$data.containsKey('reviewsId')) {
      final l$reviewsId = reviewsId;
      result$data['reviewsId'] = l$reviewsId;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJsonEnumMediaType(l$mediaType);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJsonEnumReviewSort(e))
          .toList();
    }
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesQueryPaginatedReviews<VariablesQueryPaginatedReviews>
      get copyWith => CopyWithVariablesQueryPaginatedReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryPaginatedReviews) ||
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
    final l$reviewsId = reviewsId;
    final lOther$reviewsId = other.reviewsId;
    if (_$data.containsKey('reviewsId') !=
        other._$data.containsKey('reviewsId')) {
      return false;
    }
    if (l$reviewsId != lOther$reviewsId) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    final l$page = page;
    final l$perPage = perPage;
    final l$reviewsId = reviewsId;
    final l$mediaId = mediaId;
    final l$userId = userId;
    final l$mediaType = mediaType;
    final l$sort = sort;
    final l$asHtml = asHtml;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('reviewsId') ? l$reviewsId : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('asHtml') ? l$asHtml : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryPaginatedReviews<TRes> {
  factory CopyWithVariablesQueryPaginatedReviews(
    VariablesQueryPaginatedReviews instance,
    TRes Function(VariablesQueryPaginatedReviews) then,
  ) = _CopyWithImplVariablesQueryPaginatedReviews;

  factory CopyWithVariablesQueryPaginatedReviews.stub(TRes res) =
      _CopyWithStubImplVariablesQueryPaginatedReviews;

  TRes call({
    int? page,
    int? perPage,
    int? reviewsId,
    int? mediaId,
    int? userId,
    EnumMediaType? mediaType,
    List<EnumReviewSort?>? sort,
    bool? asHtml,
  });
}

class _CopyWithImplVariablesQueryPaginatedReviews<TRes>
    implements CopyWithVariablesQueryPaginatedReviews<TRes> {
  _CopyWithImplVariablesQueryPaginatedReviews(
    this._instance,
    this._then,
  );

  final VariablesQueryPaginatedReviews _instance;

  final TRes Function(VariablesQueryPaginatedReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? reviewsId = _undefined,
    Object? mediaId = _undefined,
    Object? userId = _undefined,
    Object? mediaType = _undefined,
    Object? sort = _undefined,
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesQueryPaginatedReviews._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (reviewsId != _undefined) 'reviewsId': (reviewsId as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (userId != _undefined) 'userId': (userId as int?),
        if (mediaType != _undefined) 'mediaType': (mediaType as EnumMediaType?),
        if (sort != _undefined) 'sort': (sort as List<EnumReviewSort?>?),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryPaginatedReviews<TRes>
    implements CopyWithVariablesQueryPaginatedReviews<TRes> {
  _CopyWithStubImplVariablesQueryPaginatedReviews(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    int? reviewsId,
    int? mediaId,
    int? userId,
    EnumMediaType? mediaType,
    List<EnumReviewSort?>? sort,
    bool? asHtml,
  }) =>
      _res;
}

class QueryPaginatedReviews {
  QueryPaginatedReviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory QueryPaginatedReviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedReviews(
      Page: l$Page == null
          ? null
          : QueryPaginatedReviewsPage.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedReviewsPage? Page;

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
    if (!(other is QueryPaginatedReviews) || runtimeType != other.runtimeType) {
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

extension UtilityExtensionQueryPaginatedReviews on QueryPaginatedReviews {
  CopyWithQueryPaginatedReviews<QueryPaginatedReviews> get copyWith =>
      CopyWithQueryPaginatedReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPaginatedReviews<TRes> {
  factory CopyWithQueryPaginatedReviews(
    QueryPaginatedReviews instance,
    TRes Function(QueryPaginatedReviews) then,
  ) = _CopyWithImplQueryPaginatedReviews;

  factory CopyWithQueryPaginatedReviews.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedReviews;

  TRes call({
    QueryPaginatedReviewsPage? Page,
    String? $__typename,
  });
  CopyWithQueryPaginatedReviewsPage<TRes> get Page;
}

class _CopyWithImplQueryPaginatedReviews<TRes>
    implements CopyWithQueryPaginatedReviews<TRes> {
  _CopyWithImplQueryPaginatedReviews(
    this._instance,
    this._then,
  );

  final QueryPaginatedReviews _instance;

  final TRes Function(QueryPaginatedReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedReviews(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as QueryPaginatedReviewsPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedReviewsPage<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWithQueryPaginatedReviewsPage.stub(_then(_instance))
        : CopyWithQueryPaginatedReviewsPage(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImplQueryPaginatedReviews<TRes>
    implements CopyWithQueryPaginatedReviews<TRes> {
  _CopyWithStubImplQueryPaginatedReviews(this._res);

  TRes _res;

  call({
    QueryPaginatedReviewsPage? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedReviewsPage<TRes> get Page =>
      CopyWithQueryPaginatedReviewsPage.stub(_res);
}

const documentNodeQueryPaginatedReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaginatedReviews'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '4')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reviewsId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ReviewSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(
                values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))])),
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'reviewsId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'mediaId'),
                value: VariableNode(name: NameNode(value: 'mediaId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'mediaType'),
                value: VariableNode(name: NameNode(value: 'mediaType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Review'),
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
  fragmentDefinitionReview,
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
]);

class QueryPaginatedReviewsPage {
  QueryPaginatedReviewsPage({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory QueryPaginatedReviewsPage.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedReviewsPage(
      pageInfo: l$pageInfo == null
          ? null
          : QueryPaginatedReviewsPagepageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentReview.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final QueryPaginatedReviewsPagepageInfo? pageInfo;

  final List<FragmentReview?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryPaginatedReviewsPage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != null && lOther$reviews != null) {
      if (l$reviews.length != lOther$reviews.length) {
        return false;
      }
      for (int i = 0; i < l$reviews.length; i++) {
        final l$reviews$entry = l$reviews[i];
        final lOther$reviews$entry = lOther$reviews[i];
        if (l$reviews$entry != lOther$reviews$entry) {
          return false;
        }
      }
    } else if (l$reviews != lOther$reviews) {
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

extension UtilityExtensionQueryPaginatedReviewsPage
    on QueryPaginatedReviewsPage {
  CopyWithQueryPaginatedReviewsPage<QueryPaginatedReviewsPage> get copyWith =>
      CopyWithQueryPaginatedReviewsPage(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryPaginatedReviewsPage<TRes> {
  factory CopyWithQueryPaginatedReviewsPage(
    QueryPaginatedReviewsPage instance,
    TRes Function(QueryPaginatedReviewsPage) then,
  ) = _CopyWithImplQueryPaginatedReviewsPage;

  factory CopyWithQueryPaginatedReviewsPage.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedReviewsPage;

  TRes call({
    QueryPaginatedReviewsPagepageInfo? pageInfo,
    List<FragmentReview?>? reviews,
    String? $__typename,
  });
  CopyWithQueryPaginatedReviewsPagepageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<FragmentReview?>? Function(
              Iterable<CopyWithFragmentReview<FragmentReview>?>?)
          _fn);
}

class _CopyWithImplQueryPaginatedReviewsPage<TRes>
    implements CopyWithQueryPaginatedReviewsPage<TRes> {
  _CopyWithImplQueryPaginatedReviewsPage(
    this._instance,
    this._then,
  );

  final QueryPaginatedReviewsPage _instance;

  final TRes Function(QueryPaginatedReviewsPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedReviewsPage(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as QueryPaginatedReviewsPagepageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<FragmentReview?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithQueryPaginatedReviewsPagepageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWithQueryPaginatedReviewsPagepageInfo.stub(_then(_instance))
        : CopyWithQueryPaginatedReviewsPagepageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes reviews(
          Iterable<FragmentReview?>? Function(
                  Iterable<CopyWithFragmentReview<FragmentReview>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWithFragmentReview(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryPaginatedReviewsPage<TRes>
    implements CopyWithQueryPaginatedReviewsPage<TRes> {
  _CopyWithStubImplQueryPaginatedReviewsPage(this._res);

  TRes _res;

  call({
    QueryPaginatedReviewsPagepageInfo? pageInfo,
    List<FragmentReview?>? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWithQueryPaginatedReviewsPagepageInfo<TRes> get pageInfo =>
      CopyWithQueryPaginatedReviewsPagepageInfo.stub(_res);

  reviews(_fn) => _res;
}

class QueryPaginatedReviewsPagepageInfo {
  QueryPaginatedReviewsPagepageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory QueryPaginatedReviewsPagepageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return QueryPaginatedReviewsPagepageInfo(
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
    if (!(other is QueryPaginatedReviewsPagepageInfo) ||
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

extension UtilityExtensionQueryPaginatedReviewsPagepageInfo
    on QueryPaginatedReviewsPagepageInfo {
  CopyWithQueryPaginatedReviewsPagepageInfo<QueryPaginatedReviewsPagepageInfo>
      get copyWith => CopyWithQueryPaginatedReviewsPagepageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWithQueryPaginatedReviewsPagepageInfo<TRes> {
  factory CopyWithQueryPaginatedReviewsPagepageInfo(
    QueryPaginatedReviewsPagepageInfo instance,
    TRes Function(QueryPaginatedReviewsPagepageInfo) then,
  ) = _CopyWithImplQueryPaginatedReviewsPagepageInfo;

  factory CopyWithQueryPaginatedReviewsPagepageInfo.stub(TRes res) =
      _CopyWithStubImplQueryPaginatedReviewsPagepageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImplQueryPaginatedReviewsPagepageInfo<TRes>
    implements CopyWithQueryPaginatedReviewsPagepageInfo<TRes> {
  _CopyWithImplQueryPaginatedReviewsPagepageInfo(
    this._instance,
    this._then,
  );

  final QueryPaginatedReviewsPagepageInfo _instance;

  final TRes Function(QueryPaginatedReviewsPagepageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryPaginatedReviewsPagepageInfo(
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

class _CopyWithStubImplQueryPaginatedReviewsPagepageInfo<TRes>
    implements CopyWithQueryPaginatedReviewsPagepageInfo<TRes> {
  _CopyWithStubImplQueryPaginatedReviewsPagepageInfo(this._res);

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

class VariablesQueryReview {
  factory VariablesQueryReview({
    int? id,
    bool? asHtml,
  }) =>
      VariablesQueryReview._({
        if (id != null) r'id': id,
        if (asHtml != null) r'asHtml': asHtml,
      });

  VariablesQueryReview._(this._$data);

  factory VariablesQueryReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('asHtml')) {
      final l$asHtml = data['asHtml'];
      result$data['asHtml'] = (l$asHtml as bool?);
    }
    return VariablesQueryReview._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  bool? get asHtml => (_$data['asHtml'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('asHtml')) {
      final l$asHtml = asHtml;
      result$data['asHtml'] = l$asHtml;
    }
    return result$data;
  }

  CopyWithVariablesQueryReview<VariablesQueryReview> get copyWith =>
      CopyWithVariablesQueryReview(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryReview) || runtimeType != other.runtimeType) {
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
    final l$asHtml = asHtml;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('asHtml') ? l$asHtml : const {},
    ]);
  }
}

abstract class CopyWithVariablesQueryReview<TRes> {
  factory CopyWithVariablesQueryReview(
    VariablesQueryReview instance,
    TRes Function(VariablesQueryReview) then,
  ) = _CopyWithImplVariablesQueryReview;

  factory CopyWithVariablesQueryReview.stub(TRes res) =
      _CopyWithStubImplVariablesQueryReview;

  TRes call({
    int? id,
    bool? asHtml,
  });
}

class _CopyWithImplVariablesQueryReview<TRes>
    implements CopyWithVariablesQueryReview<TRes> {
  _CopyWithImplVariablesQueryReview(
    this._instance,
    this._then,
  );

  final VariablesQueryReview _instance;

  final TRes Function(VariablesQueryReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? asHtml = _undefined,
  }) =>
      _then(VariablesQueryReview._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (asHtml != _undefined) 'asHtml': (asHtml as bool?),
      }));
}

class _CopyWithStubImplVariablesQueryReview<TRes>
    implements CopyWithVariablesQueryReview<TRes> {
  _CopyWithStubImplVariablesQueryReview(this._res);

  TRes _res;

  call({
    int? id,
    bool? asHtml,
  }) =>
      _res;
}

class QueryReview {
  QueryReview({
    this.Review,
    this.$__typename = 'Query',
  });

  factory QueryReview.fromJson(Map<String, dynamic> json) {
    final l$Review = json['Review'];
    final l$$__typename = json['__typename'];
    return QueryReview(
      Review: l$Review == null
          ? null
          : FragmentReview.fromJson((l$Review as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final FragmentReview? Review;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Review = Review;
    _resultData['Review'] = l$Review?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Review = Review;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Review,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryReview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Review = Review;
    final lOther$Review = other.Review;
    if (l$Review != lOther$Review) {
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

extension UtilityExtensionQueryReview on QueryReview {
  CopyWithQueryReview<QueryReview> get copyWith => CopyWithQueryReview(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryReview<TRes> {
  factory CopyWithQueryReview(
    QueryReview instance,
    TRes Function(QueryReview) then,
  ) = _CopyWithImplQueryReview;

  factory CopyWithQueryReview.stub(TRes res) = _CopyWithStubImplQueryReview;

  TRes call({
    FragmentReview? Review,
    String? $__typename,
  });
  CopyWithFragmentReview<TRes> get Review;
}

class _CopyWithImplQueryReview<TRes> implements CopyWithQueryReview<TRes> {
  _CopyWithImplQueryReview(
    this._instance,
    this._then,
  );

  final QueryReview _instance;

  final TRes Function(QueryReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Review = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryReview(
        Review: Review == _undefined
            ? _instance.Review
            : (Review as FragmentReview?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWithFragmentReview<TRes> get Review {
    final local$Review = _instance.Review;
    return local$Review == null
        ? CopyWithFragmentReview.stub(_then(_instance))
        : CopyWithFragmentReview(local$Review, (e) => call(Review: e));
  }
}

class _CopyWithStubImplQueryReview<TRes> implements CopyWithQueryReview<TRes> {
  _CopyWithStubImplQueryReview(this._res);

  TRes _res;

  call({
    FragmentReview? Review,
    String? $__typename,
  }) =>
      _res;

  CopyWithFragmentReview<TRes> get Review => CopyWithFragmentReview.stub(_res);
}

const documentNodeQueryReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Review'),
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
        variable: VariableNode(name: NameNode(value: 'asHtml')),
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
        name: NameNode(value: 'Review'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Review'),
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
  fragmentDefinitionReview,
  fragmentDefinitionUserMin,
  fragmentDefinitionMediaMin,
]);
