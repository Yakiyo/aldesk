// popular and trending medias do not change that easily over the span of a single
// app runtime, so we just cache them and invalidate them every 15 minutes

import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';

part 'medias.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> trendingMediaItem(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching trending media");
  return trendingMedia().then((value) => value.media?.filterNull() ?? []);
}

@Riverpod(keepAlive: true)
FutureOr<List<FragmentMediaMin>> popularMediaItem(Ref ref) {
  ref.invalidateAfter(const Duration(minutes: 15));
  logger.i("Fetching popular media");
  return popularMedia().then((value) => value.media?.filterNull() ?? []);
}
