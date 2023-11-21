// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/drawer_screen/drawer_controller.dart';
import 'package:mahabharat/screen/drawer_screen/drawer_widget.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_controller.dart';
import 'package:mahabharat/screen/home_screen/home_controller.dart';
import 'package:mahabharat/screen/home_screen/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(drawerController());
    Get.put(FavouriteController());
    return Scaffold(
      body: homeMainContainer(),
      drawer: Drawer(
        child: drawerOpenCommon(),
      ),
    );
  }
}
