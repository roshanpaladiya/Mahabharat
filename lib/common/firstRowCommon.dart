import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/utils/asset_res.dart';

Widget firstRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //====================================   >>>   mahabharat  Title <<<    =============================

      SizedBox(
        height: Get.height * 0.130,
        child: const Image(
          image: AssetImage(AssetRes.mahabharatTitle),
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}
