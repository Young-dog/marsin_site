import 'package:flutter/material.dart';
import 'package:marsin_site/widgets/about_us_widget/about_us_desctop.dart';

import '../../utils/responsive_layout/responsive_layout.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? const AboutUsForMobile()
        : const AboutUsForDesctop();
  }
}
