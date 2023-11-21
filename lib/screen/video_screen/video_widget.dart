import 'package:cached_network_image/cached_network_image.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/home_screen/home_controller.dart';
import 'package:mahabharat/screen/video_screen/video_controller.dart';

Widget videoScreenBody() {
  double height = Get.height;
  double width = Get.width;
  return GetBuilder<VideoController>(
    id: "video_player",
    builder: (controller) {
      return controller.inLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                ///----------------------------------------------------    play video   -----------------------------------------------///
                GetBuilder<VideoController>(
                  id: "video_player",
                  builder: (controller) => Expanded(
                    flex: 3,
                    child: FlickVideoPlayer(
                      flickVideoWithControls: FlickVideoWithControls(
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        controls: FlickPortraitControls(
                          iconSize: height * 0.030,
                          progressBarSettings: FlickProgressBarSettings(
                            height: 2,
                            playedColor: Colors.red,
                            handleColor: Colors.red,
                            handleRadius: 6,
                          ),
                        ),
                        videoFit: BoxFit.cover,
                      ),
                      flickManager: controller.flickManager!,
                    ),
                  ),
                ),

                ///------------------------------------------------------   Video Screen Title   ----------------------------------------///
                Padding(
                  padding: EdgeInsets.all(height * 0.015),
                  child: GetBuilder<HomeController>(
                    builder: (controllerHome) {
                      return Text(
                        // controllerHome.videoData![controller.indexTitle!].message!,
                        // imageUrl: controller.videoData!.data![index].defaultPictureModel!.imageUrl!,
                        controllerHome.videoData!.data![controller.indexTitle!]
                            .defaultPictureModel!.title!,
                        style: TextStyle(
                            fontSize: height * 0.017,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                ),

                ///--------------------------------------------------------------   Video Screen PlayList   ---------------------------------------///
                GetBuilder<HomeController>(
                  builder: (controllerHome) {
                    return Expanded(
                      flex: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(30),
                            topEnd: Radius.circular(30),
                          ),
                        ),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: controllerHome.videoData!.data!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // controller.onTapVideoPlayList(controllerHome.videoData![index].productVideoUrl![0], index);
                                // imageUrl: controller.videoData!.data![index].defaultPictureModel!.imageUrl!,
                                controller.onTapVideoPlayList(
                                    controllerHome.videoData!.data![index]
                                        .productVideoUrl![0],
                                    index);
                              },

                              ///-----------------------------------------------------  Full card  -----------------------------------------------///
                              child: Card(
                                margin: EdgeInsets.only(
                                    top: height * 0.015,
                                    left: width * 0.030,
                                    right: width * 0.030),
                                shape: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white70),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(height * 0.010),
                                  ),
                                ),
                                //  elevation: 20,
                                color: Colors.white,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ///----------------------------------  Thum image  -------------------------------------------///
                                    SizedBox(
                                      height: height * 0.16,
                                      width: width * 0.48,
                                      child: CachedNetworkImage(
                                        imageUrl: controllerHome
                                            .videoData!
                                            .data![index]
                                            .defaultPictureModel!
                                            .imageUrl!,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  height * 0.015),
                                              topLeft: Radius.circular(
                                                  height * 0.015),
                                            ),
                                            image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                        placeholder: (context, url) => Center(
                                          child: SizedBox(
                                            height: height * 0.040,
                                            child:
                                                const CircularProgressIndicator(
                                              color: Colors.black12,
                                            ),
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),

                                    ///--------------------------------------  title  -------------------------------------------------///
                                    Expanded(
                                      child: Container(
                                        height: height * 0.16,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight:
                                                Radius.circular(height * 0.015),
                                            bottomRight:
                                                Radius.circular(height * 0.015),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: width * 0.02,
                                              top: height * 0.0075,
                                              right: width * 0.009),
                                          child: Text(
                                            controllerHome.videoData!
                                                .data![index].productName
                                                .toString(),
                                            style: const TextStyle(
                                                // fontSize: height * 0.021,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                )
              ],
            );
    },
  );
}
