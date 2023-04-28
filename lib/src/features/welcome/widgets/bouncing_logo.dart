import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../screens/loading_screen.dart';



class BouncingLogo extends StatefulWidget {
  const BouncingLogo({super.key});

  @override
  State<BouncingLogo> createState() => _BouncingLogoState();
}

class _BouncingLogoState extends State<BouncingLogo>
    with SingleTickerProviderStateMixin {
  int n = 5;
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, 0.15),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Wait for n seconds and navigate to the new screen
    Future.delayed(Duration(seconds: n), () {
      //authController.onReady();
      Get.to(() => const LoadingScreens());
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final ms = mediaQuery.size;
    final isDarkMode = brightness == Brightness.dark;
    return SlideTransition(
      position: _animation,
      child: Container(
        height: ms.height / 5,
        width: ms.height / 5,
        decoration: BoxDecoration(
          color: isDarkMode ? tPrimaryColor : tSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            "C".toUpperCase(),
            style: const TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
