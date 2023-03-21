import 'package:flutter/material.dart';
import 'package:ui_project/utils/app_asset.dart';

class PlayCircleView extends StatelessWidget {
  const PlayCircleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(17),
        alignment: Alignment.center,
        height: 50,
        width: 50,
        color: Colors.amber,
        child: Image.asset(
          AppAsset.playIcon,
        ),
      ),
    );
  }
}
