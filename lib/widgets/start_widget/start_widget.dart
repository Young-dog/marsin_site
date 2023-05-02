import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';
import 'package:marsin_site/widgets/start_widget/start_widget_desctop.dart';

import 'description.dart';
import 'image_for_start.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return SizedBox(
      width: wh,
      child: ResponsiveLayout.isSmallScreen(context) ? const StartForMobile() : const StartForDesctop(),
    );
  }
}
