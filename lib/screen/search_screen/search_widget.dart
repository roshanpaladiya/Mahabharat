//======================================  >>  searchMainColumn  <<  ==============================================
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/common/firstRowCommon.dart';

Widget searchMainColumn() {
  return Column(
    children: [
      SizedBox(
        height: Get.height * 0.060,
      ),
      firstRow(),
      // searchTextField(),
    ],
  );
}

//======================================  >>  searchTextField  <<  ==============================================

// Widget searchTextField() {
//   return Column(
//     children: [
//       GetBuilder<searchController>(
//         builder: (controller) => TextFieldSearch(
//           controller: controller.episode,
//           scrollbarDecoration: ScrollbarDecoration(
//             controller: ScrollController(),
//             theme: ScrollbarThemeData(
//               radius: const Radius.circular(30.0),
//               thickness: MaterialStateProperty.all(20.0),
//               trackColor: MaterialStateProperty.all(Colors.red),
//             ),
//           ),
//           future: () {
//             return const ListTile(
//               // leading: Image(image: AssetImage()),
//               title: Text('' // controller.videoData[index].productName!,
//                   ),
//             );
//           },
//           decoration: InputDecoration(
//             fillColor: Colors.white,
//             hintText: "Search Episode",
//             prefixIcon: const Icon(Icons.search),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           label: 'Search Episode',
//         ),
//       ),
//     ],
//   );
// }
