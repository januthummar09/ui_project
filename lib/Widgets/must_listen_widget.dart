import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class MustListenWidget extends StatefulWidget {
  final HomeItemModel item;
  const MustListenWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<MustListenWidget> createState() => _MustListenWidgetState();
}

class _MustListenWidgetState extends State<MustListenWidget> {
  @override
  Widget build(BuildContext context) {
    var data = widget.item.data;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15).copyWith(bottom: 0),
          // height: Get.height / 10,
          width: double.infinity,
          // color: Colors.pink,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
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
              SizedBox(
                height: Get.width / 3 + 18,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    // Map<String, dynamic> listensItem = data[index];

                    var listData = data[index];

                    return Column(
                      children: [
                        Material(
                          elevation: 3,
                          color: Colors.grey,
                          shape: const CircleBorder(),
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              height: (Get.width / 3) - 18 + 5,
                              width: (Get.width / 3) - 18 + 5,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CachedNetworkImage(
                                  imageUrl: listData.profileImg.toString(),
                                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          listData.listenname.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
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

// Widget mustListen({required Map<String, dynamic> item}) {
//   var listenData = List<Map<String, dynamic>>.from(item['data']);
//
//   return Column(
//     children: [
//       Container(
//         margin: const EdgeInsets.symmetric(vertical: 15).copyWith(bottom: 0),
//         // height: Get.height / 10,
//         width: double.infinity,
//         // color: Colors.pink,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const PlayCircleView(),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     item['title'],
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.black,
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
//             SizedBox(
//               height: Get.width / 3 + 18,
//               child: ListView.separated(
//                 separatorBuilder: (context, index) => const SizedBox(
//                   width: 10,
//                 ),
//                 scrollDirection: Axis.horizontal,
//                 itemCount: listenData.length,
//                 itemBuilder: (context, index) {
//                   // Map<String, dynamic> listensItem = data[index];
//
//                   return Column(
//                     children: [
//                       Material(
//                         elevation: 3,
//                         color: Colors.grey,
//                         shape: const CircleBorder(),
//                         child: ClipOval(
//                           child: Container(
//                             color: Colors.white,
//                             height: (Get.width / 3) - 18 + 5,
//                             width: (Get.width / 3) - 18 + 5,
//                             child: Padding(
//                               padding: const EdgeInsets.all(5.0),
//                               child: CachedNetworkImage(
//                                 imageUrl: listenData[index]['profileImg'].toString(),
//                                 placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
//                                 errorWidget: (context, url, error) => const Icon(Icons.error),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       Text(
//                         listenData[index]['listenname'].toString(),
//                         style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
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
