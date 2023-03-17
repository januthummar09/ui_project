import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_asset.dart';

class HindustaniPage extends StatefulWidget {
  const HindustaniPage({Key? key}) : super(key: key);

  @override
  State<HindustaniPage> createState() => _HindustaniPageState();
}

class _HindustaniPageState extends State<HindustaniPage> {
  Widget searchBar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(75),
      child: TextField(
        cursorHeight: 0,
        cursorWidth: 0,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF5a5d61),
          border: InputBorder.none,
          prefix: Image.asset(
            AppAsset.searchIcon,
            height: Get.height / 45,
          ),
          hintText: "Search for classical music",
          hintStyle: const TextStyle(
            //           fontSize: 18,
            // color: Colors.amber.shade100,
            color: Color(0xFF919076),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
        ),
      ),
      // child: Container(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 25,
      //   ),
      //   height: Get.height / 15,
      //   width: double.infinity,
      //   color: const Color(0xFF5a5d61),
      //   child: Row(
      //     children: [
      //       Image.asset(
      //         AppAsset.searchIcon,
      //         height: Get.height / 30,
      //       ),
      //       SizedBox(
      //         width: Get.width / 30,
      //       ),
      //       const Text(
      //         "Search for classical music",
      //         style: TextStyle(
      //           fontSize: 18,
      //           // color: Colors.amber.shade100,
      //           color: Color(0xFF919076),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }

  Widget searchTextfild() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(75),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF5a5d61),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              Image.asset(
                AppAsset.searchIcon,
                height: Get.height / 45,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.amber.shade200,
                  ),
                  cursorHeight: 0,
                  cursorWidth: 0,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF5a5d61),
                    border: InputBorder.none,
                    hintText: "Search for classical music",
                    hintStyle: TextStyle(
                      color: Colors.amber.shade200,
                      fontSize: 18,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget panchamCard() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                searchTextfild(),
                SizedBox(
                  height: Get.height / 40,
                ),
                panchamCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
