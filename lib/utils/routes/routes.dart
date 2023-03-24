import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ui_project/Binding/home_page_binding.dart';
import 'package:ui_project/Pages/homepage.dart';
import 'package:ui_project/utils/routes/route_name.dart';

import '../../Binding/carnatic_binding.dart';
import '../../Binding/hindustani_binding.dart';
import '../../Pages/carnatic_screen.dart';
import '../../Pages/hindustanipage.dart';

List<GetPage<dynamic>> routeList = [
  GetPage(name: RouteName.homePage, page: () => const HomePage(), binding: HomePageBinding()),
  GetPage(name: RouteName.hindustaniPage, page: () => const HindustaniPage(), binding: HindustaniBinding()),
  GetPage(name: RouteName.carnaticPage, page: () => const CarnaticPage(), binding: CarnaticBinding()),
];
