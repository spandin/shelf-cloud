import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xff343B6C, {
      50: Color(0xffebebf0),
      100: Color(0xffd6d8e2),
      200: Color(0xffc2c4d3),
      300: Color(0xffaeb1c4),
      400: Color(0xff9a9db6),
      500: Color(0xff8589a7),
      600: Color(0xff717698),
      700: Color(0xff5d6289),
      800: Color(0xff484f7b),
      900: Color(0xff343B6C),
    }),
    fontFamily: 'Jost',
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xff343B6C, {
      50: Color(0xffebebf0),
      100: Color(0xffd6d8e2),
      200: Color(0xffc2c4d3),
      300: Color(0xffaeb1c4),
      400: Color(0xff9a9db6),
      500: Color(0xff8589a7),
      600: Color(0xff717698),
      700: Color(0xff5d6289),
      800: Color(0xff484f7b),
      900: Color(0xff343B6C),
    }),
    fontFamily: 'Jost',
  );
}
