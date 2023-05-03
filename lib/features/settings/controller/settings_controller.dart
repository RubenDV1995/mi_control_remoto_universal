import 'package:flutter/material.dart';

import '../../../utilities/theme.dart';

class SettingsController extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  bool _isDarkMode = false;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _isDarkMode;

  setTheme(bool value) async {
    if (value) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    _isDarkMode = value;
    notifyListeners();
  }

}
