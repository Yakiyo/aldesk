import 'package:aldesk/config/utils/extensions.dart';
import 'package:anilist/anilist.dart';
import 'package:anilist/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media.g.dart';

// A provider to cache media related data, invalidating after 5 minutes
@Riverpod(keepAlive: true)
FutureOr<QueryMediaMedia> mediaItem(Ref ref, int id) {
  ref.invalidateAfter(const Duration(minutes: 5));
  return media(id: id);
}
