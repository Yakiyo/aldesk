// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media()
  ..id = (json['id'] as num).toInt()
  ..title = Map<String, String>.from(json['title'] as Map)
  ..type = $enumDecode(_$MediaTypeEnumMap, json['type'])
  ..format = json['format'] as String
  ..status = json['status'] as String
  ..description = json['description'] as String
  ..startDate = Map<String, int>.from(json['startDate'] as Map)
  ..endDate = Map<String, int>.from(json['endDate'] as Map)
  ..episodes = (json['episodes'] as num?)?.toInt()
  ..chapters = (json['chapters'] as num?)?.toInt()
  ..volumes = (json['volumes'] as num?)?.toInt()
  ..coverImage = Map<String, String>.from(json['coverImage'] as Map)
  ..bannerImage = json['bannerImage'] as String;

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'format': instance.format,
      'status': instance.status,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'episodes': instance.episodes,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'coverImage': instance.coverImage,
      'bannerImage': instance.bannerImage,
    };

const _$MediaTypeEnumMap = {
  MediaType.anime: 'ANIME',
  MediaType.manga: 'MANGA',
};
