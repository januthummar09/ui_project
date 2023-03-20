import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../play_screens/popular_raga_screen.dart';
import '../utils/app_asset.dart';

class VocalistContain extends StatefulWidget {
  final Map<String, dynamic> item;
  const VocalistContain({Key? key, required this.item}) : super(key: key);

  @override
  State<VocalistContain> createState() => _VocalistContainState();
}

class _VocalistContainState extends State<VocalistContain> {
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
  };
  @override
  Widget build(BuildContext context) {
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
                    Text(
                      widget.item['title'],
                      style: const TextStyle(
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
              Container(
                // margin: EdgeInsets.symmetric(
                //   vertical: 0,
                // ).copyWith(
                //   bottom: 0,
                // ),
                // color: Colors.amber,
                height: Get.height / 5.5,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.teal,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(playData['instrumentalData'][index]['images']),
                              radius: 64,
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
                          const Spacer(),
                          Text(
                            "${playData['instrumentalData'][index]['title']}",
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
}
