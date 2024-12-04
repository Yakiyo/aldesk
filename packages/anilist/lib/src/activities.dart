import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'consts.dart';

/// Get activities from the global activity feed
ReturnType<List<QueryActivitiesPageactivities>> globalActivities(
    {int page = 1, int perPage = 50}) async {
  final query = printNode(documentNodeQueryActivities);
  final variables = VariablesQueryActivities(
          page: page, perPage: perPage, hasRepliesOrTypeText: true)
      .toJson();

  final result = await request(query: query, variables: variables);
  return result.map((value) => QueryActivities.fromJson(value)
      .Page!
      .activities!
      .map((activity) => activity!)
      .toList());
}

/// Get activities from authenticated user's followed users
///
/// Requires to be authenticated, otherwise returns a [AuthError]
ReturnType<List<QueryActivitiesPageactivities>> followingActivities(
    {int page = 1, int perPage = 50}) async {
  if (!isAuthed()) return Err(AuthError());
  final query = printNode(documentNodeQueryActivities);
  final variables =
      VariablesQueryActivities(page: page, perPage: perPage, isFollowing: true)
          .toJson();

  final result = await request(query: query, variables: variables);
  return result.map((value) => QueryActivities.fromJson(value)
      .Page!
      .activities!
      .map((activity) => activity!)
      .toList());
}

/// Get's a user's activities
ReturnType<List<QueryActivitiesPageactivities>> userActivities(int userId,
    {int page = 1, int perPage = 50}) async {
  final query = printNode(documentNodeQueryActivities);
  final variables = VariablesQueryActivities(
      page: page,
      perPage: perPage,
      userId: userId,
      typeIn: [
        EnumActivityType.ANIME_LIST,
        EnumActivityType.MANGA_LIST,
        EnumActivityType.MESSAGE,
        EnumActivityType.TEXT
      ]).toJson();

  final result = await request(query: query, variables: variables);
  return result.map((value) => QueryActivities.fromJson(value)
      .Page!
      .activities!
      .map((activity) => activity!)
      .toList());
}
