import 'dart:convert';

import 'package:get/get.dart';
import 'package:mahabharat/screen/api.dart';
import 'package:mahabharat/screen/history_screen/videos_model.dart';
import 'package:mahabharat/services/pref_ser/pref_ser.dart';

import '../../utils/pref_res.dart';
import '../video_screen/video_screen.dart';

class HomeController extends GetxController {
  ProductVideo? videoData;
  List<VideoModel> bookId = [];

  @override
  void onInit() {
    // getBookList();
    getVideoData();
    super.onInit();
  }

  ///--------------------------------------------- get Video Data -----------------------------------------------///
  Future<void> getVideoData() async {
    videoData = await HomeScreenApi.getData();
    update(["listView"]);
  }

  ///-----------------------------------------------  getBook List ---------------------------------------------
  void getBookList() {
    String bookString = PrefService.getString(PrefRes.bookString);
    List bookData = jsonDecode(bookString);
    bookId.clear();
    for (var element in bookData) {
      bookId.add(VideoModel.fromJson(element));
    }
  }

  Future<void> onTapBookMark(int index) async {
    bool id = videoData!.data![index].like!;
    videoData!.data![index].like = !id;
    if (bookId.isNotEmpty) {
      if (videoData!.data![index].like!) {
        bookId.add(videoData!.data![index]);
      } else {
        bookId.removeWhere((element) => element.id == videoData!.data![index].id);
      }
    } else {
      bookId.add(videoData!.data![index]);
    }

    List<Map> bookData = List.generate(bookId.length, (index) => bookId[index].toJson());
    await PrefService.setValue(PrefRes.bookString, jsonEncode(bookData));
    print("==========$id");
    print("==========${videoData!.data![index].id}");
    update(["listView"]);
  }

  ///---------------------------------watch Video-------------------------------------///
  void watchVideo(int indexVideo, int indexTitle) {
    String url = videoData!.data![0].productVideoUrl!.first;
    print("url video========================================>$url");
    update(["listView"]);
    Get.to(() => VideoScreen(data: url, index: indexTitle));
  }
// }
}
