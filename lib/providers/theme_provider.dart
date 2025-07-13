import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme _theme = darkTheme;

  AppTheme get theme => _theme;

  void toggleTheme() {
    _theme = _theme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}
