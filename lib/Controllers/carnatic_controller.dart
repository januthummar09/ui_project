import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:ui_project/models/HomeModel.dart';

class CarnaticController extends GetxController {
  bool isLoading = true;
  List<HomeItemModel> data = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    debugPrint("before hindu  uri");

    getCarnatic();
  }

  void getCarnatic() async {
    var params = {
      "plt": "ios",
      "tz": DateTime.now().timeZoneOffset.inMinutes.toString(),
      "time": DateFormat("HH:mm:ss").format(DateTime.now()).toString(),
      "l": 'CL',
      "v": '3',
    };

    var uri = Uri.parse('https://api1.raaga.com/taala/home/');

    uri = uri.replace(queryParameters: params);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      HomeModel model = homeModelFromJson(response.body);

      if (model.success) {
        var searchItemModel = HomeItemModel(
          title: 'Search',
          type: 'type',
          categorytype: 'search',
          categoryid: 'search',
          hasseeall: true,
          data: [],
          isDiscovery: 0,
        );
        var items = model.data;
        items.insert(0, searchItemModel);
        data = items;
        isLoading = false;
        update();
      }
    }
  }
}
