import 'package:flutter/material.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../widgets/form_header_widget.dart';
import '../widgets/login/login_footer_widget.dart';
import '../widgets/login/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return GestureDetector(
      //For Hiding Keyboard When a Tab is Detected on Screen
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FormHeaderWidget(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    image: tLogoImage,
                    title: tLoginTitle,
                    subTitle: tLoginSubTitle,
                    imageHeight: 0.2,
                  ),
                  LoginForm(),
                  LoginFooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
