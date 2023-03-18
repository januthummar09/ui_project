import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/utils/app_asset.dart';

class TimeOfTheDayWidget extends StatelessWidget {
  const TimeOfTheDayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const Text(
                  "Time of the day",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: Get.height / 90,
                ),
                const Text(
                  "Pancham Prahar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height / 5,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset(
              AppAsset.staticImage,
              fit: BoxFit.cover,
            ),
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
