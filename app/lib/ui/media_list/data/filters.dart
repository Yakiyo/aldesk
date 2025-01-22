import 'package:anilist/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filters.g.dart';

@riverpod
class ListFilter extends _$ListFilter {
  @override
  ListFilterValues build() {
    return ListFilterValues();
  }

  void updateQuery(String? query) {
    state = ListFilterValues(
      query: query,
      list: state.list,
      genres: state.genres,
      format: state.format,
      status: state.status,
    );
  }

  void updateList(String? list) {
    state = ListFilterValues(
      query: state.query,
      list: list,
      genres: state.genres,
      format: state.format,
      status: state.status,
    );
  }

  void updateGenres(List<String>? genre) {
    state = ListFilterValues(
      query: state.query,
      list: state.list,
      genres: genre,
      format: state.format,
      status: state.status,
    );
  }

  void updateFormat(EnumMediaFormat? format) {
    state = ListFilterValues(
      query: state.query,
      list: state.list,
      genres: state.genres,
      format: format,
      status: state.status,
    );
  }

  void updateStatus(EnumMediaStatus? status) {
    state = ListFilterValues(
      query: state.query,
      list: state.list,
      genres: state.genres,
      format: state.format,
      status: status,
    );
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
      {this.query, this.list, this.genres, this.format, this.status});
}

String mediaFormatStr(EnumMediaFormat format) {
  return switch (format) {
    EnumMediaFormat.TV => 'TV',
    EnumMediaFormat.TV_SHORT => 'TV Short',
    EnumMediaFormat.MOVIE => 'Movie',
    EnumMediaFormat.SPECIAL => 'Special',
    EnumMediaFormat.OVA => 'OVA',
    EnumMediaFormat.ONA => 'ONA',
    EnumMediaFormat.MUSIC => 'Music',
    EnumMediaFormat.MANGA => 'Manga',
    EnumMediaFormat.NOVEL => 'Light Novel',
    EnumMediaFormat.ONE_SHOT => 'One Shot',
    _ => 'Unknown',
  };
}

List<EnumMediaFormat> animeFormats = [
  EnumMediaFormat.TV,
  EnumMediaFormat.TV_SHORT,
  EnumMediaFormat.MOVIE,
  EnumMediaFormat.SPECIAL,
  EnumMediaFormat.OVA,
  EnumMediaFormat.ONA,
  EnumMediaFormat.MUSIC,
];

List<EnumMediaFormat> mangaFormats = [
  EnumMediaFormat.MANGA,
  EnumMediaFormat.NOVEL,
  EnumMediaFormat.ONE_SHOT,
];

List<EnumMediaFormat> formats(EnumMediaType type) {
  return type == EnumMediaType.ANIME ? animeFormats : mangaFormats;
}

String mediaStatusStr(EnumMediaStatus status) {
  return switch (status) {
    EnumMediaStatus.FINISHED => 'Finished',
    EnumMediaStatus.RELEASING => 'Releasing',
    EnumMediaStatus.NOT_YET_RELEASED => 'Not Yet Released',
    EnumMediaStatus.CANCELLED => 'Cancelled',
    EnumMediaStatus.HIATUS => 'Hiatus',
    _ => 'Unknown',
  };
}

List<EnumMediaStatus> statusValues(EnumMediaType type) {
  if (type == EnumMediaType.MANGA) {
    return EnumMediaStatus.values
        .where((e) => e != EnumMediaStatus.$unknown)
        .toList();
  }
  // animes do not have a hiatus status
  return EnumMediaStatus.values
      .where((e) => e != EnumMediaStatus.HIATUS && e != EnumMediaStatus.$unknown)
      .toList();
}
