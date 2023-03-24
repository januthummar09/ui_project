import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/models/HomeModel.dart';
import 'package:ui_project/utils/app_asset.dart';

class TimeOfTheDayWidget extends StatelessWidget {
  final HomeItemModel item;
  const TimeOfTheDayWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = item.data[0];

    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: Get.height / 90,
                ),
                Text(
                  item.subtitle ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: data.img.toString(),
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ).copyWith(bottom: 15),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 9),
                  ),
                  child: const Text(
                    "play",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  AppAsset.whatsappIcon,
                  height: Get.height / 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
