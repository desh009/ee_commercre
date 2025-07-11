import 'package:flutter/material.dart';

class AppColors {
  static Color themeColor = const Color(0xFF07ADAE);

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> swatch = {
      50: Color.fromRGBO(red, green, blue, 0.1),
      100: Color.fromRGBO(red, green, blue, 0.2),
      200: Color.fromRGBO(red, green, blue, 0.3),
      300: Color.fromRGBO(red, green, blue, 0.4),
      400: Color.fromRGBO(red, green, blue, 0.5),
      500: Color.fromRGBO(red, green, blue, 0.6),
      600: Color.fromRGBO(red, green, blue, 0.7),
      700: Color.fromRGBO(red, green, blue, 0.8),
      800: Color.fromRGBO(red, green, blue, 0.9),
      900: Color.fromRGBO(red, green, blue, 1.0),
    };

    return MaterialColor(color.value, swatch);
  }
}
