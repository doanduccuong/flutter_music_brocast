import 'package:flutter_base_project/features/domain/entites/artist_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:flutter_base_project/model/album_dto.dart';

abstract class UserRepository {
  Future<AlbumDTO> getAlbum();
  Future<ArtistEntity> getArtist();
  Future<ArtistRelatedEntity> getArtistRelated();
  Future<PlaylistEntity> getPlayList();
  final PlaylistEntity? playlistEntity;
  UserRepository({this.playlistEntity});
}
