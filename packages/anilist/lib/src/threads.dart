import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Get a paginated list of threads
ReturnType<QueryThreadsPage> paginatedThreads({
  int? page = 1,
  int? perPage = 5,
  List<EnumThreadSort>? sort,
  bool? subscribed,
  int? categoryId,
  bool? asHtml,
}) {
  final variables = VariablesQueryThreads(
          page: page,
          perPage: perPage,
          sort: sort,
          subscribed: subscribed,
          categoryId: categoryId,
          asHtml: asHtml)
      .toJson();

  return request(
          query: printNode(documentNodeQueryThreads), variables: variables)
      .then((value) => QueryThreads.fromJson(value).Page!);
}

/// Gets a single thread based on thread if or search query
ReturnType<QueryThreadThread> thread(
    {int? threadId, String? search, bool? asHtml}) {
  if (threadId == null && search == null) {
    throw ArgumentError('one of threadId or search must be provided');
  }
  final variables = VariablesQueryThread().toJson();

  return request(
          query: printNode(documentNodeQueryThread), variables: variables)
      .then((value) => QueryThread.fromJson(value).Thread!);
}
