import 'package:anilist/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filters.g.dart';

@riverpod
class ListFilter extends _$ListFilter {
  @override
  ListFilterValues build() {
    return ListFilterValues();
  }

  void updateQuery(String? value) {
    state = state.copyWith(query: value);
  }

  void updateList(String? value) {
    state = state.copyWith(list: value);
  }

  void updateGenres(List<String>? value) {
    state = state.copyWith(genres: value);
  }

  void updateFormat(EnumMediaFormat? value) {
    state = state.copyWith(format: value);
  }
}

class ListFilterValues {
  /// any specific search
  final String? query;

  /// only show a specific list
  final String? list;

  /// only show media with these genres
  final List<String>? genres;

  /// only show media with this format
  final EnumMediaFormat? format;

  /// only show media with this status
  final EnumMediaStatus? status;

  ListFilterValues(
      {this.query,
      this.list,
      this.genres,
      this.format,
      this.status});

  ListFilterValues copyWith({
    String? query,
    String? list,
    List<String>? genres,
    EnumMediaFormat? format,
    EnumMediaStatus? status,
  }) {
    return ListFilterValues(
      query: query ?? this.query,
      list: list ?? this.list,
      genres: genres ?? this.genres,
      format: format ?? this.format,
      status: status ?? this.status,
    );
  }
}
