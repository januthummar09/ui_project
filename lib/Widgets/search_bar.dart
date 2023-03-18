import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/utils/app_asset.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(75),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF5a5d61),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              Image.asset(
                AppAsset.searchIcon,
                height: Get.height / 45,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.amber.shade200,
                  ),
                  cursorHeight: 0,
                  cursorWidth: 0,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF5a5d61),
                    border: InputBorder.none,
                    hintText: "Search for classical music",
                    hintStyle: TextStyle(
                      color: Colors.amber.shade200,
                      fontSize: 18,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
