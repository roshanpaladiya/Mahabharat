import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/favorite_screen/favorite_screen.dart';
import 'package:mahabharat/screen/search_screen/search_screen.dart';
import 'package:mahabharat/screen/setting_screen/setting_screen.dart';

class drawerController extends GetxController {
  void drawerToVideos() {
    Get.back();
    update(['Video']);
  }

  void drawerToFavorite() {
    Get.to(() => FavouriteScreen());
    update(['Favorite']);
  }

  void drawerToSearch() {
    Get.to(() => SearchScreen());
    update(['Search']);
  }

  void drawerToSetting() {
    Get.to(() => const SettingScreen());
    update(['Setting']);
  }

  Future<void> share() async {
    await FlutterShare.share(
      title: 'In-ShortApp',
      linkUrl: 'app link attached',
    );
  }

/*Future<void> share() async {
    await FlutterShare.share(
      title: 'In-ShortApp',
      linkUrl: 'app link attached',
    );
  }*/
}
