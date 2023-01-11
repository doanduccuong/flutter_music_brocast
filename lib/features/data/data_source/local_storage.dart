import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LocalStorage {
  static const _introKey = '_introKey';

  static const _authKey = '_authKey';

  static const _audioPlayerKey = "_audioPlayerKey";

  final FlutterSecureStorage _storage;

  LocalStorage._(this._storage);

  //Get authKey
  static Future<String> getApiTokenKey() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_authKey) ?? "";
    } catch (e) {
      developer.log(e.toString());
      return "";
    }
  }

  static void saveToCurrentPlayMusic(String urlPath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authKey, urlPath);
  }

  static Future<String> getCurrentPlayMusic() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_audioPlayerKey) ?? "";
    } catch (e) {
      developer.log(e.toString());
      return "";
    }
  }

  //Set authKey
  static void saveToken(String apiTokenKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authKey, apiTokenKey);
  }

  static void removeApiTokenKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authKey);
  }

  //Get intro
  static Future<bool> isSeenIntro() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_introKey) ?? false;
    } catch (e) {
      return false;
    }
  }

  //Set intro
  static void setSeenIntro({isSeen = true}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_introKey, isSeen ?? true);
  }
}
