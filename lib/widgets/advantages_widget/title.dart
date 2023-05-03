import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';

class TitleForAdvantages extends StatelessWidget {
  const TitleForAdvantages({Key? key}) : super(key: key);

  final title = 'Преимущества';

  @override
  Widget build(BuildContext context) {
    return Text(title, style: ResponsiveLayout.isSmallScreen(context) ? styleBoldMobile : styleBold,) ;
  }
}
