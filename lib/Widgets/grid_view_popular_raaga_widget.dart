import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class GridViewPopularRaagaWidget extends StatefulWidget {
  final HomeItemModel item;
  const GridViewPopularRaagaWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<GridViewPopularRaagaWidget> createState() => _GridViewPopularRaagaWidgetState();
}

class _GridViewPopularRaagaWidgetState extends State<GridViewPopularRaagaWidget> {
  @override
  Widget build(BuildContext context) {
    var data = widget.item.data;

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
                    SizedBox(
                      width: Get.width / 2,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.title,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
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
                // padding: const EdgeInsets.symmetric(
                //   vertical: 20,
                // ).copyWith(
                //   top: 0,
                // ),
                // color: Colors.amber,
                height: Get.width / 2.5 * 2 + 17 + 18,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 120,
                  ),
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 5).copyWith(top: 0),
                      // color: Colors.pink,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: listItem.imageUrl.toString(),
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    listItem.albumTitle.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    listItem.albumTitleEn.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget popularCombo({required Map<String, dynamic> item}) {
//   var data = List<Map<String, dynamic>>.from(item['data']);
//
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
//                   SizedBox(
//                     width: Get.width / 2,
//                     // color: Colors.amber,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           item['title'].toString(),
//                           softWrap: false,
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
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
//               // padding: const EdgeInsets.symmetric(
//               //   vertical: 20,
//               // ).copyWith(
//               //   top: 0,
//               // ),
//               // color: Colors.amber,
//               height: Get.width / 2.5 * 2 + 17 + 18,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   crossAxisCount: 2,
//                   mainAxisExtent: 120,
//                 ),
//                 itemBuilder: (context, index) {
//                   var listItem = data[index];
//
//                   return Container(
//                     // color: Colors.red,
//                     padding: const EdgeInsets.symmetric(vertical: 5).copyWith(top: 0),
//                     // color: Colors.pink,
//                     child: Column(
//                       children: [
//                         CachedNetworkImage(
//                           imageUrl: listItem['image_url'].toString(),
//                           fit: BoxFit.cover,
//                           placeholder: (context, url) => const CircularProgressIndicator(),
//                           errorWidget: (context, url, error) => const Icon(Icons.error),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 5,
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Text(
//                                   listItem['album_title'].toString(),
//                                   overflow: TextOverflow.ellipsis,
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 Text(
//                                   listItem['album_title_en'].toString(),
//                                   overflow: TextOverflow.ellipsis,
//                                   style: const TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
