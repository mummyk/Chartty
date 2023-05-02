import 'package:chartty/src/features/profile/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/hide_password.dart';
import '../../controllers/login_controller.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    //final APIs authController = Get.find();
    final formKey = GlobalKey<FormState>();
    //Hide password
    Icon icon = const Icon(LineAwesomeIcons.eye);
    final hideController = Get.put(HideController());
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            Obx(
              () => TextFormField(
                obscureText: hideController.hide.value,
                controller: controller.password,
                decoration: InputDecoration(
                    label: const Text(tPassword),
                    prefixIcon: const Icon(Icons.fingerprint),
                    suffixIcon: IconButton(
                        onPressed: () {
                          hideController.hide.toggle();
                        },
                        icon: hideController.hide.value
                            ? icon
                            : const Icon(LineAwesomeIcons.eye_slash)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            // Obx(() {
            //   if (authController.errorMessage != null) {
            //     return Text(
            //       authController.errorMessage,
            //       style: const TextStyle(
            //         color: Colors.red,
            //       ),
            //     );
            //   }
            //   return const SizedBox.shrink();
            // }),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    //ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(tForgetPassword)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Dialogs.showProgressBar(context);
                  // if (_formKey.currentState!.validate()) {
                  //   // login user
                  //   LoginController.instance.loginUser(
                  //       controller.email.text.trim(),
                  //       controller.password.text.trim());
                  // }
                  //TODO: Remove this
                  Get.offAll(()=>const ProfileScreen());
                },
                child: Text(
                  tLogin.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
