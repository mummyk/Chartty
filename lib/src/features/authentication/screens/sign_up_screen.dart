import 'package:flutter/material.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../widgets/form_header_widget.dart';
import '../widgets/signup/signup_footer_widget.dart';
import '../widgets/signup/signup_form_widget.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //For Hiding Keyboard When a Tab is Detected on Screen
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  const FormHeaderWidget(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    image: tLogoImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle,
                    imageHeight: 0.2,
                  ),
                  const SignUpFormWidget(),
                  SignUpFooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
