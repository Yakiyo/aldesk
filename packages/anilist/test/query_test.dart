import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:test/test.dart';

void main() {
  test("media min test", () async {
    final res = await mediaMin(search: "Naruto", type: EnumMediaType.ANIME);

    final media = res;
    assert(media.title!.english!.toLowerCase() == "naruto");
  });

  test("media test", () async {
    final res = await media(search: "grand blue");

    final data = res;
    assert(data.title!.romaji!.toLowerCase() == "grand blue");
    assert(data.type == EnumMediaType.ANIME);
  });

  test("argument error", () async {
    try {
      await mediaMin();
      assert(false, "Should have thrown an argument error");
    } catch (e) {
      assert(e is ArgumentError);
    }
  });
}
