import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'media.dart';

part 'recommendations.g.dart';

@riverpod
class MediaRecommendation extends _$MediaRecommendation {
  int _page = 1;
  bool _hasNext = false;
  var _perPage = 5;
  @override
  FutureOr<List<FragmentRecommendationNode>> build(int id) async {
    final res = await ref
        .watch(mediaItemProvider(id).selectAsync((media) => media.recommendations));
    if (res == null) {
      return [];
    }
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    _perPage = res.pageInfo?.perPage ?? 5;
    return res.nodes?.filterNull() ?? [];
  }

  void loadMore() async {
    if (!_hasNext) return;
    _page++;
    final res = await mediaRecommendations(id: id, page: _page, perPage: _perPage);
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    final prevState = await future;
    state = AsyncData([...prevState, ...(res.nodes?.filterNull() ?? [])]);
  }

  bool hasNext() => _hasNext;
}
