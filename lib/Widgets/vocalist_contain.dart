import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class VocalistContain extends StatefulWidget {
  final HomeItemModel item;
  const VocalistContain({Key? key, required this.item}) : super(key: key);

  @override
  State<VocalistContain> createState() => _VocalistContainState();
}

class _VocalistContainState extends State<VocalistContain> {
  // List<Map<String, dynamic>> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // item = widget.item;
  }

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
              Container(
                // color: Colors.red,
                height: Get.width / 3 + 18 + 10,
                child: ListView.separated(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return Container(
                      // color: Colors.teal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                            child: Container(
                              width: Get.width / 3,
                              height: Get.width / 3,
                              color: Colors.indigo,
                              child: CachedNetworkImage(
                                imageUrl: listItem.profileImg.toString(),
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),

                          // Container(
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //       color: Colors.black,
                          //       width: 1,
                          //     ),
                          //     shape: BoxShape.circle,
                          //   ),
                          //   child: Image.asset(
                          //     AppAsset.music6,
                          //     fit: BoxFit.cover,
                          //     width: Get.width / 3.2,
                          //     height: Get.width / 3.2,
                          //   ),
                          // ),
                          // CircleAvatar(
                          //   backgroundColor: Colors.green,
                          //   maxRadius: 75,
                          //   child: ClipOval(
                          //     child: Image.asset(
                          //       AppAsset.music6,
                          //       fit: BoxFit.cover,
                          //       width: Get.width / 3.2,
                          //       height: Get.width / 3.2,
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: Get.width / 3.2,
                          //   height: Get.width / 3.2,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(),
                          //     color: Colors.green,
                          //   ),
                          //   child: Image.asset(
                          //     AppAsset.music6,
                          //     fit: BoxFit.cover,
                          //     width: Get.width / 3.2,
                          //     height: Get.width / 3.2,
                          //   ),
                          // ),

                          Text(listItem.name.toString()),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
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
