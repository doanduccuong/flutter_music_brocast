import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/user_rest_client/user_rest_client.dart';
import 'package:flutter_base_project/features/domain/entites/artist_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/model/album_dto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {

  @override
  GoogleSignInAccount? account;

  @override
  Future<AlbumDTO> getAlbum() async {
    final response = await getIt<UserRestClient>().getAlbums(LocationAPIConfig.artistRelatedId);
    final albumCollection = AlbumDTO(albums: response.albums);
    return albumCollection;
  }

  @override
  Future<ArtistEntity> getArtist() async {
    final response = await getIt<UserRestClient>().getArtists(LocationAPIConfig.artistRelatedId);

    return response;
  }

  @override
  Future<ArtistRelatedEntity> getArtistRelated() async {
    final response = await getIt<UserRestClient>().getArtistsRelated();

    return response;
  }

  @override
  Future<PlaylistEntity> getPlayList() async {
    final playlistEntity = await getIt<UserRestClient>().getPlayList();

    return playlistEntity;
  }
}
