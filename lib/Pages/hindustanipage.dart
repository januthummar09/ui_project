import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      },
      {
        "title": "Violin",
        'images': AppAsset.music6,
        'color': const Color(0xFF4d023f),
      },
      {
        "title": "Sitar",
        'images': AppAsset.music6,
        'color': const Color(0xFF2b1e24),
      },
      {
        "title": "Flute",
        'images': AppAsset.music6,
        'color': const Color(0xFF153b0b),
      },
      {
        "title": "Plano",
        'images': AppAsset.music6,
        'color': const Color(0xFF4f4248),
      },
      {
        "title": "Jal Tarang",
        'images': AppAsset.music6,
        'color': const Color(0xFF4d023f),
      },
      {
        "title": "Shehnai",
        'images': AppAsset.music6,
        'color': const Color(0xFF2b1e24),
      },
      {
        "title": "Tabla",
        'images': AppAsset.music6,
        'color': const Color(0xFF153b0b),
      },
      {
        "title": "Santoor",
        'images': AppAsset.music6,
        'color': const Color(0xFF2b1e24),
      },
      {
        "title": "harmonium",
        'images': AppAsset.music6,
        'color': const Color(0xFF153b0b),
      },
    ],
  };

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
              Row(
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

  Widget instrumental() {
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
              Row(
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
                popularRaaga(),
                instrumental(),
                Column(
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
                          Row(
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
                          SizedBox(
                            height: Get.height / 60,
                          ),
                          Container(
                            // padding: const EdgeInsets.only(
                            //   bottom: 40,
                            // ),
                            color: Colors.amber,
                            height: Get.height / 3,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: Colors.green,
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
                                      Spacer(),
                                      Text(
                                        "${playData['instrumentalData'][index]['title']}",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(),
                                        height: Get.height / 10,
                                        width: Get.width / 10,
                                        color: Colors.black,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
