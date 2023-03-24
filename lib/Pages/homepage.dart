import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_project/login_screen.dart';

import '../tab_screens/sound_ui_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  List pages = [
    const SoundUiScreen(),
    InkWell(
      onTap: () => Get.to(
        const LoginScreen(),
      ),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
      ),
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.blue,
    ),
  ];

  int? selectedIndex = 0;

  void onTapItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          // selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
          // unselectedLabelStyle: const TextStyle(overflow: TextOverflow.visible, color: Colors.grey),
          iconSize: 35,
          currentIndex: selectedIndex!,
          onTap: onTapItem,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),

        // SafeArea(
        //     child: TabBar(
        //       controller: _tabController,
        //       tabs: const [
        //         Tab(
        //           icon: Icon(
        //             Icons.home,
        //             color: Colors.black,
        //           ),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.directions_transit, color: Colors.blue),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.directions_car, color: Colors.blue),
        //         ),
        //       ],
        //     ),
        //   ),
        body: Center(
          child: pages.elementAt(selectedIndex!),
        ),

        // TabBarView(
        //   controller: _tabController,
        //   children: [
        //     const SoundUiScreen(),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.pink,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
