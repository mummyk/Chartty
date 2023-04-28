import 'package:chartty/src/utilities/themes/widget_theme/app_bar_theme.dart';
import 'package:chartty/src/utilities/themes/widget_theme/elevated_button_theme.dart';
import 'package:chartty/src/utilities/themes/widget_theme/outlined_button_theme.dart';
import 'package:chartty/src/utilities/themes/widget_theme/text_formfield_theme.dart';
import 'package:chartty/src/utilities/themes/widget_theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarThemes.lightAppbarTheme,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButton.lightOutlinedButton,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarThemes.darkAppbarTheme,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButton.darkOutlinedButton,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
