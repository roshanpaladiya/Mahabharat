import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/setting_screen/setting_controller.dart';
import 'package:mahabharat/screen/setting_screen/setting_widget.dart';

import '../rate screen/rate_controller.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    Get.put(RateController());
    return Scaffold(
      body: settingMainContainer(),
    );
  }
}
