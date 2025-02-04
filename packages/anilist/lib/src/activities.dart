import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'consts.dart';

/// Get activities from the global activity feed
ReturnType<QueryActivitiesPage> globalActivities(
    {int page = 1, int perPage = 50}) async {
  final query = printNode(documentNodeQueryActivities);
  final variables = VariablesQueryActivities(
          page: page, perPage: perPage, hasRepliesOrTypeText: true)
      .toJson();

  final value = await request(query: query, variables: variables);
  return QueryActivities.fromJson(value).Page!;
}

/// Get activities from authenticated user's followed users
///
/// Requires to be authenticated, otherwise returns a [AuthError]
ReturnType<QueryActivitiesPage> followingActivities(
    {int page = 1, int perPage = 50}) async {
  if (!isAuthed()) throw AuthError();
  final query = printNode(documentNodeQueryActivities);
  final variables =
      VariablesQueryActivities(page: page, perPage: perPage, isFollowing: true)
          .toJson();

  final value = await request(query: query, variables: variables);
  return QueryActivities.fromJson(value).Page!;
}

/// Get's a user's activities
ReturnType<QueryActivitiesPage> userActivities(int userId,
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

  final value = await request(query: query, variables: variables);
  return QueryActivities.fromJson(value).Page!;
}

/// Toggle's the like status of an activity
///
/// [activityId] must be the id of an activity, not a thread or another type,
/// otherwise it will return an error
ReturnType<MutationToggleLikeToggleLikeV2> toggleActivityLike(
    int activityId) async {
  final variables = VariablesMutationToggleLike(
          id: activityId, type: EnumLikeableType.ACTIVITY)
      .toJson();
  return request(
          query: printNode(documentNodeMutationToggleLike),
          variables: variables)
      .then((value) => MutationToggleLike.fromJson(value).ToggleLikeV2!);
}

ReturnType<QueryActivityActivity> fetchActivity({
  int? activityId,
  EnumActivityType? type,
  bool? isFollowing,
  bool? hasReplies,
  bool? hasRepliesOrTypeText,
  List<int>? idIn,
  List<int>? idNotIn,
  List<int>? userIdIn,
  List<int>? userIdNotIn,
  List<int>? messengerIdIn,
  List<int>? messengerIdNotIn,
  List<int>? mediaIdIn,
  List<int>? mediaIdNotIn,
  List<EnumActivityType>? typeIn,
  List<EnumActivityType>? typeNotIn,
  List<EnumActivitySort>? sort,
  bool? asHtml,
}) {
  final variables = VariablesQueryActivity(
    activityId: activityId,
    type: type,
    isFollowing: isFollowing,
    hasReplies: hasReplies,
    hasRepliesOrTypeText: hasRepliesOrTypeText,
    idIn: idIn,
    idNotIn: idNotIn,
    userIdIn: userIdIn,
    userIdNotIn: userIdNotIn,
    messengerIdIn: messengerIdIn,
    messengerIdNotIn: messengerIdNotIn,
    mediaIdIn: mediaIdIn,
    mediaIdNotIn: mediaIdNotIn,
    typeIn: typeIn,
    typeNotIn: typeNotIn,
    sort: sort,
    asHtml: asHtml,
  ).toJson();

  return request(
          query: printNode(documentNodeQueryActivity), variables: variables)
      .then((value) => QueryActivity.fromJson(value).Activity!);
}
