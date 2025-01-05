import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'media.dart';

part 'characters.g.dart';

@riverpod
class MediaCharacter extends _$MediaCharacter {
  int _page = 1;
  bool _hasNext = false;
  var _perPage = 9;
  @override
  FutureOr<List<FragmentCharacterEdge>> build(int id) async {
    final characters = await ref
        .watch(mediaItemProvider(id).selectAsync((media) => media.characters));
    if (characters == null) {
      return [];
    }
    _hasNext = characters.pageInfo?.hasNextPage ?? false;
    _perPage = characters.pageInfo?.perPage ?? 9;
    return characters.edges?.filterNull() ?? [];
  }

  void loadMore() async {
    if (!_hasNext) return;
    _page++;
    final res = await mediaCharacters(id: id, page: _page, perPage: _perPage);
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    final prevState = await future;
    state = AsyncData([...prevState, ...(res.edges?.filterNull() ?? [])]);
  }

  bool hasNext() => _hasNext;
}
