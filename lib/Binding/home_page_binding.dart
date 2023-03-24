import 'package:get/get.dart';

import '../Controllers/carnatic_controller.dart';
import '../Controllers/hindustani_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<CarnaticController>(CarnaticController());
    Get.put<HindustaniController>(HindustaniController());
  }
}
