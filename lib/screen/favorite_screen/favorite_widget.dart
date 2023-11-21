import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/common/firstRowCommon.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_controller.dart';
import 'package:mahabharat/utils/asset_res.dart';

Widget favouriteScreen() {
  return Column(
    children: [
      Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetRes.homeBgImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.060),
              firstRow(),
              secRow(),
            ],
          ),
        ),
      )
    ],
  );
}

Widget secRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GetBuilder<FavouriteController>(
        id: 'likeVideo',
        builder: (controller) => GestureDetector(
          onTap: () => controller.likeVideo(),
          child: Container(
            height: Get.height * 0.075,
            width: Get.width * 0.4,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Center(
              child: Text(
                "Favorite",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: Get.height * 0.075,
          width: Get.width * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
              child: Text(
            "History",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    ],
  );
}
