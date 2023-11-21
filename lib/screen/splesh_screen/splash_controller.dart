import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/audio_controller/audio_controller.dart';
import 'package:mahabharat/screen/bottom_nav/bottom_nav.dart';

class SplashScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  AudioController audioController = Get.put(AudioController());

  ///-------------------------------AnimationController--------------------------------///
  late final AnimationController controller = AnimationController(
    duration: const Duration(
      seconds: 5,
    ),
    vsync: this,
  )..repeat();
  final Tween<double> tween = Tween<double>(begin: 0, end: 1);

  @override
  Future<void> onInit() async {
    controller;
    tween;
    await audioController.titleMusic();
    Timer(
      const Duration(seconds: 5),
      () => Get.off(
        BottomNav_Screen(),
      ),
    );

    super.onInit();
  }
}
