import 'package:dio/dio.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/network/network_info.dart';
import 'package:flutter_base_project/features/domain/entites/album_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_entity.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'user_rest_client.g.dart';

@module
abstract class RetrofitInjectableModule {
  UserRestClient getService() => UserRestClient(ApiUtil.getDio(), baseUrl: AppConfigs.baseUrl);
}

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  ///User
  @GET("/albums/")
  Future<AlbumEntity> getAlbums(@Query("ids") String ids);

  @GET("/artists/")
  Future<ArtistEntity> getArtists(
    @Query("ids") String ids, {
    @Query("offset") String offset = "0",
    @Query("limit") String limit = "100",
  });

  @GET("/artist_related/")
  Future<ArtistRelatedEntity> getArtistsRelated({
    @Query("id") String ids = LocationAPIConfig.artistRelatedId,
  });

  @GET("/playlist/")
  Future<PlaylistEntity> getPlayList({
    @Query("id") String ids = LocationAPIConfig.playlistId,
  });
}
