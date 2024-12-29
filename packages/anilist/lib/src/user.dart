import 'consts.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Get the authenticated user.
///
/// Requires to be authenticated, otherwise returns a [AuthError]
ReturnType<FragmentUserMin> viewer() async {
  if (!isAuthed()) throw AuthError();
  return request(query: printNode(documentNodeQueryViewer))
      .then((value) => QueryViewer.fromJson(value).Viewer!);
}

/// Minimal info regarding a user. Either [id] or [search] must be provided.
ReturnType<FragmentUserMin> userMin({int? id, String? search}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }
  return request(
          query: printNode(documentNodeQueryUserMin),
          variables: VariablesQueryUserMin(id: id, search: search).toJson())
      .then((value) => QueryUserMin.fromJson(value).User!);
}

/// Full info regarding a user. Either [id] or [search] must be provided.
ReturnType<QueryUserUser> user({int? id, String? search}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }
  return request(
          query: printNode(documentNodeQueryUser),
          variables: VariablesQueryUser(id: id, search: search).toJson())
      .then((value) => QueryUser.fromJson(value).User!);
}
