import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class TalkWidget extends StatefulWidget {
  final HomeItemModel item;
  const TalkWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<TalkWidget> createState() => _TalkWidgetState();
}

class _TalkWidgetState extends State<TalkWidget> {
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
                    SizedBox(
                      width: Get.width / 30,
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
                        const SizedBox(
                          height: 10,
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
                // color: Colors.pink,

                height: Get.width / 2.1,
                // width: Get.width / 1.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    var listData = data[index];
                    return SizedBox(
                      width: Get.width / 1.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.green,
                                  child: CachedNetworkImage(
                                    imageUrl: listData.img.toString(),
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    listData.title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget talk({required Map<String, dynamic> item}) {
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
//                   SizedBox(
//                     width: Get.width / 30,
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
//                       const SizedBox(
//                         height: 10,
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
//               // color: Colors.pink,
//
//               height: Get.width / 2.1,
//               // width: Get.width / 1.1,
//               child: ListView.separated(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return SizedBox(
//                     width: Get.width / 1.5,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Card(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 width: double.infinity,
//                                 color: Colors.green,
//                                 child: CachedNetworkImage(
//                                   imageUrl: data[index]['img'].toString(),
//                                   fit: BoxFit.cover,
//                                   placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
//                                   errorWidget: (context, url, error) => const Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 10,
//                                 vertical: 10,
//                               ),
//                               child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   data[index]['title'].toString(),
//                                   overflow: TextOverflow.ellipsis,
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (context, index) => SizedBox(
//                   width: Get.width / 30,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
