import 'package:flutter/material.dart';
import 'package:shelfx/src/utils/theme/widget_themes/button_theme.dart';
import 'package:shelfx/src/utils/theme/widget_themes/input_theme.dart';

const primaryColor = Color(0xff15182B);

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primarySwatch: const MaterialColor(0xff15182B, {
      50: Color(0xffe8e8ea),
      100: Color(0xffd0d1d5),
      200: Color(0xffb9babf),
      300: Color(0xffa1a3aa),
      400: Color(0xff8a8c95),
      500: Color(0xff737480),
      600: Color(0xff5b5d6b),
      700: Color(0xff444655),
      800: Color(0xff2c2f40),
      900: Color(0xff15182B),
    }),
    fontFamily: 'Jost',
    inputDecorationTheme: TInput.lightInputTheme,
    elevatedButtonTheme: TButton.lightElevatedButtonTheme,
    outlinedButtonTheme: TButton.lightOtlinedButtonTheme,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xff151515),
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        color: Color(0xff151515),
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: Color(0xff151515),
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Color(0xff505050),
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        color: Color(0xff505050),
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    primarySwatch: const MaterialColor(0xff15182B, {
      50: Color(0xffe8e8ea),
      100: Color(0xffd0d1d5),
      200: Color(0xffb9babf),
      300: Color(0xffa1a3aa),
      400: Color(0xff8a8c95),
      500: Color(0xff737480),
      600: Color(0xff5b5d6b),
      700: Color(0xff444655),
      800: Color(0xff2c2f40),
      900: Color(0xff15182B),
    }),
    fontFamily: 'Jost',
    inputDecorationTheme: TInput.lightInputTheme,
    elevatedButtonTheme: TButton.lightElevatedButtonTheme,
    outlinedButtonTheme: TButton.lightOtlinedButtonTheme,
  );
}
