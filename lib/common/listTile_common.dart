import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget listTileCommon({Text? subTitle, Image? trailing, required String title, required Image image, required void Function()? onTapped}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
    child: Card(
      elevation: 2,
      child: ListTile(
        autofocus: true,
        focusColor: Colors.indigoAccent,
        subtitle: subTitle,
        onTap: onTapped,
        title: Text(title),
        leading: image,
        trailing: trailing,
      ),
    ),
  );
}
