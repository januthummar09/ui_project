import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

import '../utils/app_asset.dart';

class InstrumentalContain extends StatefulWidget {
  final HomeItemModel item;
  const InstrumentalContain({Key? key, required this.item}) : super(key: key);

  @override
  State<InstrumentalContain> createState() => _InstrumentalContainState();
}

class _InstrumentalContainState extends State<InstrumentalContain> {
  @override
  Widget build(BuildContext context) {
    // var data = widget.item.data;
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
                    Column(
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
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.item.subtitle ?? '',
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const SeeAllButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                // color: Colors.amber,
                height: Get.width / 2.1 + 18 + 5 + 10 + 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    var listData = data[index];
                    return Column(
                      children: [
                        Card(
                          color: Colors.red,
                          child: CachedNetworkImage(
                            imageUrl: listData.profileImg.toString(),
                            height: Get.width / 2.5,
                            width: Get.width / 2.5,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          listData.name.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppAsset.radioIcon,
                                height: 10,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Play Radio"),
                            ],
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

// Widget instrumental({required Map<String, dynamic> item}) {
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
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         item['title'].toString(),
//                         softWrap: false,
//                         overflow: TextOverflow.ellipsis,
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
//                         softWrap: false,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   const SeeAllButton()
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               padding: const EdgeInsets.only(bottom: 5),
//               // color: Colors.amber,
//               height: Get.width / 2.1 + 18 + 5 + 10 + 10,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Card(
//                         color: Colors.red,
//                         child: CachedNetworkImage(
//                           imageUrl: data[index]['profileImg'].toString(),
//                           height: Get.width / 2.5,
//                           width: Get.width / 2.5,
//                           fit: BoxFit.cover,
//                           placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
//                           errorWidget: (context, url, error) => const Icon(Icons.error),
//                         ),
//                       ),
//                       // const SizedBox(
//                       //   height: 5,
//                       // ),
//                       Text(
//                         '${data[index]['name']}',
//                         style: const TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 3),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(
//                             color: Colors.black,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Row(
//                           children: [
//                             Image.asset(
//                               AppAsset.radioIcon,
//                               height: 10,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             const Text("Play Radio"),
//                           ],
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
