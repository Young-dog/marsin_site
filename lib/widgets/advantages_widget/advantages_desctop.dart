import 'package:flutter/material.dart';
import 'package:marsin_site/widgets/advantages_widget/card.dart';
import 'package:marsin_site/widgets/advantages_widget/title.dart';

part 'advantages_mobile.dart';


class AdvantagesWidgetForDesctop extends StatelessWidget {
  const AdvantagesWidgetForDesctop({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        TitleForAdvantages(),
        SizedBox(height: 30,),
        CardsForAdvantages(),
        SizedBox(height: 30,),
      ],
    );
  }
}
