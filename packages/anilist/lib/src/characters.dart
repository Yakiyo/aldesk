import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Paginated list of characters related to a media
ReturnType<QueryMediaCharactersMediacharacters> mediaCharacters({
  required int id,
  int page = 1,
  int perPage = 25,
}) async {
  final variables =
      VariablesQueryMediaCharacters(id: id, page: page, perPage: perPage)
          .toJson();
  return request(
          query: printNode(documentNodeQueryMediaCharacters),
          variables: variables)
      .then((value) => QueryMediaCharacters.fromJson(value).Media!.characters!);
}
