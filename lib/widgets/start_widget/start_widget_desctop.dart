import 'package:flutter/material.dart';

import '../navigation_bar/navigation_bar.dart';
import 'description.dart';
import 'image_for_start.dart';

part 'start_widget_mobile.dart';

class StartForDesctop extends StatelessWidget {
  const StartForDesctop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: const [
          Positioned(
            top: 100,
            bottom: 0,
            right: 0,
            child: ImageForStartWidget(),
          ),
          FractionallySizedBox(
            alignment: Alignment.center,
            heightFactor: 1,
            widthFactor: .6,
            child: DescriptionForStart(),
          ),
          Positioned(
            top: 0,
            child: NavBar(),
          )
        ],
      ),
    );
  }
}