import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';
import 'media.dart';

part 'staff.g.dart';

@riverpod
class MediaStaff extends _$MediaStaff {
  int _page = 1;
  int _perPage = 9;
  bool _hasNext = false;
  @override
  FutureOr<List<FragmentStaffEdge>> build(int id) async {
    final res = await ref
        .watch(mediaItemProvider(id).selectAsync((value) => value.staff));
    _hasNext = res?.pageInfo?.hasNextPage ?? false;
    _perPage = res?.pageInfo?.perPage ?? 9;
    return res?.edges?.filterNull() ?? [];
  }

  void loadMore() async {
    if (!_hasNext) {
      logger.d("No more items to load");
      return;
    }
    _page++;
    final res = await mediaStaff(id: id, page: _page, perPage: _perPage);
    _hasNext = res.pageInfo?.hasNextPage ?? false;
    final prevState = await future;
    state = AsyncData([...prevState, ...(res.edges?.filterNull() ?? [])]);
  }

  bool hasNext() => _hasNext;
}
