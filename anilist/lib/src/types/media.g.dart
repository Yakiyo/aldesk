// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media()
  ..id = (json['id'] as num).toInt()
  ..title = Map<String, String>.from(json['title'] as Map)
  ..type = $enumDecode(_$MediaTypeEnumMap, json['type'])
  ..format = $enumDecode(_$MediaFormatEnumMap, json['format'])
  ..status = json['status'] as String
  ..description = json['description'] as String
  ..startDate = Map<String, int>.from(json['startDate'] as Map)
  ..endDate = Map<String, int>.from(json['endDate'] as Map)
  ..episodes = (json['episodes'] as num?)?.toInt()
  ..chapters = (json['chapters'] as num?)?.toInt()
  ..volumes = (json['volumes'] as num?)?.toInt()
  ..countryOfOrigin = json['countryOfOrigin'] as String
  ..isLicensed = json['isLicensed'] as bool
  ..source = json['source'] as String
  ..hashtag = json['hashtag'] as String
  ..trailer = Map<String, String>.from(json['trailer'] as Map)
  ..updatedAt = (json['updatedAt'] as num).toInt()
  ..coverImage = Map<String, String>.from(json['coverImage'] as Map)
  ..bannerImage = json['bannerImage'] as String
  ..genres = (json['genres'] as List<dynamic>).map((e) => e as String).toList()
  ..synonyms =
      (json['synonyms'] as List<dynamic>).map((e) => e as String).toList()
  ..averageScore = (json['averageScore'] as num).toInt()
  ..meanScore = (json['meanScore'] as num).toInt()
  ..popularity = (json['popularity'] as num).toInt()
  ..isLocked = json['isLocked'] as bool
  ..trending = (json['trending'] as num).toInt()
  ..favourites = (json['favourites'] as num).toInt()
  ..tags = json['tags'] as List<dynamic>;

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'format': _$MediaFormatEnumMap[instance.format]!,
      'status': instance.status,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'episodes': instance.episodes,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'countryOfOrigin': instance.countryOfOrigin,
      'isLicensed': instance.isLicensed,
      'source': instance.source,
      'hashtag': instance.hashtag,
      'trailer': instance.trailer,
      'updatedAt': instance.updatedAt,
      'coverImage': instance.coverImage,
      'bannerImage': instance.bannerImage,
      'genres': instance.genres,
      'synonyms': instance.synonyms,
      'averageScore': instance.averageScore,
      'meanScore': instance.meanScore,
      'popularity': instance.popularity,
      'isLocked': instance.isLocked,
      'trending': instance.trending,
      'favourites': instance.favourites,
      'tags': instance.tags,
    };

const _$MediaTypeEnumMap = {
  MediaType.anime: 'ANIME',
  MediaType.manga: 'MANGA',
};

const _$MediaFormatEnumMap = {
  MediaFormat.tv: 'TV',
  MediaFormat.tvShort: 'TV_SHORT',
  MediaFormat.movie: 'MOVIE',
  MediaFormat.special: 'SPECIAL',
  MediaFormat.ova: 'OVA',
  MediaFormat.ona: 'ONA',
  MediaFormat.music: 'MUSIC',
  MediaFormat.manga: 'MANGA',
  MediaFormat.novel: 'NOVEL',
  MediaFormat.oneShot: 'ONE_SHOT',
};
