import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

import '../Controllers/carnatic_controller.dart';

class CarnaticPage extends StatefulWidget {
  const CarnaticPage({Key? key}) : super(key: key);

  @override
  State<CarnaticPage> createState() => _CarnaticPageState();
}

class _CarnaticPageState extends State<CarnaticPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  CarnaticController controller = Get.find<CarnaticController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
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
          }
        },
      ),
    );
  }
}
