import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/utils/utils.dart';

part 'config.g.dart';

@riverpod
class MediaListSort extends _$MediaListSort {
  @override
  ListSort build() {
    final str = pref.getString('title');
    return ListSort.values.firstWhere(
      (e) => e.name == str,
      orElse: () => ListSort.title,
    );
  }

  void updateMode(ListSort value) {
    pref.setString('mediaListSort', value.name);
    state = value;
  }
}

enum ListSort {
  title,
  score,
  progress,
  lastUpdated,
  lastAdded,
  startDate,
  completedDate,
  releaseDate,
}

String listSortStr(ListSort v) {
  return switch (v) {
    ListSort.title => 'Title',
    ListSort.score => 'Score',
    ListSort.progress => 'Progress',
    ListSort.lastUpdated => 'Last Updated',
    ListSort.lastAdded => 'Last Added',
    ListSort.startDate => 'Start Date',
    ListSort.completedDate => 'Completed Date',
    ListSort.releaseDate => 'Release Date',
  };
}
