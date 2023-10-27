import 'package:flutter/material.dart';

class TButton {
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      textStyle: MaterialStateProperty.all<TextStyle?>(
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      fixedSize: MaterialStateProperty.all<Size?>(
        const Size.fromHeight(50),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xff15182B)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
      elevation: MaterialStateProperty.all<double>(8.0),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0)),
    ),
  );

  static OutlinedButtonThemeData lightOtlinedButtonTheme =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle?>(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size?>(
        const Size.fromHeight(50),
      ),
      side: MaterialStateProperty.all<BorderSide?>(
          const BorderSide(color: Color(0xffF2F4FF), width: 1)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      elevation: MaterialStateProperty.all<double>(8.0),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0)),
    ),
  );
}
