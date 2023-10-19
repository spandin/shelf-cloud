import 'package:flutter/material.dart';

const primaryColor = Color(0xff343B6C);

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    fontFamily: 'Jost',
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    fontFamily: 'Jost',
  );
}
