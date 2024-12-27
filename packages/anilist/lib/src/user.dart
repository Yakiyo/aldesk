import 'consts.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

FragmentUserMin? _viewerCache;

/// associated token with the authenticated user.
String? _token;

/// Get the authenticated user.
///
/// Requires to be authenticated, otherwise returns a [AuthError]
ReturnType<FragmentUserMin> viewer() async {
  if (!isAuthed()) return Err(AuthError());
  final currentToken =
      headers["Authorization"]!.replaceAll("Bearer ", "").trim();
  // if cache is empty or token has changed, fetch the user
  if (_viewerCache == null || _token != currentToken) {
    final result = await request(query: printNode(documentNodeQueryViewer))
        .then((future) =>
            future.map((value) => QueryViewer.fromJson(value).Viewer!));
    if (result.isErr()) return result;
    _viewerCache = result.unwrap();
    _token = currentToken;
  }

  return Ok(_viewerCache!);
}

/// Minimal info regarding a user. Either [id] or [search] must be provided.
ReturnType<FragmentUserMin> userMin({int? id, String? search}) async {
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
