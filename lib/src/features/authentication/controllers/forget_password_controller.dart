import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();

  //Call this Function from Design & it will do the rest
  // Reset user password with email
  void resetUserPassword(String email) async {
    //await APIs.instance.resetPassword(email);
  }
}
