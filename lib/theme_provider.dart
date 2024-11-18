import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = _themeA;
  TextTheme _currentTextTheme = GoogleFonts.latoTextTheme();

  static final ThemeData _themeA = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.blue[50],
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
  );

  static final ThemeData _themeB = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green[50],
    buttonTheme: const ButtonThemeData(buttonColor: Colors.green),
  );

  static final ThemeData _themeC = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.orange[50],
    buttonTheme: const ButtonThemeData(buttonColor: Colors.orange),
  );

  static final List<TextTheme> _fonts = [
    GoogleFonts.latoTextTheme(),
    GoogleFonts.robotoTextTheme(),
    GoogleFonts.poppinsTextTheme(),
  ];

  ThemeData getTheme() {
    return _currentTheme.copyWith(textTheme: _currentTextTheme);
  }

  void setTheme(int themeIndex) {
    switch (themeIndex) {
      case 0:
        _currentTheme = _themeA;
        break;
      case 1:
        _currentTheme = _themeB;
        break;
      case 2:
        _currentTheme = _themeC;
        break;
    }
    notifyListeners();
  }

  void setFont(int fontIndex) {
    _currentTextTheme = _fonts[fontIndex];
    notifyListeners();
  }
}
