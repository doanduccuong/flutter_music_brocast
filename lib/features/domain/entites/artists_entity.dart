import 'package:flutter_base_project/features/domain/entites/spotify_external_url.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'artists_entity.freezed.dart';
part 'artists_entity.g.dart';

@freezed
class ArtistsEntity with _$ArtistsEntity {
  const factory ArtistsEntity({
    final SpotifyExternalUrl? external_urls,
    @Default("") final String id,
    @Default("") final String name,
    @Default("") final String type,
    @Default("") final String uri,
  }) = _ArtistsEntity;

  factory ArtistsEntity.fromJson(Map<String, Object?> json)
  => _$ArtistsEntityFromJson(json);
}