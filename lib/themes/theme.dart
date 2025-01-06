import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.dark();
  ThemeData get themeData {
    return _themeData;
  }

  void toggleTheme() {
    _themeData =
        _themeData == ThemeData.light() ? ThemeData.dark() : ThemeData.light();

    notifyListeners();
  }
}
