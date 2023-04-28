import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';


/* -- Light & Dark Elevated Button Themes */
class TOutlinedButton {
  TOutlinedButton._();

/* -- Light Theme */
  static final lightOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        foregroundColor: tSecondaryColor,
        side: const BorderSide(color: tSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );

/* -- Dark Theme */
  static final darkOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        foregroundColor: tWhiteColor,
        side: const BorderSide(color: tPrimaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
