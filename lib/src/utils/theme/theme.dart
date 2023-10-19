import 'package:flutter/material.dart';

const primaryColor = Color(0xff343B6C);

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
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
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size?>(
          const Size.fromHeight(45),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
        elevation: MaterialStateProperty.all<double>(8.0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size?>(
          const Size.fromHeight(45),
        ),
        side: MaterialStateProperty.all<BorderSide?>(
            const BorderSide(color: Color(0xff484f7b), width: 1)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(8.0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0)),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
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
