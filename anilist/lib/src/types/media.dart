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

  late Map<String, String> coverImage;
  late String bannerImage;

  Media();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
