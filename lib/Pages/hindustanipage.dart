import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Controllers/hindustani_controller.dart';
import 'package:ui_project/Widgets/play_circle_widget.dart';
import 'package:ui_project/Widgets/radio_contain.dart';
import 'package:ui_project/Widgets/search_bar.dart';
import 'package:ui_project/Widgets/time_of_the_day.dart';

import '../Widgets/insrumentalists_contain.dart';
import '../Widgets/popular_raaga_widget.dart';
import '../Widgets/see_all_button.dart';
import '../play_screens/collection_screen.dart';
import '../utils/app_asset.dart';

class HindustaniPage extends StatefulWidget {
  const HindustaniPage({Key? key}) : super(key: key);

  @override
  State<HindustaniPage> createState() => _HindustaniPageState();
}

class _HindustaniPageState extends State<HindustaniPage> {
  final HindustaniController _controller = Get.put(HindustaniController());

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
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item['title'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
                            fontSize: 14,
                          ),
                        ),
                      ],
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
                // color: Colors.indigo,
                height: (Get.width / 1.1) * 0.55,
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
          margin: const EdgeInsets.symmetric(vertical: 15).copyWith(bottom: 0),
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
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      item['title'],
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
              SizedBox(
                height: Get.width / 3 + 18,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  scrollDirection: Axis.horizontal,
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
                            child: Container(
                              color: Colors.white,
                              height: (Get.width / 3) - 18 + 5,
                              width: (Get.width / 3) - 18 + 5,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CachedNetworkImage(
                                  imageUrl: listenData[index]['profileImg'].toString(),
                                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          listenData[index]['listenname'].toString(),
                          style: const TextStyle(
                            fontSize: 14,
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
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
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
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
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
                // padding: const EdgeInsets.symmetric(
                //   vertical: 20,
                // ).copyWith(
                //   top: 0,
                // ),
                // color: Colors.amber,
                height: Get.width / 2.5 * 2 + 17 + 18,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 120,
                  ),
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 5).copyWith(top: 0),
                      // color: Colors.pink,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: listItem['image_url'].toString(),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    listItem['album_title'].toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    listItem['album_title_en'].toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
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
                    const PlayCircleView(),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'].toString(),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          item['subtitle'].toString(),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const SeeAllButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                // color: Colors.amber,
                height: Get.width / 2.1 + 18 + 5 + 10 + 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          color: Colors.red,
                          child: CachedNetworkImage(
                            imageUrl: data[index]['profileImg'].toString(),
                            height: Get.width / 2.5,
                            width: Get.width / 2.5,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          '${data[index]['name']}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 3),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppAsset.radioIcon,
                                height: 10,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Play Radio"),
                            ],
                          ),

                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(22),
                          //   child: Container(
                          //     color: Colors.white,
                          //     height: 40,
                          //     padding: const EdgeInsets.only(left: 0, right: 10, top: 5, bottom: 5),
                          //     child: Row(
                          //       children: [
                          //         CircleAvatar(
                          //           backgroundColor: textColor,
                          //           child: Padding(
                          //             padding: const EdgeInsets.all(10),
                          //             child: Image.asset(
                          //               AppAsset.playIcon,
                          //               color: Colors.white,
                          //             ),
                          //           ),
                          //         ),
                          //         Text(
                          //           'Listen',
                          //           style: TextStyle(
                          //             fontSize: 18,
                          //             fontWeight: FontWeight.w600,
                          //             color: textColor,
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),

                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(20),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: [
                          //       Image.asset(
                          //         AppAsset.radioIcon,
                          //         height: 10,
                          //       ),
                          //       const Spacer(),
                          //       const Text("Play Radio"),
                          //     ],
                          //   ),
                          // ),
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

  Widget talk({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);
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
                    const PlayCircleView(),
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
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          item['subtitle'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
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
                // color: Colors.pink,

                height: Get.width / 2.1,
                // width: Get.width / 1.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: Get.width / 1.5,
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
                                  vertical: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    data[index]['title'].toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget collection({required Map<String, dynamic> item}) {
    var data = List<Map<String, dynamic>>.from(item['data']);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            item['title'].toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
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
                  padding: const EdgeInsets.symmetric(
                    // horizontal: 8,
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          data[index]['name'].toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
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
            itemCount: data.length,
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
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
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
                } else if (categoryID == 'mustlisten' && categoryType == 'mustlisten') {
                  return mustListen(
                    item: item,
                  );
                } else if (categoryID == 'instrumental' && categoryType == 'artists') {
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
                  return collection(
                    item: item,
                  );
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
