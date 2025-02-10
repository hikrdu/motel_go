import 'package:flutter/material.dart';

class AppTheme {
  static const Map<int, Color> color = {
    50: Color.fromRGBO(239, 41, 55, .1),
    410: Color.fromRGBO(239, 41, 55, .2),
    200: Color.fromRGBO(239, 41, 55, .3),
    300: Color.fromRGBO(239, 41, 55, .4),
    400: Color.fromRGBO(239, 41, 55, .5),
    500: Color.fromRGBO(239, 41, 55, .6),
    600: Color.fromRGBO(239, 41, 55, .7),
    700: Color.fromRGBO(239, 41, 55, .8),
    800: Color.fromRGBO(239, 41, 55, .9),
    900: Color.fromRGBO(239, 41, 55, 1),
  };

  static const MaterialColor kDefaultColor = MaterialColor(0xFFef2937, color);

  static ThemeData defaultTheme = ThemeData(
    primaryColor: kDefaultColor,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: kDefaultColor,
    ),
    cardColor: Colors.white,
  );
}
