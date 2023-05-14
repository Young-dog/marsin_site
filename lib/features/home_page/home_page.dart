import 'package:flutter/material.dart';

import '../../res/common_styles.dart';
import '../about_us/about_us.dart';
import '../deserts_widget/deserts_for_desctop.dart';
import '../start/start.dart';
import '../advantages/advantages.dart';

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
            const AdvantagesScreen(),
            DesertsCatalogForDesctop()
          ],
        ),
      ),
    );
  }
}
