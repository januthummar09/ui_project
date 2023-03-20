import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../play_screens/popular_raga_screen.dart';

class RadioContain extends StatefulWidget {
  final Map<String, dynamic> item;
  const RadioContain({Key? key, required this.item}) : super(key: key);

  @override
  State<RadioContain> createState() => _RadioContainState();
}

class _RadioContainState extends State<RadioContain> {
  @override
  Widget build(BuildContext context) {
    var data = List<Map<String, dynamic>>.from(widget.item['data']);

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
                      widget.item['title'].toString(),
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
                height: Get.height / 4.9,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var listItem = data[index];

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        child: Container(
                          // color: Colors.indigo,
                          width: Get.width / 3.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.pink,
                                  child: CachedNetworkImage(
                                    imageUrl: listItem['profileImg'].toString(),
                                    placeholder: (context, url) => const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Hindustani Vocal",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Genre",
                                      style: TextStyle(
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
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: Get.width / 30,
                  ),
                  itemCount: data.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
