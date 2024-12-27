import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Get a single mediaList entry
///
/// Either [entryId] must be provided or [mediaId] with one of [userId] or [username]
/// must be provided. Cannot use both [userId] and [username] together.
///
/// When using [mediaId] together with the user variables, if the media is not part
/// of the user's list, the api returns a "Not Found" error
ReturnType<FragmentMediaList> mediaListEntry(
    {int? entryId, int? userId, int? mediaId, String? username}) async {
  if (entryId == null) {
    if (mediaId == null || (userId == null && username == null)) {
      throw ArgumentError(
          "Either entryId or mediaId with userId or username must be provided",
          "entryId, mediaId, userId, username");
    }
    if (userId != null && username != null) {
      throw ArgumentError(
          "Cannot use userId and username together", "userId, username");
    }
  }

  final query = printNode(documentNodeQueryMediaList);
  final variables = VariablesQueryMediaList(
          mediaId: mediaId,
          userId: userId,
          mediaListId: entryId,
          userName: username)
      .toJson();
  final value = await request(query: query, variables: variables);
  return QueryMediaList.fromJson(value).MediaList!;
}

/// Get a paginated media list collection. Useful for getting a portion of a user's
/// media list. By default it sort's by last updated.
/// media type and status is optional, if not provided, it returns entries of media list based on [sort].
/// This is what is used when fetching recent anime and manga entries for the overview page
/// on the anilist website.
///
/// One of [userId] or [username] must be provided
ReturnType<QueryPaginatedMediaListPage> paginatedMediaList(
    {int page = 1,
    int perPage = 40,
    int? userId,
    String? username,
    EnumMediaType? mediaType,
    EnumMediaListStatus? mediaStatus,
    List<EnumMediaListSort>? sort}) async {
  if (userId == null && username == null) {
    throw ArgumentError(
        "One of userId or username must be provided", "userId, username");
  }
  final query = printNode(documentNodeQueryPaginatedMediaList);
  final variables = VariablesQueryPaginatedMediaList(
          page: page,
          perPage: perPage,
          userId: userId,
          userName: username,
          type: mediaType,
          status: mediaStatus,
          sort: sort)
      .toJson();
  final value = await request(query: query, variables: variables);
  return QueryPaginatedMediaList.fromJson(value).Page!;
}

typedef MediaListCollection = QueryMediaListCollectionMediaListCollection;

/// Get the entire media list for a specific media type. This returns a list of
/// media list, grouped by status and custom lists. The lists themselves can be
/// flattened into a single list using [`Iterable.expand`](https://api.dart.dev/dart-core/Iterable/expand.html)
ReturnType<MediaListCollection> mediaListCollection(
    {int? userId,
    String? username,
    required EnumMediaType mediaType,
    EnumMediaListStatus? status,
    int? chunk,
    int? perChunk,
    List<EnumMediaListSort>? sort,
    String? notesLike}) async {
  if (userId == null && username == null) {
    throw ArgumentError(
        "One of userId or username must be provided", "userId, username");
  }
  final query = printNode(documentNodeQueryMediaListCollection);
  final variables = VariablesQueryMediaListCollection(
          userId: userId,
          username: username,
          type: mediaType,
          status: status,
          chunk: chunk,
          perChunk: perChunk,
          sort: sort,
          notesLike: notesLike)
      .toJson();
  final value = await request(query: query, variables: variables);
  return QueryMediaListCollection.fromJson(value).MediaListCollection!;
}

/// Update the progress of a media list entry by 1
///
/// [preventOverflow] can be used to avoid increasing progress more than total episodes/chapters.
ReturnType<FragmentMediaList> incrementProgress(
    {required FragmentMediaList entry, bool preventOverflow = false}) async {
  final progress = (entry.progress ?? 0) + 1;
  final total = entry.media?.total;

  if (preventOverflow) {
    // if there is a max count, and progress is not lower than total, return current value
    if (total != null && progress >= total) {
      return entry;
    }
  }
  // if incrementing progress makes it equal to total, then set it to completed
  final EnumMediaListStatus? status = total != null && progress == total
      ? EnumMediaListStatus.COMPLETED
      : entry.status;

  final value = await request(
      query: printNode(documentNodeMutationSaveMediaListEntry),
      variables: VariablesMutationSaveMediaListEntry(
        mediaListId: entry.id,
        progress: progress,
        status: status,
      ).toJson());

  return MutationSaveMediaListEntry.fromJson(value).SaveMediaListEntry!;
}
