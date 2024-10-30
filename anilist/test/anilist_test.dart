import 'package:anilist/anilist.dart';
import 'package:test/test.dart';

void main() {
  final client = AnilistClient();

  test("Ferry query test", () async {
    final res = await client.mediaMinimal(search: "Seirei Gensouki");

    if (res.isErr()) {
      print(res.unwrapErr());
      return;
    }

    print(res.unwrap());
  });
}
