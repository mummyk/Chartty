import 'package:chartty/src/features/welcome/screens/splash_screen.dart';
import 'package:chartty/src/utilities/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const Chartty());
}

class Chartty extends StatelessWidget {
  const Chartty({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatty',
      debugShowCheckedModeBanner: false,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
