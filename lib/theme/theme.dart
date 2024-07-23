import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFFF4A460);
const accentColor = Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
    primaryColor: primaryColor,
    hintColor: accentColor,
  );
}
