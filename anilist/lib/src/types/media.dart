import 'enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  late int id;
  late Map<String, String> title;
  late MediaType type;
  late MediaFormat format;
  late String status;
  late String description;

  late Map<String, int> startDate;
  late Map<String, int> endDate;

  late int? episodes;
  late int? chapters;
  late int? volumes;

  late String countryOfOrigin;
  late bool isLicensed;
  // TODO: make this an enum
  late String source;
  late String hashtag;
  late Map<String, String> trailer;
  late int updatedAt;

  late Map<String, String> coverImage;
  late String bannerImage;

  late List<String> genres;
  late List<String> synonyms;

  late int averageScore;
  late int meanScore;
  late int popularity;

  late bool isLocked;
  late int trending;
  late int favourites;

  // TODO: media tag
  late List<dynamic> tags;

  Media();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
