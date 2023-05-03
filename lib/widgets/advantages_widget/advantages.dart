import 'package:flutter/material.dart';

import '../../utils/responsive_layout/responsive_layout.dart';
import 'advantages_desctop.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? const AdvantagesForMobile()
        : const AdvantagesWidgetForDesctop();
  }
}
