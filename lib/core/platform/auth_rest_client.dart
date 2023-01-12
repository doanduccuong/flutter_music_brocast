import 'package:dio/dio.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/network/netowork_auth.dart';
import 'package:flutter_base_project/features/data/model/response/auth_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'auth_rest_client.g.dart';

@module
abstract class RetrofitAuthInjectableModule {
  AuthRestClient getService() => AuthRestClient(AuthUtil.getDio(), baseUrl: AppConfigs.authBaseUrl);
}

@RestApi()
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio, {String baseUrl}) = _AuthRestClient;

  @GET("/authorize")
  Future<AuthResponse> requestAuthorization({
    @Query("client_id") String clientId = "acf73440d1604f0caa90e51a1240c08f",
    @Query("response_type") String responseType = "code",
    @Query("redirect_uri") String redirectUri = "https://cuongdd1.com/callback/",
    @Query("state") String state = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890",
    @Query("scope") String scope = "user-read-private user-read-email",
  });

  @POST("/api/token")
  Future<AuthResponse> requestAccessToken({
    @Query("grant_type") String grantType = "authorization_code",
    @Query("code") String code = "",
    @Query("redirect_uri") String redirectUri = "https://cuongdd1.com/callback",
  });

  @POST("/api/token")
  Future<AuthResponse> requestRefreshAccessToken({
    @Query("grant_type") String grantType = "refresh_token",
    @Query("refresh_token") String refreshToken = "",
  });
}