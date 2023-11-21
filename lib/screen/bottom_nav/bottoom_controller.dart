import 'package:get/get.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_screen.dart';
import 'package:mahabharat/screen/home_screen/home_screen.dart';
import 'package:mahabharat/screen/search_screen/search_screen.dart';
import 'package:mahabharat/screen/setting_screen/setting_screen.dart';

class BottomNavController extends GetxController {
  static var selectedIndex = 0.obs;
  final screen = [
    const HomeScreen(),
    FavouriteScreen(),
    SearchScreen(),
    const SettingScreen()
  ];
/*
  void changeIndex(int index) {
    selectedIndex.value = index;
    update(["navigation"]);
  }*/
}
