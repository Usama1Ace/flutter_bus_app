import 'package:flutter/material.dart';

Color KLightBlue = Color(0xFF7AC3E8);
Color KPurple = Color(0xFFAB32D4);
Color Kblack = Color(0xFF040404);
Color KLightGrenn = Color(0xFF64C5AD);
Color KBlue = Color(0xFF3583B0);
Color KOrange = Color(0xFFEE772F);
Color KRed = Colors.redAccent;
Color KGreen = Color(0xFF43D296);
Color KBlackDisabled = Color(0xFF000000).withOpacity(0.6);
Color KBlackSecondary = Color(0xFF000000).withOpacity(0.8);
Color KWhite = Colors.white;

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
