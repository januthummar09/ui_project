import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/Binding/home_page_binding.dart';
import 'package:ui_project/utils/routes/route_name.dart';
import 'package:ui_project/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Roboto",
      ),
      getPages: routeList,
      initialRoute: RouteName.homePage,
      initialBinding: HomePageBinding(),
      // home: const HomePage(),
    );
  }
}
