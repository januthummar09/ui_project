import 'package:flutter/material.dart';

import '../tab_screens/sound_ui_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
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
        bottomNavigationBar: SafeArea(
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.flight,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(Icons.directions_transit, color: Colors.blue),
              ),
              Tab(
                icon: Icon(Icons.directions_car, color: Colors.blue),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const SoundUiScreen(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
