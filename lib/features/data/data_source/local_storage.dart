import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LocalStorage {
  static const _codeKey = '_codeKey';
  static const _accessTokenKey = "_accessTokenKey";
  static const _refreshTokenKey = '_refreshTokenKey';

  LocalStorage._();

  static Future<void> setCode(String code) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(code, _codeKey);
  }

  static Future<String?> getCode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_codeKey);
  }

  static Future<void> setAccessToken(String accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(accessToken, _accessTokenKey);
  }

  static Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_accessTokenKey);
  }

  static Future<void> setRefreshToken(String refreshToken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_refreshTokenKey, refreshToken);
  }

  static Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_refreshTokenKey);
  }
}
