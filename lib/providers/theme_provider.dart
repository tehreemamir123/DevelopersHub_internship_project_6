import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkMode = false;

  bool get isDarkMode => _darkMode;

  void toggleTheme() {
    _darkMode = !_darkMode;
    notifyListeners();
  }
}
