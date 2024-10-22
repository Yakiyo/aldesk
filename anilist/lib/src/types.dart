import 'package:json_annotation/json_annotation.dart';

export 'types/media.dart';

/// Type of media
@JsonEnum()
enum MediaType {
  @JsonValue("ANIME")
  anime,
  @JsonValue("MANGA")
  manga
}

