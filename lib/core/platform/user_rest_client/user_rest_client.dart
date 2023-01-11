import 'package:dio/dio.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/network/network_info.dart';
import 'package:flutter_base_project/features/data/model/response/auth_response.dart';
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

  @GET("/authorize")
  Future<AuthResponse> requestAuthorization({
    @Query("client_id") String clientId = "acf73440d1604f0caa90e51a1240c08f",
    @Query("response_type") String responseType = "code",
    @Query("redirect_uri") String redirectUri = "http://cuongdd1.com/callback",
    @Query("state") String state = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890",
    @Query("scope") String scope = "user-read-private user-read-email",
  });

  @POST("/api/token")
  Future<AuthResponse> requestAccessToken({
    @Query("grant_type") String grantType = "",
    @Query("code") String code = "",
    @Query("redirect_uri") String redirectUri = "http://cuongdd1.com/callback",
  });
}
