import 'package:json_annotation/json_annotation.dart';

/// Type of media
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum MediaType { anime, manga }

/// Format of media
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum MediaFormat {
  tv,
  @JsonValue("TV_SHORT")
  tvShort,
  movie,
  special,
  ova,
  ona,
  music,
  manga,
  novel,
  @JsonValue("ONE_SHOT")
  oneShot
}
