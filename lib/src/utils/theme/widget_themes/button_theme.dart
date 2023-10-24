import 'package:flutter/material.dart';

class TButton {
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size?>(
        const Size.fromHeight(45),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xff15182B)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
      elevation: MaterialStateProperty.all<double>(8.0),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0)),
    ),
  );

  static OutlinedButtonThemeData lightOtlinedButtonTheme =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size?>(
        const Size.fromHeight(45),
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
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0)),
    ),
  );
}
