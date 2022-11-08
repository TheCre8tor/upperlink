import 'package:flutter/material.dart';

final themeData = ThemeData(
  fontFamily: "Montserrat",
  primarySwatch: Colors.blue,
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color(0xFFD5D5D5),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color(0xFF00AEEF),
      ),
    ),
  ),
);
