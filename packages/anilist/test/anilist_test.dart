import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:test/test.dart';

void main() {
  test("request test", () async {
    final res = await request(
        query: printNode(documentNodeQueryMediaMin),
        variables: VariablesQueryMediaMin(search: "Naruto").toJson());

    
    final media = QueryMediaMin.fromJson(res).Media;
    assert(media != null);
    assert(media?.title?.romaji?.toLowerCase() == "naruto");
  });
}
