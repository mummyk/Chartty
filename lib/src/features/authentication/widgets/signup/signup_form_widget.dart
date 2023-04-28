import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/hide_password.dart';
import '../../controllers/signup_controller.dart';



class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final APIs authController = Get.find();
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    //Hide password
    Icon icon = const Icon(LineAwesomeIcons.eye);
    final hideController = Get.put(HideController());

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label: const Text(tEmail),
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label: const Text(tFullName),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Full Name';
                }
                return null;
              },
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.age,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: const Text("Age"),
                  prefixIcon: const Icon(Icons.card_membership),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => TextFormField(
                obscureText: hideController.hide.value,
                controller: controller.confirmPasswordController,
                decoration: InputDecoration(
                    label: const Text(tConfirmPassword),
                    prefixIcon: const Icon(Icons.fingerprint),
                    suffixIcon: IconButton(
                        onPressed: () {
                          hideController.hide.toggle();
                        },
                        icon: hideController.hide.value
                            ? icon
                            : const Icon(LineAwesomeIcons.eye_slash)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Confirm your password';
                  } else if (value != controller.password.text.trim()) {
                    return "Password Does not match";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            IntlPhoneField(
              decoration: InputDecoration(
                  label: const Text(tPhoneNo),
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              initialCountryCode: "FI",
              onChanged: (phone) {
                controller.phoneNumber.value = phone.completeNumber;
                controller.countryCode.value = phone.countryISOCode;
              },
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: tFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // if (formKey.currentState!.validate()) {
                  //   formKey.currentState?.save();
                  //   // for email and password
                  //   /*SignUpController.instance.registerUser(
                  //       controller.email.text.trim(),
                  //       controller.password.text.trim());*/
                  //
                  //   // for Phone OTP
                  //   /*SignUpController.instance
                  //       .phoneAuthentication(controller.phoneNo.text.trim());
                  //   Get.to(() => const OTPScreen());*/
                  //
                  //   /*
                  //     ==========
                  //     Todo: Step - 3 [Get User and pass it to Controller]
                  //     ==========
                  //   */
                  //
                  //   //
                  //   Dialogs.showProgressBar(context);
                  //
                  //   // Using Email and password Sign Up
                  //   SignUpController.instance.registerUser(
                  //     controller.email.text.trim(),
                  //     controller.password.text.trim(),
                  //   );
                  // }
                },
                child: Text(
                  tSignup.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
