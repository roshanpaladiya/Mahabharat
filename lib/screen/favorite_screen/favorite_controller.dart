import 'package:get/get.dart';

class FavouriteController extends GetxController {
  Future<void> likeVideo() async {
    update(['likeVideo']);
  }

  // List favoriteEpisode = <ProductVideo>[];
  // bool favoriteTabIndex = false;
  // var numOfItems = 0;

  // void addFavItemToList(ProductVideo product) {
  //   favoriteEpisode.add(product);
  //   numOfItems++;
  // }
  /*
  void favEpiTab() {
    favoriteTabIndex = !favoriteTabIndex;
    update(['FavouriteController']);
  }

  void addToFavorite(String value) {
    favoriteEpisode.add(value);
  }

  void removeFromFavorite(String value) {
    favoriteEpisode.remove(value);
  }

  void bookmarkOnTap(index) {
    update();
    if (favoriteEpisode.contains(DefaultPictureModel().toString())) {
      removeFromFavorite(
          productVideoToJson(productVideoFromJson(toString()))[index]
              .toString());

      print('remove to bookmark');
    } else {
      addToFavorite(DefaultPictureModel().toString());
      print('add to bookmark');
    }
    print('bookmark articles==============${favoriteEpisode}');
  }*/
}
