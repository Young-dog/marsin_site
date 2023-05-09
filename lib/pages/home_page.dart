import 'package:flutter/material.dart';

import '../res/common_styles.dart';
import '../widgets/about_us_widget/about_us.dart';
import '../widgets/advantages_widget/advantages_desctop.dart';
import '../widgets/deserts_widget/deserts_for_desctop.dart';
import '../widgets/start_widget/start_widget.dart';

class HomePage extends StatelessWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backColorSite,
        ),
        child: ListView(
          children: <Widget>[
            const StartWidget(),
            SizedBox(height: wh * 0.05,),
            const AboutUsWidget(),
            const AdvantagesWidgetForDesctop(),
            DesertsCatalogForDesctop()
          ],
        ),
      ),
    );
  }
}
