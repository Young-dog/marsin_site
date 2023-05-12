import 'package:flutter/material.dart';
import '../../../utils/responsive_layout/responsive_layout.dart';
import 'about_us_desctop.dart';


class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? const AboutUsForMobile()
        : const AboutUsForDesctop();
  }
}
