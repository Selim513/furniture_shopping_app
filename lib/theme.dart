import 'package:flutter/material.dart';

final themeData = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    suffixIconColor: Colors.black,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE0E0E0), width: 2),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE0E0E0), width: 2),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
  ),
);
