import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum AppMode {
  DARK_MODE(ThemeMode.dark),
  LIGHT_MODE(ThemeMode.light);

  final ThemeMode? currentMode;
  const AppMode(this.currentMode);
}

enum PageStatus {
  LOADING,
  LOADED,
}
