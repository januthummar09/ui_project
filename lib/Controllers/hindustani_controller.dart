import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:ui_project/models/HomeModel.dart';

class HindustaniController extends GetxController {
  List<HomeItemModel> data = [];
  bool isLoading = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getHomeData();
  }

  getHomeData() async {
    var params = {
      "plt": "ios",
      "tz": DateTime.now().timeZoneOffset.inMinutes.toString(),
      "time": DateFormat("HH:mm:ss").format(DateTime.now()).toString(),
      "l": 'HI',
      "v": '3',
    };

    var uri = Uri.parse('https://api1.raaga.com/taala/home/');

    uri = uri.replace(queryParameters: params);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      HomeModel model = homeModelFromJson(response.body);
      debugPrint('HOme Response data ==>$model');

      debugPrint('HOme Response data ==>${response.body}');

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

// void getHomeData() async {
//   var params = {
//     'plt': 'ios',
//     'tz': DateTime.now().timeZoneOffset.inMinutes.toString(),
//     'time': DateFormat('HH:mm:ss').format(DateTime.now()),
//     'l': 'HI',
//     'v': '3',
//   };
//   var uri = Uri.parse('https://api1.raaga.com/taala/home/');
//
//   uri = uri.replace(queryParameters: params);
//
//   var response = await http.get(uri);
//   if (response.statusCode == 200) {
//     var responseData = jsonDecode(response.body) as Map<String, dynamic>;
//     // debugPrint('HOme Response data ==>${response.body}');
//     // debugPrint('HOme Response data ==>${responseData['success'] as bool}');
//     if (responseData['success'] as bool) {
//       var localData = List<Map<String, dynamic>>.from(responseData['data']);
//       var item = {
//         'categorytype': 'search',
//         'categoryid': 'search',
//       };
//       localData.insert(0, item);
//       data = localData;
//       isLoading = false;
//       update();
//     }
//   }
// }
