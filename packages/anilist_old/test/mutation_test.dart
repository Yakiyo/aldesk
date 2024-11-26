import 'package:anilist/anilist.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final client = AnilistClient(token: env['AL_TOKEN']);

  test("toggle like test", () async {
    final r = await client.toggleLike(820891087, GLikeableType.ACTIVITY);
    assert(r.isOk(), "${r.unwrapErr()}");
    final toggled =
        r.unwrap() as GToggleActivityLikeData_ToggleLikeV2__asListActivity;
    print(toggled.id);
    final res = await client.singleListActivity(toggled.id);
    assert(res.isOk(), "${res.unwrapErr()}");

    print(res.unwrap());
  });
}
