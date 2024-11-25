import 'package:anilist/anilist.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final client = AnilistClient(token: env['AL_TOKEN']);

  test("toggle like test", () async {
    final r = await client.toggleLike(820891087, GLikeableType.ACTIVITY);
    assert(r.isOk(), "${r.unwrapErr()}");
    final activity = r.unwrap() as GListActivityFrag;
    print(activity);
  });
}
