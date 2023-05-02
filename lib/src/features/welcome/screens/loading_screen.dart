import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/lottie_constant.dart';
import 'on_boarding_screen.dart';



class LoadingScreens extends StatefulWidget {
  const LoadingScreens({Key? key}) : super(key: key);

  @override
  State<LoadingScreens> createState() => _LoadingScreensState();
}

class _LoadingScreensState extends State<LoadingScreens> {
  //final APIs controller = Get.find();

  // Checking if device in online
  @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 5), () {
  //     if (controller.auth.currentUser != null) {
  //       log('\nUser: ${controller.auth.currentUser}');
  //       //navigate to home if Email verification is true
  //       controller.auth.currentUser?.emailVerified == true
  //           ? Get.offAll(() => const BottomNavBar())
  //           : Get.offAll(() => EmailVerificationNote());
  //     } else {
  //       //navigate to login screen
  //       log("No User");
  //       Get.offAll(() => const OnBoardingScreen());
  //     }
  //   });
  // }

  //TODO: Remove this
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5), (){
    Get.offAll(()=>const OnBoardingScreen());});
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      //body
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.values[1],
            children: [
              Lottie.asset(loading,
                  alignment: Alignment.center, width: mq.height / 3),
              const Text(
                "Loading",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
