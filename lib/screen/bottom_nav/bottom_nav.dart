import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/bottom_nav/bottoom_controller.dart';
import 'package:mahabharat/screen/search_screen/search_screen.dart';
import 'package:mahabharat/utils/asset_res.dart';

import '../favorite_screen/favorite_screen.dart';
import '../home_screen/home_screen.dart';
import '../setting_screen/setting_screen.dart';

class BottomNav_Screen extends StatelessWidget {
  BottomNav_Screen({super.key});

  final screen = [const HomeScreen(), FavouriteScreen(), const SearchScreen(), const SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(
        () => IndexedStack(
          index: BottomNavController.selectedIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: Get.height * 0.081,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white54,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                onTap: (value) {
                  BottomNavController.selectedIndex(value);
                },
                currentIndex: BottomNavController.selectedIndex.value,
                items: [
                  const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetRes.homeIcon)), backgroundColor: Colors.black, label: "Home"),
                  const BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), backgroundColor: Colors.black, label: "Save"),
                  const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetRes.searchIcon)), backgroundColor: Colors.black, label: "Search"),
                  const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetRes.settingIcon)), backgroundColor: Colors.black, label: "Setting"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
