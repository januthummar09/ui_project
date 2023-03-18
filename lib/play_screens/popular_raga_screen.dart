import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_asset.dart';

class PopularRaagaScreen extends StatefulWidget {
  const PopularRaagaScreen({Key? key}) : super(key: key);

  @override
  State<PopularRaagaScreen> createState() => _PopularRaagaScreenState();
}

class _PopularRaagaScreenState extends State<PopularRaagaScreen> {
  List name = ["gbg", "vvg", "vgvg", "vgvg", "vggb"];

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
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.close,
                            size: 35,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: Get.width / 25,
                        ),
                        const Text(
                          "Popular Raaga",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15).copyWith(top: 25),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        height: Get.height / 20,
                        width: Get.width / 2.5,
                        child: Row(
                          children: [
                            Image.asset(
                              AppAsset.playIcon,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            const Text(
                              "Listen Mix",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.filter_tilt_shift,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: playData["playList"].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  return Card(
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
