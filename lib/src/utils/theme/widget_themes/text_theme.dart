import 'package:flutter/material.dart';

class TText {
  static TextTheme lightTextTheme = const TextTheme(
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
    bodyLarge: TextStyle(
      color: Color(0xff505050),
      fontSize: 18,
      fontWeight: FontWeight.w300,
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
    titleLarge: TextStyle(
      color: Color(0xff15182B),
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: Color(0xff15182B),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: Color(0xff15182B),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w300,
    ),
  );
}
