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
      .then((future) =>
          future.map((data) => QueryMediaMin.fromJson(data).Media!));
}

/// Full info regarding a media entry. Either [id] or [search] must be provided.
ReturnType<QueryMediaMedia> media({
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

  final variables = VariablesQueryMedia(
          id: id,
          type: type,
          format: format,
          status: status,
          isAdult: isAdult,
          search: search)
      .toJson();

  return request(query: printNode(documentNodeQueryMedia), variables: variables)
      .then((future) => future.map((data) => QueryMedia.fromJson(data).Media!));
}
