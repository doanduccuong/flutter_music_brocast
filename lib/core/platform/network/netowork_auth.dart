import 'package:dio/dio.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/core/platform/auth_rest_client.dart';
import 'package:injectable/injectable.dart';

import 'auth_interceptor.dart';

@singleton
class AuthUtil {
  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = 60000;
      dio!.interceptors.add(AuthInterceptor());
    }
    return dio!;
  }

  static AuthRestClient get authApiClient {
    final apiClient = AuthRestClient(getDio(), baseUrl: AppConfigs.baseUrl);
    return apiClient;
  }
}