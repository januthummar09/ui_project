import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Pages/hindustanipage.dart';
import 'package:ui_project/utils/app_asset.dart';

class SoundUiScreen extends StatefulWidget {
  const SoundUiScreen({Key? key}) : super(key: key);

  @override
  State<SoundUiScreen> createState() => _SoundUiScreenState();
}

class _SoundUiScreenState extends State<SoundUiScreen> with TickerProviderStateMixin {
  TabController? tabController;

  List<Tab> nameList = [
    const Tab(
      text: "Hindustani",
    ),
    const Tab(
      text: "Carnatic",
    ),
    const Tab(
      text: "Fusion",
    ),
    const Tab(
      text: "Ghazals",
    ),
    const Tab(
      text: "Ghazals",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: nameList.length);
    super.initState();
  }

  Widget navBar() {
    return Material(
      elevation: 3,
      color: Colors.grey,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAsset.logoIcon,
                    width: Get.width / 3,
                  ),
                  const Spacer(),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.bolt,
                            color: Colors.amber,
                            size: 19,
                          ),
                          Text(
                            "Try premium",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTabController(
                length: 5,
                child: tabBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      controller: tabController,
      tabs: nameList,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.transparent,
      isScrollable: true,
      // indicator: BoxDecoration(
      //   borderRadius: BorderRadius.circular(50), // Creates border
      //   color: const Color(0xffFFFFFF),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            navBar(),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  const HindustaniPage(),
                  Container(color: Colors.blue),
                  Container(color: Colors.grey),
                  Container(color: Colors.green),
                  Container(color: Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
