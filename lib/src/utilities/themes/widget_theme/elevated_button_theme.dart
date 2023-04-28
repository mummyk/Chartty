import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes */
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

/* -- Light Theme */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(style: BorderStyle.none),
      padding: const EdgeInsets.symmetric(
        vertical: tButtonHeight,
      ),
    ),
  );

/* -- Dark Theme */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        foregroundColor: tWhiteColor,
        backgroundColor: tPrimaryColor,
        side: const BorderSide(style: BorderStyle.none),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
