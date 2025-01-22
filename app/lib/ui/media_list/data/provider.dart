import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/extensions.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<QueryMediaListCollectionMediaListCollectionlists>> mediaList(
    Ref ref, int userId, EnumMediaType type) async {
  ref.invalidateAfter(const Duration(minutes: 2));
  final res = await mediaListCollection(mediaType: type, userId: userId);
  return res.lists?.filterNull() ?? [];
}

@riverpod
FutureOr<List<String>> listNames(Ref ref, int userId, EnumMediaType type) {
  final lists = ref.watch(mediaListProvider(userId, type)).valueOrNull ?? [];
  return lists.map((e) => e.name).toList().filterNull();
}
