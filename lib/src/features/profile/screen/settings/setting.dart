import 'dart:developer';

import 'package:chartty/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../common_widgets/appbar.dart';
import '../../../../constants/text_strings.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final sendEmail = false.obs;

    return Scaffold(
      appBar: DashboardAppBar(
        headerIcon: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              LineAwesomeIcons.angle_left,
              color: isDarkMode ? Colors.white : Colors.black,
            )),
        title: tMenu1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SettingsList(sendEmail: sendEmail),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
    required this.sendEmail,
  });

  final RxBool sendEmail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey[300],
      leading: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
      ),
      title: const Text("Get update via Email"),
      subtitle: const Text("Get the latest update directly to your mail"),
      trailing: Obx(
        () => Switch(
            activeColor: tPrimaryColor,
            value: sendEmail.value,
            onChanged: (value) {
              sendEmail.toggle();
              log(value.toString());
            }),
      ),
    );
  }
}
