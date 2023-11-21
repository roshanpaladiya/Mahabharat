import 'package:flick_video_player/flick_video_player.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  String? videoUrl;
  int? indexTitle;
  bool inLoading = false;
  VideoController(this.videoUrl, this.indexTitle);
  FlickManager? flickManager;

  @override
  void onInit() {
    onPlay(videoUrl ?? "");
    super.onInit();
  }

  ///------------------------------------------------------Home Screen Video Play-----------------------------------///
  void onPlay(String index) {
    inLoading = true;
    update(["videoScreen"]);
    flickManager = FlickManager(
      autoPlay: true,
      autoInitialize: true,
      videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(index)),
    );
    print("index ======================================>$index");
    inLoading = false;
    update(["videoScreen"]);
  }

  ///--------------------------------------------------------------Play List Video---------------------------------///
  void onTapVideoPlayList(String videosUrl, int index) {
    indexTitle = index;
    flickManager!.handleChangeVideo(
      videoChangeDuration: const Duration(microseconds: 100),
      VideoPlayerController.networkUrl(Uri.parse(videosUrl)),
    );
    update(["video_player"]);
  }
}
