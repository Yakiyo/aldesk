import 'package:anilist/anilist.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final client = AnilistClient(token: env['AL_TOKEN']);

  test("Ferry query test", () async {
    const title = "Seirei Gensouki";
    final res = await client.mediaMinimal(search: title);

    if (res.isErr()) {
      print(res.unwrapErr());
      return;
    }
    final media = res.unwrap();
    assert(media.title!.romaji == title);

    print(res.unwrap());
  });

  test("Viewer test", () async {
    final res = await client.currentUser();

    if (res.isErr()) {
      print(res.unwrapErr());
      return;
    }

    final viewer = res.unwrap();
    assert(viewer.name == "Yakiyo");
    print(viewer);
  });
}
