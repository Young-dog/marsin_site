import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

class ImageForAboutUsWidget extends StatelessWidget {
  const ImageForAboutUsWidget({Key? key}) : super(key: key);

  final imageAboutUs = 'assets/images/chocolate_for_about_us.png';

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return ResponsiveLayout.isSmallScreen(context)
        ? Image.asset(
            imageAboutUs,
            width: wh,
            height: wh,
          )
        : Image.asset(imageAboutUs,
        height: hh,);
  }
}
