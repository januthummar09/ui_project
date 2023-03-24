import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/see_all_button.dart';
import 'package:ui_project/models/HomeModel.dart';

class RadioContain extends StatefulWidget {
  final HomeItemModel item;
  const RadioContain({Key? key, required this.item}) : super(key: key);

  @override
  State<RadioContain> createState() => _RadioContainState();
}

class _RadioContainState extends State<RadioContain> {
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
                // margin: EdgeInsets.symmetric(
                //   vertical: 0,
                // ).copyWith(
                //   bottom: 0,
                // ),
                // color: Colors.amber,
                height: Get.width / 2.5 + 18 + 16,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        child: Container(
                          // color: Colors.indigo,
                          width: Get.width / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CachedNetworkImage(
                                imageUrl: listItem.profileImg.toString(),
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
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        listItem.name.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        listItem.castTypeName.toString(),
                                        style: const TextStyle(
                                          fontSize: 14,
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
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: data.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
