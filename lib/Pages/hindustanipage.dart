import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Widgets/radio_contain.dart';
import 'package:ui_project/Widgets/search_bar.dart';
import 'package:ui_project/Widgets/time_of_the_day.dart';

import '../Widgets/insrumentalists_contain.dart';
import '../play_screens/collection_screen.dart';
import '../play_screens/popular_raga_screen.dart';
import '../utils/app_asset.dart';

class HindustaniPage extends StatefulWidget {
  const HindustaniPage({Key? key}) : super(key: key);

  @override
  State<HindustaniPage> createState() => _HindustaniPageState();
}

class _HindustaniPageState extends State<HindustaniPage> {
  Map playData = {
    "playList": [
      {
        "title": "Jaijaiwanti",
        "discreption": "Jaijaiwanti or Jaijaiwanti is a hindustani classical raga belonging to khamaj thaat.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFdfdefc),
        "textColor": const Color(0xFF020b3d),
      },
      {
        "title": "Tilak Kamod",
        "discreption": "Tilak Kamod is a Hindustani classical raga.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFf6e3fc),
        "textColor": const Color(0xFFb31044),
      },
      {
        "title": "Darbari",
        "discreption": "Darbari Kanada, or simply Raga Darbari, (pronounced Darbari kanada) is a raga in the kanada family",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFf0ebed),
        "textColor": const Color(0xFF595254),
      },
      {
        "title": "Abhogi",
        "discreption": "Jaijaiwanti or Jaijaiwanti is a hindustani classical raga belonging to khamaj thaat.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFf6e3fc),
        "textColor": const Color(0xFFb31044),
      },
      {
        "title": "Multani",
        "discreption": "Jaijaiwanti or Jaijaiwanti is a hindustani classical raga belonging to khamaj thaat.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFdfdefc),
        "textColor": const Color(0xFF020b3d),
      },
      {
        "title": "Madhuwanti",
        "discreption": "Jaijaiwanti or Jaijaiwanti is a hindustani classical raga belonging to khamaj thaat.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFf6e3fc),
        "textColor": const Color(0xFFb31044),
      },
      {
        "title": "shankara",
        "discreption": "Jaijaiwanti or Jaijaiwanti is a hindustani classical raga belonging to khamaj thaat.",
        "whatsappIcon": AppAsset.whatsappIcon,
        "playIcon": AppAsset.playIcon,
        "buttonName": "Listen",
        "color": const Color(0xFFf0ebed),
        "textColor": const Color(0xFF595254),
      },
    ],
    "listensData": [
      {
        'images': AppAsset.music6,
        'title': "All",
      },
      {
        'images': AppAsset.music8,
        'title': "Wind",
      },
      {
        'images': AppAsset.music10,
        'title': "Strings",
      },
      {
        'images': AppAsset.music3,
        'title': "Percussion",
      },
    ],
    "instrumentalData": [
      {
        "title": "Sarod",
        'images': AppAsset.music6,
        'color': const Color(0xFF4f4248),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Violin",
        'images': AppAsset.music2,
        'color': const Color(0xFF4d023f),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Sitar",
        'images': AppAsset.music3,
        'color': const Color(0xFF2b1e24),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Flute",
        'images': AppAsset.music8,
        'color': const Color(0xFF153b0b),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Plano",
        'images': AppAsset.music5,
        'color': const Color(0xFF4f4248),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Jal Tarang",
        'images': AppAsset.music1,
        'color': const Color(0xFF4d023f),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Shehnai",
        'images': AppAsset.music4,
        'color': const Color(0xFF2b1e24),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Tabla",
        'images': AppAsset.music3,
        'color': const Color(0xFF153b0b),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "Santoor",
        'images': AppAsset.music2,
        'color': const Color(0xFF2b1e24),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
      {
        "title": "harmonium",
        'images': AppAsset.music7,
        'color': const Color(0xFF153b0b),
        "gazal": AppAsset.gazalImage,
        "gazal2": AppAsset.gazal2Image,
      },
    ],
    "collection": [
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
      {
        'title': "Best of pt. Bhimsen josi",
        'icon': AppAsset.rightIcon,
      },
    ],
  };

  Widget playContain() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      // height: Get.height / 10,
      width: double.infinity,
      // color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: Get.height / 14,
              width: Get.height / 14,
              color: Colors.amber,
              child: Image.asset(
                AppAsset.playIcon,
              ),
            ),
          ),
          // Center(
          //   child: CircleAvatar(
          //     maxRadius: 35,
          //     backgroundColor: Colors.amber,
          //     child: Image.asset(
          //       AppAsset.playIcon,
          //       height: Get.height / 30,
          //     ),
          //   ),
          // ),

          SizedBox(
            width: Get.width / 30,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Popular Raaga",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: Get.height / 100,
              ),
              const Text(
                "Popular Raaga",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              color: Colors.amber,
              child: const Text(
                "see All",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget popularRaaga() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 50,
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
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: Get.height / 14,
                        width: Get.height / 14,
                        color: Colors.amber,
                        child: Image.asset(
                          AppAsset.playIcon,
                        ),
                      ),
                    ),
                    // Center(
                    //   child: CircleAvatar(
                    //     maxRadius: 35,
                    //     backgroundColor: Colors.amber,
                    //     child: Image.asset(
                    //       AppAsset.playIcon,
                    //       height: Get.height / 30,
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      width: Get.width / 30,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Popular Raaga",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        const Text(
                          "Popular Raaga",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularRaagaScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          color: Colors.amber,
                          child: const Text(
                            "see All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              SizedBox(
                height: Get.height / 4,
                // width: Get.width / 1.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: Get.width / 1.1,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          //<-- SEE HERE
                        ),
                        color: playData["playList"][index]['color'],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${playData['playList'][index]['title']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  color: playData["playList"][index]['textColor'],
                                ),
                              ),
                              SizedBox(
                                height: Get.height / 80,
                              ),
                              Text(
                                "${playData['playList'][index]['discreption']}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: playData["playList"][index]['textColor'],
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Image.asset(
                                    AppAsset.whatsappIcon,
                                    height: Get.height / 30,
                                    color: playData["playList"][index]['textColor'],
                                  ),
                                  const Spacer(),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Container(
                                      height: Get.height / 20,
                                      width: Get.width / 3.2,
                                      color: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 3,
                                        vertical: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: playData["playList"][index]['textColor'],
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Image.asset(AppAsset.playIcon, color: Colors.white),
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width / 30,
                                          ),
                                          Text(
                                            "${playData['playList'][index]['buttonName']}",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: playData["playList"][index]['textColor'],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
                  itemCount: playData['playList'].length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget mustListen() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 50,
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
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: Get.height / 14,
                        width: Get.height / 14,
                        color: Colors.amber,
                        child: Image.asset(
                          AppAsset.playIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 30,
                    ),
                    const Text(
                      "Must Listens",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularRaagaScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          color: Colors.amber,
                          child: const Text(
                            "see All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              SizedBox(
                height: Get.height / 6,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Material(
                          elevation: 3,
                          color: Colors.grey,
                          shape: const CircleBorder(),
                          child: ClipOval(
                            child: SizedBox(
                              height: Get.width / 3.5,
                              width: Get.width / 3.5,
                              child: Image.asset(
                                playData['listensData'][index]['images'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "${playData['listensData'][index]['title']}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: playData['listensData'].length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget popularCombo() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 40,
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
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: Get.height / 14,
                        width: Get.height / 14,
                        color: Colors.amber,
                        child: Image.asset(
                          AppAsset.playIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 30,
                    ),
                    SizedBox(
                      width: Get.width / 2,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Popular",
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularRaagaScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          color: Colors.amber,
                          child: const Text(
                            "see All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              Container(
                // padding: const EdgeInsets.symmetric(
                //   vertical: 20,
                // ).copyWith(
                //   top: 0,
                // ),
                // color: Colors.amber,
                height: Get.height / 2.8,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: Get.width / 3.5,
                                      color: Colors.pink,
                                      child: Image.asset(
                                        playData['instrumentalData'][index]['gazal2'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 5,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${playData['instrumentalData'][index]['title']}",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "${playData['instrumentalData'][index]['title']}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: Get.width / 3.5,
                                      color: Colors.pink,
                                      child: Image.asset(
                                        playData['instrumentalData'][index]['gazal2'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${playData['instrumentalData'][index]['title']}",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "${playData['instrumentalData'][index]['title']}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: playData['instrumentalData'].length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget instrumental() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 40,
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
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: Get.height / 14,
                        width: Get.height / 14,
                        color: Colors.amber,
                        child: Image.asset(
                          AppAsset.playIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 30,
                    ),
                    SizedBox(
                      width: Get.width / 2,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Instrumental",
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: Get.height / 80,
                          ),
                          const Text(
                            "Daily prayers for a happy living",
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularRaagaScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          color: Colors.amber,
                          child: const Text(
                            "see All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ).copyWith(
                  top: 0,
                ),
                // color: Colors.amber,
                height: Get.height / 3.5,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.green,
                      child: Column(
                        children: [
                          Container(
                            // color: Colors.pink,
                            height: Get.width / 2.5,
                            width: Get.width / 2.5,
                            child: Card(
                              color: playData['instrumentalData'][index]['color'],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Material(
                                    elevation: 3,
                                    color: Colors.grey,
                                    shape: const CircleBorder(),
                                    child: ClipOval(
                                      child: SizedBox(
                                        height: Get.width / 4,
                                        width: Get.width / 4,
                                        child: Image.asset(
                                          playData['instrumentalData'][index]['images'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${playData['instrumentalData'][index]['title']}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "${playData['instrumentalData'][index]['title']}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 2,
                            ),
                            margin: const EdgeInsets.symmetric(),
                            height: Get.height / 30,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppAsset.radioIcon,
                                    height: Get.height / 60,
                                  ),
                                  SizedBox(
                                    width: Get.width / 50,
                                  ),
                                  const Text("Play Radio"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: playData['instrumentalData'].length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget talk() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 40,
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
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: Get.height / 14,
                        width: Get.height / 14,
                        color: Colors.amber,
                        child: Image.asset(
                          AppAsset.playIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Talk",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        const Text(
                          "Popular sangeet podcasts",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularRaagaScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                          color: Colors.amber,
                          child: const Text(
                            "see All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              SizedBox(
                height: Get.height / 3.5,
                // width: Get.width / 1.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: Get.width / 1.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.green,
                                  child: Image.asset(
                                    playData['instrumentalData'][index]['gazal'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${playData["playList"][index]['title']}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: playData['playList'].length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget collection() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(
        height: Get.height / 25,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: Container(
            // color: Colors.teal,
            child: Row(
              children: [
                Text(
                  "${playData['collection'][index]['title']}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
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
                    height: Get.height / 35,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: playData['collection'].length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBar(),
                SizedBox(
                  height: Get.height / 40,
                ),
                const TimeOfTheDayWidget(),
                popularRaaga(),
                mustListen(),
                instrumental(),
                talk(),
                popularCombo(),
                const RadioContain(
                  title: "Radio",
                ),
                const InsrumentalistContain(
                  title: "Insrumentalist",
                ),
                const InsrumentalistContain(
                  title: "Insrumentalist",
                ),
                SizedBox(
                  height: Get.height / 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    "Collection",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                collection(),
                SizedBox(
                  height: Get.height / 30,
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
                  child: Container(
                    height: Get.height / 18,
                    color: Colors.amber,
                    child: const Center(
                      child: Text(
                        "See More Collection",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
