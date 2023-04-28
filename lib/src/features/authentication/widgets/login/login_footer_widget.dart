import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/text_strings.dart';
import '../../screens/sign_up_screen.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);
  //final APIs authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            //authController.clearError();
            Get.to(() => const SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: tSignup, style: TextStyle(color: Colors.blue))
                ]),
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
