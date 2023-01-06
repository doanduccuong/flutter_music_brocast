// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumEntity _$$_AlbumEntityFromJson(Map<String, dynamic> json) =>
    _$_AlbumEntity(
      albums: (json['albums'] as List<dynamic>?)
              ?.map((e) => AlbumItemEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AlbumEntityToJson(_$_AlbumEntity instance) =>
    <String, dynamic>{
      'albums': instance.albums.map((e) => e.toJson()).toList(),
    };
