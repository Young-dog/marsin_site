import 'package:flutter/material.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';
import '../../utils/responsive_layout/responsive_layout.dart';

class DescriptionForAboutUs extends StatelessWidget {
  const DescriptionForAboutUs({Key? key}) : super(key: key);

  final String title = 'О нас';

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: ResponsiveLayout.isSmallScreen(context)
              ? styleRegularMobile
              : styleRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: wh * 0.08,)
      ],
    );
  }
}
