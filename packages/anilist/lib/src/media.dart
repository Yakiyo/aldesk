import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Minimal info regarding a media entry. Either [id] or [search] must be provided.
ReturnType<FragmentMediaMin> mediaMin({
  int? id,
  EnumMediaType? type,
  EnumMediaFormat? format,
  EnumMediaStatus? status,
  bool? isAdult,
  String? search,
}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }

  final variables = VariablesQueryMediaMin(
          id: id,
          type: type,
          format: format,
          status: status,
          isAdult: isAdult,
          search: search)
      .toJson();

  return request(
          query: printNode(documentNodeQueryMediaMin), variables: variables)
      .then((data) => QueryMediaMin.fromJson(data).Media!);
}

/// Full info regarding a media entry. Either [id] or [search] must be provided.
ReturnType<QueryMediaMedia> media({
  int? id,
  EnumMediaType? type,
  EnumMediaFormat? format,
  EnumMediaStatus? status,
  bool? isAdult,
  String? search,
  int characterPerPage = 9,
  int staffPerPage = 9,
}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }

  final variables = VariablesQueryMedia(
          id: id,
          type: type,
          format: format,
          status: status,
          isAdult: isAdult,
          search: search,
          characterPerPage: characterPerPage,
          staffPerPage: staffPerPage)
      .toJson();

  return request(query: printNode(documentNodeQueryMedia), variables: variables)
      .then((data) => QueryMedia.fromJson(data).Media!);
}

/// Paginated media entries. [page] and [perPage] are optional.
ReturnType<QueryPaginatedMediaPage> paginatedMedia({
  int page = 1,
  int perPage = 10,
  EnumMediaType? type,
  EnumMediaFormat? format,
  EnumMediaStatus? status,
  bool? isAdult,
  List<String>? genres,
  List<String>? tags,
  bool? onList,
  List<EnumMediaSource>? sources,
  String? search,
  EnumMediaSeason? season,
  int? seasonYear,
  List<EnumMediaSort>? sort,
  String? countryOfOrigin,
  bool? isLicensed,
  List<EnumMediaFormat>? formatIn,
  List<EnumMediaStatus>? statusIn,
  List<EnumMediaSource>? sourceIn,
}) async {
  final variables = VariablesQueryPaginatedMedia(
          page: page,
          perPage: perPage,
          type: type,
          format: format,
          status: status,
          isAdult: isAdult,
          genreIn: genres,
          tagIn: tags,
          onList: onList,
          sourceIn: sources,
          search: search,
          season: season,
          seasonYear: seasonYear,
          sort: sort,
          countryOfOrigin: countryOfOrigin,
          isLicensed: isLicensed,
          formatIn: formatIn,
          statusIn: statusIn)
      .toJson();

  return request(
          query: printNode(documentNodeQueryPaginatedMedia),
          variables: variables)
      .then((data) => QueryPaginatedMedia.fromJson(data).Page!);
}

/// Get trending media entries.
///
/// [type] is optional and can be used to filter by media type, otherwise it
/// returns entries of both anime and manga
ReturnType<QueryPaginatedMediaPage> trendingMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  return paginatedMedia(
      page: page,
      perPage: perPage,
      type: type,
      sort: [EnumMediaSort.TRENDING_DESC]);
}

/// Get currently popular media entries.
///
/// [type] is optional and can be used to filter by media type, otherwise it
/// returns entries of both anime and manga
ReturnType<QueryPaginatedMediaPage> popularMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  return paginatedMedia(
      page: page,
      perPage: perPage,
      type: type,
      sort: [EnumMediaSort.POPULARITY_DESC]);
}

/// Get newly added media entries.
///
/// [type] is optional and can be used to filter by media type, otherwise it
/// returns entries of both anime and manga
ReturnType<QueryPaginatedMediaPage> newMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  return paginatedMedia(
      page: page, perPage: perPage, type: type, sort: [EnumMediaSort.ID_DESC]);
}

/// Get medias of a particular season of a year.
///
/// [type] is optional and can be used to filter by media type, otherwise it
/// returns entries of both anime and manga
ReturnType<QueryPaginatedMediaPage> seasonMedia(
    int year, EnumMediaSeason season,
    {int page = 1,
    int perPage = 10,
    EnumMediaType? type,
    List<EnumMediaSort> sort = const [EnumMediaSort.POPULARITY_DESC]}) {
  return paginatedMedia(
      page: page,
      perPage: perPage,
      type: type,
      season: season,
      seasonYear: year,
      sort: sort);
}

/// Get medias of the current season.
///
/// A wrapper around [seasonMedia]
ReturnType<QueryPaginatedMediaPage> currentSeasonMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  final (year, season) = currentSeason();
  return seasonMedia(year, season, page: page, perPage: perPage, type: type);
}

/// Get medias of the next season.
///
/// A wrapper around [seasonMedia]
ReturnType<QueryPaginatedMediaPage> nextSeasonMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  final (year, season) = nextSeason();
  return seasonMedia(year, season, page: page, perPage: perPage, type: type);
}

/// Get medias of the previous season.
///
/// A wrapper around [seasonMedia]
ReturnType<QueryPaginatedMediaPage> previousSeasonMedia(
    {int page = 1, int perPage = 10, EnumMediaType? type}) {
  final (year, season) = previousSeason();
  return seasonMedia(year, season, page: page, perPage: perPage, type: type);
}
