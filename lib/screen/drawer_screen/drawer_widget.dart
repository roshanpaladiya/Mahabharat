import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/home_screen/home_common.dart';
import 'package:mahabharat/utils/asset_res.dart';

import 'drawer_controller.dart';

Widget drawerOpenCommon() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetRes.homeBgImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        SizedBox(
          height: Get.height * 0.020,
        ),
        const Image(
          image: AssetImage(AssetRes.mahabharatTitle),
        ),
        GetBuilder<drawerController>(
            id: "Video",
            builder: (controller) {
              return ListTileCommon(
                onPress: () => controller.drawerToVideos(),
                leadingIcon: const Icon(Icons.video_library_sharp),
                title: 'Videos',
                trailingIcon: AssetRes.dhanush_Outline,
              );
            }),
        GetBuilder<drawerController>(builder: (controller) {
          return ListTileCommon(
            onPress: () => controller.drawerToFavorite(),
            leadingIcon: const Icon(Icons.favorite_border),
            title: 'Favorites',
            trailingIcon: AssetRes.dhanush_Outline,
          );
        }),
        GetBuilder<drawerController>(
            id: "Setting",
            builder: (controller) {
              return ListTileCommon(
                onPress: () => controller.drawerToSetting(),
                leadingIcon: const Icon(Icons.settings),
                title: 'Setting',
                trailingIcon: AssetRes.dhanush_Outline,
              );
            }),
        GetBuilder<drawerController>(
            // id: "Share",
            builder: (controller) {
          return ListTileCommon(
            onPress: () {
              controller.share();
            },
            leadingIcon: const Icon(Icons.share),
            title: 'Share this App',
            trailingIcon: AssetRes.dhanush_Outline,
          );
        }),
        ListTileCommon(
          onPress: () {},
          leadingIcon: const Icon(Icons.rate_review_rounded),
          title: 'Rate Us',
          trailingIcon: AssetRes.dhanush_Outline,
        ),
        ListTileCommon(
          onPress: () {},
          leadingIcon: const Icon(Icons.more_vert),
          title: 'More App',
          trailingIcon: AssetRes.dhanush_Outline,
        ),
      ],
    ),
  );
}
