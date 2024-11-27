import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:gql/language.dart';
import 'package:test/test.dart';

void main() {
  test("request test", () async {
    final res = await request(
        query: printNode(documentNodeQueryMediaMinimal),
        variables: VariablesQueryMediaMinimal(search: "Naruto").toJson());

    assert(res.isOk(), res.unwrapErr().toString());
    final data = res.unwrap();
    print(data);
  });
}
