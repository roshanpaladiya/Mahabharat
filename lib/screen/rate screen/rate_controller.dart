import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateController extends GetxController {
  String appStoreId = '';
  String microsoftStoreId = '';

  // Availability _availability = Availability.loading;

  void _setAppStoreId(String id) => appStoreId = id;

  // void _setMicrosoftStoreId(String id) => microsoftStoreId = id;

  void rateBar() {
    Get.bottomSheet(
      Container(
        height: Get.height * 2.5,
        color: Colors.white,
        child: Column(
          children: [
            const Text('In App Review status: {_availability.name}'),
            TextField(
              onChanged: _setAppStoreId,
              decoration: const InputDecoration(hintText: 'App Store ID'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Open Store Listing'),
            ),
          ],
        ),
      ),
      // barrierColor: Colors.red[50],
      // isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      // enableDrag: false,
    );
    update(["rate"]);
  }
}
