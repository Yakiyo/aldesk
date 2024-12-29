import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Returns a paginated list of reviews.
///
/// By default, reviews are sorted by ID (newest reviews are shown first).
ReturnType<QueryPaginatedReviewsPage> paginatedReviews({
  int page = 1,
  int perPage = 4,
  int? reviewsId,
  int? mediaId,
  int? userId,
  EnumMediaType? mediaType,
  List<EnumReviewSort> sort = const [EnumReviewSort.ID_DESC],
  bool? asHtml,
}) {
  final variables = VariablesQueryPaginatedReviews(
    page: page,
    perPage: perPage,
    reviewsId: reviewsId,
    mediaId: mediaId,
    userId: userId,
    mediaType: mediaType,
    sort: sort,
    asHtml: asHtml,
  ).toJson();

  return request(
          query: printNode(documentNodeQueryPaginatedReviews),
          variables: variables)
      .then((data) => QueryPaginatedReviews.fromJson(data).Page!);
}

/// Returns a review by ID.
ReturnType<FragmentReview> review({
  required int id,
  bool asHtml = false,
}) {
  final variables = VariablesQueryReview(
    id: id,
    asHtml: asHtml,
  ).toJson();

  return request(
          query: printNode(documentNodeQueryReview), variables: variables)
      .then((data) => QueryReview.fromJson(data).Review!);
}
