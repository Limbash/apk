import 'package:apk/themes/dark_mode.dart';
import 'package:apk/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => themeData == darkMode;

  set themeData (ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if(_themeData == lightMode){
      themeData == darkMode;
    }else{
      themeData == lightMode;
    }
  }
}