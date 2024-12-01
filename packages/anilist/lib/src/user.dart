import 'consts.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:option_result/result.dart';

/// Get the authenticated user. If there is no token set, it will return null.
///
/// Requires to be authenticated, otherwise returns a [AuthError]
ReturnType<FragmentUserMinF> viewer() async {
  if (!isAuthed()) return Err(AuthError());
  return request(query: printNode(documentNodeQueryViewer)).then(
      (future) => future.map((value) => QueryViewer.fromJson(value).Viewer!));
}

/// Minimal info regarding a user. Either [id] or [search] must be provided.
ReturnType<FragmentUserMinF> userMin({int? id, String? search}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }
  return request(
          query: printNode(documentNodeQueryUserMin),
          variables: VariablesQueryUserMin(id: id, search: search).toJson())
      .then((future) =>
          future.map((value) => QueryUserMin.fromJson(value).User!));
}

/// Full info regarding a user. Either [id] or [search] must be provided.
ReturnType<QueryUserUser> user({int? id, String? search}) async {
  if (id == null && search == null) {
    throw ArgumentError("Either id or search must be provided", "id, search");
  }
  return request(
          query: printNode(documentNodeQueryUser),
          variables: VariablesQueryUser(id: id, search: search).toJson())
      .then((future) => future.map((value) => QueryUser.fromJson(value).User!));
}
