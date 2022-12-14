import 'package:flutter_base_project/core/entites/artist_entity.dart';
import 'package:flutter_base_project/core/entites/artist_related_entity.dart';
import 'package:flutter_base_project/model/album_dto.dart';

abstract class AuthRepository {
  Future<AlbumDTO> getAlbum();
  Future<ArtistEntity> getArtist();
  Future<ArtistRelatedEntity> getArtistRelated();
}
