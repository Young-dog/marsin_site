import 'package:flutter/material.dart';
import 'package:marsin_site/widgets/start_widget/button.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';
import '../../utils/responsive_layout/responsive_layout.dart';

class DescriptionForStart extends StatelessWidget {
  const DescriptionForStart({Key? key}) : super(key: key);

  final textBold = 'Шоколад\nручной работы';
  final textItalic = 'Подарки на любой праздник';

  @override
  Widget build(BuildContext context) {
    double hh = MediaQuery.of(context).size.width;

    dynamic getStyle(String name) {
      if (ResponsiveLayout.isSmallScreen(context)) {
        if (name == 'textBold') {
          return styleForTextInStartWidgetBoldItalicMobile;
        } else {
          return styleItalicMobile;
        }
      } else {
        if (name == 'textBold') {
          return styleForTextInStartWidgetBoldItalic(context);
        } else {
          return styleItalic(context);
        }
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textBold,
          style: getStyle('textBold'),
          textAlign: TextAlign.center,
        ),
        Text(
          textItalic,
          style: getStyle('textItalic'),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: ResponsiveLayout.isSmallScreen(context) ? hh * 0.1 : hh*0.04,),
        const ButtonStart(),
      ],
    );
  }
}
