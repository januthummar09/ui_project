import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/utils/app_asset.dart';

class PopularRaagaWidget extends StatelessWidget {
  final Map<String, dynamic> item;
  PopularRaagaWidget({required this.item, Key? key}) : super(key: key);

  final List<Color> colors = [
    const Color(0xFFdfdefc),
    const Color(0xFFf6e3fc),
    const Color(0xFFf0ebed),
    const Color(0xFFf6e3fc),
  ];

  final List<Color> textColors = [
    const Color(0xFF020b3d),
    const Color(0xFFb31044),
    const Color(0xFF595254),
    const Color(0xFFb31044),
  ];

  @override
  Widget build(BuildContext context) {
    var random = Random().nextInt(3);
    var color = colors[random];
    var textColor = textColors[random];

    return SizedBox(
      width: Get.width / 1.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['name'].toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: textColor,
                ),
              ),
              SizedBox(
                height: Get.height / 80,
              ),
              Text(
                item['desc'].toString(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    AppAsset.whatsappIcon,
                    height: Get.height / 30,
                    color: textColor,
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      padding: const EdgeInsets.only(left: 0, right: 10, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: textColor,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppAsset.playIcon,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            'Listen',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: textColor,
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
  }
}
