// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_widget.dart';
import 'package:mahabharat/screen/home_screen/home_controller.dart';

import '../history_screen/videos_model.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});
  List<ProductVideo>? products;

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();
    return Scaffold(
      body: favouriteScreen(),
    );
  }
}
