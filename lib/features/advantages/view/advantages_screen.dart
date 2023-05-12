import 'package:flutter/material.dart';
import 'package:marsin_site/features/advantages/widgets/title.dart';
import '../widgets/card.dart';



class AdvantagesScreen extends StatelessWidget {
  const AdvantagesScreen({Key? key}) : super(key: key);



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
