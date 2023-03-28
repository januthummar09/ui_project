import 'dart:math';

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
    final List<Color> colors = [
      const Color(0xFFdfdefc),
      const Color(0xFFf6e3fc),
      const Color(0xFFf0ebed),
      const Color(0xFFf6e3fc),
    ];

    final List<Color> textColors = [
      const Color(0xFF020b3d),
      const Color(0xFFb31044),
      const Color(0xFF595254),
      const Color(0xFFb31044),
    ];

    var random = Random().nextInt(3);
    var color = colors[random];
    var textColor = textColors[random];

    // var data = widget.item.data;
    var data = widget.item.data;

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
                          widget.item.subtitle.toString(),
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
                    // debugPrint('Popuar Raaga ====-------------=======>${widget.item.data[3].chId}');
                    // debugPrint('Popuar Raaga ====-------------=======>${data[3].chId}');
                    var listData = data[index];
                    // debugPrint('Popuar Raaga ===========>$listData');

                    return PopularRaagaWidget(item: listData);

                    // SizedBox(
                    //   width: Get.width / 1.1,
                    //   child: Card(
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(15),
                    //     ),
                    //     color: color,
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(
                    //         horizontal: 15,
                    //         vertical: 25,
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             listData.name.toString(),
                    //             style: TextStyle(
                    //               fontWeight: FontWeight.w900,
                    //               fontSize: 25,
                    //               color: textColor,
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: Get.height / 80,
                    //           ),
                    //           Text(
                    //             listData.desc.toString(),
                    //             maxLines: 2,
                    //             overflow: TextOverflow.ellipsis,
                    //             style: TextStyle(
                    //               fontSize: 15,
                    //               color: textColor,
                    //             ),
                    //           ),
                    //           const Spacer(),
                    //           Row(
                    //             children: [
                    //               Image.asset(
                    //                 AppAsset.whatsappIcon,
                    //                 height: Get.height / 30,
                    //                 color: textColor,
                    //               ),
                    //               const Spacer(),
                    //               ClipRRect(
                    //                 borderRadius: BorderRadius.circular(22),
                    //                 child: Container(
                    //                   color: Colors.white,
                    //                   height: 40,
                    //                   padding: const EdgeInsets.only(left: 0, right: 10, top: 5, bottom: 5),
                    //                   child: Row(
                    //                     children: [
                    //                       CircleAvatar(
                    //                         backgroundColor: textColor,
                    //                         child: Padding(
                    //                           padding: const EdgeInsets.all(10),
                    //                           child: Image.asset(
                    //                             AppAsset.playIcon,
                    //                             color: Colors.white,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         'Listen',
                    //                         style: TextStyle(
                    //                           fontSize: 18,
                    //                           fontWeight: FontWeight.w600,
                    //                           color: textColor,
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // );
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
