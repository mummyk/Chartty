import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //final APIs authController = Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fullName = TextEditingController();
  final age = TextEditingController();
  final phoneNumber = "".obs;
  final countryCode = "".obs;

  //Call this Function from Design & it will do the rest
  // Register user/Authenticate user with email and password
  void registerUser(
    String email,
    String password,
  ) async {
    // if (passwordConfirmed()) {
    //   final time = DateTime.now().millisecondsSinceEpoch.toString();
    //   await APIs.instance.createUserWithEmailAndPassword(email, password).then(
    //         (value) async => await APIs.instance.createUser(
    //           UserModel(
    //             id: authController.userUid,
    //             email: email,
    //             age: age.text.trim(),
    //             name: fullName.text.trim(),
    //             phoneNo: phoneNumber.value,
    //             countryCode: countryCode.value,
    //             isAdmin: false,
    //             plans: 0,
    //             image: authController.photoURL == null
    //                 ? ""
    //                 : authController.photoURL.toString(),
    //             createdAt: time,
    //             isOnline: false,
    //             lastActive: time,
    //             pushToken: '',
    //             about: "Hey, I'm using Chatty!",
    //           ),
    //         ),
    //       );
    //   ////Now add the user details to the Database
    //
    //   Get.to(() => EmailVerificationNote());
    // }
  }

  // Authenticate user with phone number
  void phoneAuthentication(String phoneNo) async {
    // await APIs.instance.phoneAuthentication(phoneNo);
  }

  // bool passwordConfirmed() {
  //   if (password.text.trim() == confirmPasswordController.text.trim()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
