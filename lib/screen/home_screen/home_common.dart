import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget ListTileCommon({
  required String title,
  required Icon leadingIcon,
  required String trailingIcon,
  required void Function()? onPress,
}) {
  return Card(
    // elevation: 0.2,
    child: ListTile(
      onTap: onPress,
      title: Text(title),
      leading: leadingIcon,
      trailing: SizedBox(
        height: Get.height * 0.040,
        width: Get.width * 0.090,
        child: Image(
          image: AssetImage(trailingIcon),
        ),
      ),
    ),
  );
}
