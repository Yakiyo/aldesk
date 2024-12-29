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

  test(
    "month to season test",
    () {
      assert(timeToSeason(DateTime(2024, 1, 1)) == EnumMediaSeason.WINTER);
      assert(timeToSeason(DateTime(2021, 4, 1)) == EnumMediaSeason.SPRING);
      assert(timeToSeason(DateTime(2023, 7, 1)) == EnumMediaSeason.SUMMER);
      assert(timeToSeason(DateTime(2022, 10, 1)) == EnumMediaSeason.FALL);
    },
  );
}
