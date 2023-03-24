import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/popular_raaga_widget.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class PopularRaagaContainWidget extends StatefulWidget {
  final HomeItemModel item;
  const PopularRaagaContainWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<PopularRaagaContainWidget> createState() => _PopularRaagaContainWidgetState();
}

class _PopularRaagaContainWidgetState extends State<PopularRaagaContainWidget> {
  @override
  Widget build(BuildContext context) {
    // var data = widget.item.data;
    List data = widget.item.data;

    debugPrint('popular raaga =>${data.first}');

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(bottom: 0),
          // height: Get.height / 10,
          width: double.infinity,
          // color: Colors.pink,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          widget.item.subtitle ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const SeeAllButton(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.indigo,
                height: (Get.width / 1.1) * 0.55,
                // width: Get.width / 1.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    // Map<String, dynamic> listItem = data[index];
                    debugPrint('Popuar Raaga =>${data[index]}');
                    var listData = data[index];

                    return PopularRaagaWidget(item: listData);
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget popularRaaga({required Map<String, dynamic> item}) {
//   var data = List<Map<String, dynamic>>.from(item['data']);
//   return Column(
//     children: [
//       Container(
//         margin: const EdgeInsets.symmetric(
//           vertical: 15,
//         ).copyWith(bottom: 0),
//         // height: Get.height / 10,
//         width: double.infinity,
//         // color: Colors.pink,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 5,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const PlayCircleView(),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         item['title'].toString(),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(
//                         height: Get.height / 80,
//                       ),
//                       Text(
//                         item['subtitle'].toString(),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   const SeeAllButton(),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               // color: Colors.indigo,
//               height: (Get.width / 1.1) * 0.55,
//               // width: Get.width / 1.1,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                 itemBuilder: ((context, index) {
//                   Map<String, dynamic> listItem = data[index];
//
//                   return PopularRaagaWidget(item: listItem);
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
