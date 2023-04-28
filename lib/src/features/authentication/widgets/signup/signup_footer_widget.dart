import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/text_strings.dart';
import '../../screens/login_screen.dart';


class SignUpFooterWidget extends StatelessWidget {
  SignUpFooterWidget({Key? key}) : super(key: key);

  //final APIs authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            //authController.clearError();
            Get.offAll(const LoginScreen());
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const TextSpan(
                    text: tLogin, style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: SignInButtonBuilder(
            icon: LineAwesomeIcons.google_logo,
            iconColor: Colors.red,
            text: "Sign up with Google",
            onPressed: () {
              //authController.signInWithGoogle();
            },
            backgroundColor: Colors.blue,
          ),
        )
      ],
    );
  }
}
