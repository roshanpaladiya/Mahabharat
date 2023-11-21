import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/common/firstRowCommon.dart';
import 'package:mahabharat/common/listTile_common.dart';
import 'package:mahabharat/screen/setting_screen/setting_controller.dart';
import 'package:mahabharat/utils/asset_res.dart';

import '../rate screen/rate_controller.dart';

Widget settingMainContainer() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetRes.homeBgImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: Get.height * 0.060),
        firstRow(),
        GetBuilder<SettingController>(
          id: "isLight",
          builder: (controller) => listTileCommon(
            image: Image.asset(AssetRes.modeButton),
            title: 'Night Mode',
            subTitle: const Text("For better readability at night"),
            onTapped: () {
              controller.isLiteTheme;
            },
          ),
        ),
        listTileCommon(
          image: Image.asset(AssetRes.playSound),
          subTitle: const Text(
            "Play title song when you are in video list Screen",
            style: TextStyle(fontSize: 11),
          ),
          title: 'Play Title Song',
          trailing: Image.asset(AssetRes.chakra),
          onTapped: () {},
        ),
        GetBuilder<SettingController>(
          builder: (controller) => listTileCommon(
            image: Image.asset(AssetRes.shareApp),
            title: 'Share this app',
            onTapped: () {
              controller.share();
            },
          ),
        ),
        GetBuilder<RateController>(
          builder: (controller) => listTileCommon(
            image: Image.asset(AssetRes.rateIcon),
            title: 'Rate Us',
            onTapped: () {
              controller.rateBar();
            },
          ),
        ),
        listTileCommon(
          image: Image.asset(AssetRes.feedback),
          title: 'Feedback',
          onTapped: () {},
        ),
        GetBuilder<SettingController>(
          id: 'ReportAccountMisuse',
          builder: (controller) => listTileCommon(
            image: Image.asset(AssetRes.termConditionIcon),
            title: 'Terms & Conditions',
            onTapped: () {
              controller.tAndC();
            },
          ),
        ),
        GetBuilder<SettingController>(
          id: 'ReportAccountMisuse',
          builder: (controller) => listTileCommon(
            image: Image.asset(AssetRes.policyIcon),
            title: 'Terms & Conditions',
            onTapped: () {
              controller.pAndP();
            },
          ),
        ),
      ],
    ),
  );
}
