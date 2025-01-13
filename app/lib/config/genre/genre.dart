import 'package:anilist/anilist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'genre.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<String>> genre(Ref ref) {
  return genreTags().then((value) => value.GenreCollection?.filterNull() ?? []);
}
