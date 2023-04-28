import 'package:flutter/material.dart';

class AppBarThemes {
  AppBarThemes._();

  static AppBarTheme lightAppbarTheme = const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
  );

  static AppBarTheme darkAppbarTheme = const AppBarTheme(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 0,
  );
}
