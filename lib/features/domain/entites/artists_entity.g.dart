// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistsEntity _$$_ArtistsEntityFromJson(Map<String, dynamic> json) =>
    _$_ArtistsEntity(
      external_urls: json['external_urls'] == null
          ? null
          : SpotifyExternalUrl.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      uri: json['uri'] as String? ?? "",
    );

Map<String, dynamic> _$$_ArtistsEntityToJson(_$_ArtistsEntity instance) =>
    <String, dynamic>{
      'external_urls': instance.external_urls?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };
