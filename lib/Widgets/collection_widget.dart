import 'package:flutter/material.dart';
import 'package:ui_project/models/HomeModel.dart';

import '../play_screens/collection_screen.dart';
import '../utils/app_asset.dart';

class CollectionWidget extends StatefulWidget {
  final HomeItemModel item;

  const CollectionWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<CollectionWidget> createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  @override
  Widget build(BuildContext context) {
    var data = widget.item.data;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 12, right: 5),
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    // horizontal: 8,
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          // data[index]['name'].toString(),
                          data[index].name.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CollectionScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          AppAsset.rightIcon,
                          height: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: data.length,
          ),
        ],
      ),
    );
  }
}

// Widget collection({required Map<String, dynamic> item}) {
//   var data = List<Map<String, dynamic>>.from(item['data']);
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Text(
//           item['title'].toString(),
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//             color: Colors.black,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         ListView.separated(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           separatorBuilder: (context, index) => SizedBox(
//             height: 1,
//             child: Container(
//               margin: const EdgeInsets.only(left: 12, right: 5),
//               color: Colors.grey.withOpacity(0.4),
//             ),
//           ),
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 5,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   // horizontal: 8,
//                   vertical: 15,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         data[index]['name'].toString(),
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const CollectionScreen(),
//                           ),
//                         );
//                       },
//                       child: Image.asset(
//                         AppAsset.rightIcon,
//                         height: 18,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           itemCount: data.length,
//         ),
//       ],
//     ),
//   );
// }
