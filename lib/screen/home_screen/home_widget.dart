import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/home_screen/home_controller.dart';
import 'package:mahabharat/utils/asset_res.dart';

Widget homeMainContainer() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetRes.homeBgImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: Get.height * 0.060),
        homeFirstRow(),
        videosList(),
      ],
    ),
  );
}

Widget homeFirstRow() {
  return Row(
    children: [
      SizedBox(
        height: Get.height * 0.080,

        //===================================================>>>   Drawer <<<==============================

        child: Builder(
          builder: (context) => MaterialButton(
            child: const Image(
              image: AssetImage(AssetRes.dhanush),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      ///==================================== >>>   mahabharat  Title <<<  =============================

      SizedBox(
        height: Get.height * 0.130,
        child: const Image(
          image: AssetImage(AssetRes.mahabharatTitle),
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

//===================================================>>>   ListView Builder <<<==============================

Widget videosList() {
  return Expanded(
    child: GetBuilder<HomeController>(
      id: "listView",
      builder: (controller) => controller.videoData != null
          ? ListView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: controller.videoData!.data!.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: Get.width,
                    height: Get.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: GestureDetector(
                      onTap: () => controller.watchVideo(index, index),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.43,
                            child: CachedNetworkImage(
                              imageUrl: controller.videoData!.data![index].defaultPictureModel!.imageUrl!,
                              imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(Get.height * 0.015),
                                    topLeft: Radius.circular(Get.height * 0.015),
                                  ),
                                  image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
                                ),
                              ),
                              placeholder: (context, url) => Center(
                                child: SizedBox(
                                  height: Get.height * 0.040,
                                  child: const CircularProgressIndicator(color: Colors.white),
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: Get.height * 0.010, left: Get.width * 0.02, right: Get.width * 0.02),
                                    child: Text(
                                      softWrap: true,
                                      controller.videoData!.data![index].productName!,
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                /*        Padding(
                                  padding: EdgeInsets.only(bottom: Get.height * 0.005, right: Get.width * 0.010),
                                  child: InkWell(
                                    onTap: () => controller.onTapLike(index),
                                    child: Icon(controller.videoData![index].like == false ? Icons.bookmark_border : Icons.bookmark_outlined
                                        // color: Colors.red,
                                        ),
                                  ),
                                ),*/
                                Padding(
                                  padding: EdgeInsets.only(bottom: Get.height * 0.013, right: Get.width * 0.018),
                                  child: InkWell(
                                    onTap: () => controller.onTapBookMark(index),
                                    child: Icon(controller.videoData!.data![index].like == false ? Icons.bookmark_border : Icons.bookmark_outlined),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    ),
  );
}

//===================================================>>>   BottomNavigationBar   <<<==============================

Widget bottomNavBar() {
  return GetBuilder<HomeController>(
    builder: (controller) => BottomNavigationBar(
      showUnselectedLabels: true,
      backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
      unselectedItemColor: Colors.white.withOpacity(0.5),
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 7),
            child: const Icon(
              Icons.home,
              size: 20.0,
            ),
          ),
          label: 'Home',
          backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 7),
            child: const Icon(
              Icons.search,
              size: 20.0,
            ),
          ),
          label: 'Explore',
          backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 7),
            child: const Icon(
              Icons.location_history,
              size: 20.0,
            ),
          ),
          label: 'Places',
          backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 7),
            child: const Icon(
              Icons.settings,
              size: 20.0,
            ),
          ),
          label: 'Settings',
          backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
        ),
      ],
    ),
  );
}
