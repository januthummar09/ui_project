import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../play_screens/popular_raga_screen.dart';

class InsrumentalistContain extends StatefulWidget {
  final Map<String, dynamic> item;
  const InsrumentalistContain({Key? key, required this.item}) : super(key: key);

  @override
  State<InsrumentalistContain> createState() => _InsrumentalistContainState();
}

class _InsrumentalistContainState extends State<InsrumentalistContain> {
  late Map<String, dynamic> item;
  late List<Map<String, dynamic>> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item = widget.item;
    data = List<Map<String, dynamic>>.from(item['data']);
  }

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
                      item['title'].toString(),
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
                height: Get.height / 5.5,
                child: ListView.separated(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return Container(
                      // color: Colors.teal,
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.grey, //<-- SEE HERE
                              ),
                              borderRadius: BorderRadius.circular(65),
                            ),
                            shadowColor: Colors.black,
                            clipBehavior: Clip.antiAlias,
                            child: CachedNetworkImage(
                              imageUrl: listItem['profileImg'].toString(),
                              width: 130,
                              height: 130,
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
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
                          Text(listItem['name'].toString()),
                        ],
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
}
