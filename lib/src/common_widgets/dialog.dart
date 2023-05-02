import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Dialogs {
  static void showSnackbar(BuildContext context, String msg) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(msg),
        backgroundColor: isDarkMode
            ? tSecondaryColor.withOpacity(.8)
            : tPrimaryColor.withOpacity(.8),
        behavior: SnackBarBehavior.floating));
  }

  static void showProgressBar(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    showDialog(
        context: context,
        builder: (_) => Center(
                child: CircularProgressIndicator(
              color: isDarkMode
                  ? tSecondaryColor.withOpacity(.8)
                  : tPrimaryColor.withOpacity(.8),
            )));
  }
}
