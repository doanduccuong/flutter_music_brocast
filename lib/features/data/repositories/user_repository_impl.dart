import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/user_rest_client/user_rest_client.dart';
import 'package:flutter_base_project/features/domain/entites/artist_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';
import 'package:flutter_base_project/model/album_dto.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRestClient userRestClient;
  @override
  final PlaylistEntity? playlistEntity;
  UserRepositoryImpl({
    required this.userRestClient,
    this.playlistEntity,
  });

  @override
  Future<AlbumDTO> getAlbum() async {
    final response =
        await userRestClient.getAlbums(LocationAPIConfig.artistRelatedId);
    final albumCollection = AlbumDTO(albums: response.albums);
    return albumCollection;
  }

  @override
  Future<ArtistEntity> getArtist() async {
    final response =
        await userRestClient.getArtists(LocationAPIConfig.artistRelatedId);

    return response;
  }

  @override
  Future<ArtistRelatedEntity> getArtistRelated() async {
    final response = await userRestClient.getArtistsRelated();

    return response;
  }

  @override
  Future<PlaylistEntity> getPlayList() async {
    final playlistEntity = await userRestClient.getPlayList();

    return playlistEntity;
  }
}
