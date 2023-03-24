import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Controllers/hindustani_controller.dart';
import 'package:ui_project/Widgets/collection_widget.dart';
import 'package:ui_project/Widgets/grid_view_popular_raaga_widget.dart';
import 'package:ui_project/Widgets/instrumental_contain.dart';
import 'package:ui_project/Widgets/must_listen_widget.dart';
import 'package:ui_project/Widgets/popular_raaga_contain_widget.dart';
import 'package:ui_project/Widgets/radio_contain.dart';
import 'package:ui_project/Widgets/search_bar.dart';
import 'package:ui_project/Widgets/talk_widget.dart';
import 'package:ui_project/Widgets/time_of_the_day.dart';
import 'package:ui_project/Widgets/vocalist_contain.dart';

import '../utils/app_asset.dart';

class HindustaniPage extends StatefulWidget {
  const HindustaniPage({Key? key}) : super(key: key);

  @override
  State<HindustaniPage> createState() => _HindustaniPageState();
}

class _HindustaniPageState extends State<HindustaniPage> {
  HindustaniController controller = Get.find<HindustaniController>(); //

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HindustaniController>(
        init: controller,
        builder: (controller) {
          if (controller.isLoading == true) {
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

                String categoryID = item.categoryid;
                String categoryType = item.categorytype;

                if (categoryID == 'search' && categoryType == 'search') {
                  return const SearchBar();
                } else if (categoryID == 'hourofday' && categoryType == 'hourofday') {
                  return TimeOfTheDayWidget(
                    item: item,
                  );
                } else if (categoryID == 'popularraagas' && categoryType == 'popularraagas') {
                  return PopularRaagaContainWidget(item: item);
                } else if (categoryID == 'mustlisten' && categoryType == 'mustlisten') {
                  return MustListenWidget(item: item);
                } else if (categoryID == 'instrumental' && categoryType == 'artists') {
                  return InstrumentalContain(item: item);
                } else if (categoryID == 'talk' && categoryType == 'talk') {
                  return TalkWidget(item: item);
                } else if (categoryID == 'mostpopular' && categoryType == 'album') {
                  return GridViewPopularRaagaWidget(item: item);
                } else if (categoryID == 'radio' && categoryType == 'radio') {
                  return RadioContain(
                    item: item,
                  );
                } else if (categoryID == 'vocalist' && categoryType == 'artists') {
                  return VocalistContain(
                    item: item,
                  );
                } else if (categoryID == 'instrumentalists' && categoryType == 'artists') {
                  return VocalistContain(
                    item: item,
                  );
                } else if (categoryID == 'collections' && categoryType == 'collections') {
                  return CollectionWidget(item: item);
                } else {
                  return const SizedBox();
                }

                return Container();
              },
            );

            // -----------------------------------

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
