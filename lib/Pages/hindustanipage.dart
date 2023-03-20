import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Controllers/hindustani_controller.dart';
import 'package:ui_project/Widgets/popular_raaga_widget.dart';
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
  final HindustaniController _controller = Get.put(HindustaniController());

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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

  Widget popularRaaga({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);
    // debugPrint('Network Image ==>${data['img'].toString()}');
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item['title'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          item['subtitle'].toString(),
                          style: const TextStyle(
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    Map<String, dynamic> listItem = data[index];

                    return PopularRaagaWidget(item: listItem);
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget mustListen({required Map<String, dynamic> item}) {
    var listenData = List<Map<String, dynamic>>.from(item['data']);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50).copyWith(bottom: 0),
          // height: Get.height / 10,
          width: double.infinity,
          // color: Colors.pink,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    Text(
                      item['title'],
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
              SizedBox(
                height: Get.height / 6,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: listenData.length,
                  itemBuilder: (context, index) {
                    // Map<String, dynamic> listensItem = data[index];

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
                              child: CachedNetworkImage(
                                imageUrl: listenData[index]['img'].toString(),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          listenData[index]['listenname'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget popularCombo({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);

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
                          Text(
                            item['title'].toString(),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
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
                height: Get.height / 2.4,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 40,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          // color: Colors.pink,
                          height: Get.height / 4.9,
                          width: Get.width / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: Get.height / 7.5,
                                    color: Colors.indigo,
                                    child: CachedNetworkImage(
                                      imageUrl: data[index]['image_url'].toString(),
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          data[index]['album_title'].toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            // fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['music'].toString(),
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
                        const Spacer(),
                        Container(
                          // color: Colors.pink,
                          height: Get.height / 4.9,
                          width: Get.width / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Card(
                              // color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: Get.height / 7.5,
                                    color: Colors.indigo,
                                    child: CachedNetworkImage(
                                      imageUrl: data[index]['image_url'].toString(),
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          data[index]['album_title'].toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            // fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['music'].toString(),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget instrumental({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);

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
                          Text(
                            item['title'].toString(),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: Get.height / 80,
                          ),
                          Text(
                            item['subtitle'].toString(),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // separatorBuilder: (context, index) => SizedBox(
                  //   width: Get.width / 30,
                  // ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.green,
                      child: Column(
                        children: [
                          SizedBox(
                            // color: Colors.pink,
                            height: Get.width / 2.5,
                            width: Get.width / 2.5,
                            child: Card(
                              // color: playData['instrumentalData'][index]['color'],
                              color: Colors.red,
                              child: CachedNetworkImage(
                                imageUrl: data[index]['profileImg'].toString(),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${data[index]['name']}',
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget talk({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);
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
                        Text(
                          item['title'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          item['subtitle'].toString(),
                          style: const TextStyle(
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
                                  child: CachedNetworkImage(
                                    imageUrl: data[index]['img'].toString(),
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
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
                                    data[index]['title'].toString(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Collection",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
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
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
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
                          height: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: playData['collection'].length,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HindustaniController>(
        builder: (controller) {
          if (controller.isLoading.value == true) {
            return const CircularProgressIndicator(
              color: Colors.blue,
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                var item = controller.data[index];

                String categoryID = item['categoryid'].toString();
                String categoryType = item['categorytype'].toString();

                if (categoryID == 'search' && categoryType == 'search') {
                  return const SearchBar();
                } else if (categoryID == 'hourofday' && categoryType == 'hourofday') {
                  return TimeOfTheDayWidget(
                    item: item,
                  );
                } else if (categoryID == 'popularraagas' && categoryType == 'popularraagas') {
                  return popularRaaga(
                    item: item,
                  );
                }
                // else if (categoryID == 'mustlisten' && categoryType == 'mustlisten') {
                //   return mustListen(
                //     item: item,
                //   );
                // }
                else if (categoryID == 'instrumental' && categoryType == 'artists') {
                  return instrumental(item: item);
                } else if (categoryID == 'talk' && categoryType == 'talk') {
                  return talk(item: item);
                } else if (categoryID == 'mostpopular' && categoryType == 'album') {
                  return popularCombo(
                    item: item,
                  );
                } else if (categoryID == 'radio' && categoryType == 'radio') {
                  return RadioContain(
                    item: item,
                  );
                } else if (categoryID == 'vocalist' && categoryType == 'artists') {
                  return InsrumentalistContain(
                    item: item,
                  );
                } else if (categoryID == 'instrumentalists' && categoryType == 'artists') {
                  return InsrumentalistContain(
                    item: item,
                  );
                } else if (categoryID == 'collections' && categoryType == 'collections') {
                  return collection();
                } else {
                  return const SizedBox();
                }

                return Container();
              },
            );
            // return ListView(
            //   padding: const EdgeInsets.symmetric(horizontal: 5),
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 5,
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const SearchBar(),
            //           SizedBox(
            //             height: Get.height / 40,
            //           ),
            //           const TimeOfTheDayWidget(),
            //           popularRaaga(),
            //           mustListen(),
            //           instrumental(),
            //           talk(),
            //           popularCombo(),
            //           const RadioContain(
            //             title: "Radio",
            //           ),
            //           const InsrumentalistContain(
            //             title: "Insrumentalist",
            //           ),
            //           const InsrumentalistContain(
            //             title: "Insrumentalist",
            //           ),
            //           SizedBox(
            //             height: Get.height / 20,
            //           ),
            //           const Padding(
            //             padding: EdgeInsets.symmetric(
            //               horizontal: 5,
            //             ),
            //             child: Text(
            //               "Collection",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 24,
            //                 color: Colors.black,
            //               ),
            //             ),
            //           ),
            //           SizedBox(
            //             height: Get.height / 30,
            //           ),
            //           collection(),
            //           SizedBox(
            //             height: Get.height / 30,
            //           ),
            //           InkWell(
            //             onTap: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => const CollectionScreen(),
            //                 ),
            //               );
            //             },
            //             child: Container(
            //               height: Get.height / 18,
            //               color: Colors.amber,
            //               child: const Center(
            //                 child: Text(
            //                   "See More Collection",
            //                   style: TextStyle(
            //                     fontSize: 20,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // );
          }
        },
      ),
    );
  }
}
