import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    // var isVerified = await APIs.instance.verifyOTP(otp);
    // isVerified ? Get.offAll(const BottomNavBar()) : Get.back();
  }
}
