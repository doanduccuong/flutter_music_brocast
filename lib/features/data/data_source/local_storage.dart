import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LocalStorage {
  static const _codeKey = '_codeKey';

  LocalStorage._();

  static Future<void> setCodeKey(String code) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(code, _codeKey);
  }

  static Future<String?> getCodeKey() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_codeKey);
  }
}
