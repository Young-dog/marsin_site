import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

import '../../../res/for_text/styles_for_desctop_txt.dart';
import '../../../res/styles_for_button.dart';


class ButtonStart extends StatelessWidget {
  const ButtonStart({Key? key}) : super(key: key);

  final action = 'Выбрать десерт';

  @override
  Widget build(BuildContext context) {

    final styleRegularMobile = Theme.of(context).textTheme.bodySmall;

    double getSize(String name) {
      double wh = MediaQuery.of(context).size.width;
      if (ResponsiveLayout.isSmallScreen(context)) {
        if (name == 'width') {
          return 235;
        } else {
          return 54;
        }
      } else {
        if (name == 'width') {
          return wh * 0.25;
        } else {
          return wh * 0.06;
        }
      }
    }

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradientForButton,
          borderRadius: const BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          width: getSize('width'),
          height: getSize('height'),
          alignment: Alignment.center,
          child: Text(
            action,
            style: ResponsiveLayout.isSmallScreen(context)
                ? styleRegularMobile
                : styleRegularForButton(context),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
