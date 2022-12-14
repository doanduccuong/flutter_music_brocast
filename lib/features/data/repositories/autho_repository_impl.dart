import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/entites/artist_entity.dart';
import 'package:flutter_base_project/core/entites/artist_related_entity.dart';
import 'package:flutter_base_project/core/platform/user_rest_client/user_rest_client.dart';
import 'package:flutter_base_project/features/domain/repositories/auth_repository.dart';
import 'package:flutter_base_project/model/album_dto.dart';

class AuthRepositoryImpl implements AuthRepository {
  final UserRestClient userRestClient;

  AuthRepositoryImpl({
    required this.userRestClient,
  });

  @override
  Future<AlbumDTO> getAlbum() async {
    final response = await userRestClient.getAlbums(LocationAPIConfig.artistRelatedId);
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
}
