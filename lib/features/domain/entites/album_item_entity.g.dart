// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumItemEntity _$$_AlbumItemEntityFromJson(Map<String, dynamic> json) =>
    _$_AlbumItemEntity(
      album_type: json['album_type'] as String? ?? "",
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => ArtistsEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      copyrights: (json['copyrights'] as List<dynamic>?)
              ?.map((e) => CopyRightEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      label: json['label'] as String? ?? "",
      name: json['name'] as String? ?? "",
      popularity: json['popularity'] as int? ?? 0,
      release_date: json['release_date'] as String? ?? "",
      release_date_precision: json['release_date_precision'] as String? ?? "",
      total_tracks: json['total_tracks'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AlbumItemEntityToJson(_$_AlbumItemEntity instance) =>
    <String, dynamic>{
      'album_type': instance.album_type,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'copyrights': instance.copyrights.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'label': instance.label,
      'name': instance.name,
      'popularity': instance.popularity,
      'release_date': instance.release_date,
      'release_date_precision': instance.release_date_precision,
      'total_tracks': instance.total_tracks,
    };
