import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';

/// Fetch all possible genres and tags currently in the anilist database
ReturnType<QueryGenreTags> genreTags() async {
  return request(query: printNode(documentNodeQueryGenreTags))
      .then((value) => QueryGenreTags.fromJson(value));
}
