import 'dart:convert';
import 'dart:developer' as logger;
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_base_project/core/platform/network_exception.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final method = options.method;
    final uri = options.uri;
    final data = options.data;
    options.headers = {
      'Authorization':
          // ignore: prefer_interpolation_to_compose_strings
          'Basic ${base64.encode(StringBuffer("acf73440d1604f0caa90e51a1240c08f" ':' "95b66bd88f3a440497f47c53fcd62796").toString().codeUnits)}'
    };
    if (method == 'GET') {
      logger.log("✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}");
    } else {
      try {
        logger.log("✈️ REQUEST[$method] => PATH: $uri \n DATA: ${jsonEncode(data)}");
      } catch (e) {
        logger.log("✈️ REQUEST[$method] => PATH: $uri \n DATA: $data");
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);
    logger.log("✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data");
    //Handle section expired
    if (response.statusCode == 401) {
      // LocalStorage.removeApiTokenKey();
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    final uri = err.requestOptions.path;
    var data = "";
    try {
      data = jsonEncode(err.response?.data);
      _handleApiError(err);
    } catch (e, s) {
      logger.log(e.toString(), stackTrace: s);
    }
    logger.log("⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: $data");
    super.onError(err, handler);
  }

  Future<NetworkException> _handleApiError(DioError e) async {
    final response = e.response;
    final int statusCode = response?.statusCode ?? -1;

    if (response == null) {
      if (e.error is SocketException) {
        return NetworkException(
          message: "L10n.network_error",
          statusCode: statusCode,
        );
      }
      return NetworkException(
        message: e.message,
        statusCode: statusCode,
      );
    }
    return NetworkException(
      message: "Lỗi kết nối mạng vui lòng thử lại sau",
      statusCode: statusCode,
    );
  }
}
