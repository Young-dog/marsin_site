import 'package:flutter/material.dart';

import '../res/common_styles.dart';
import '../widgets/about_us_widget/about_us.dart';
import '../widgets/start_widget/start_widget.dart';

class HomePage extends StatelessWidget {
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
            StartWidget(),
            SizedBox(height: wh * 0.05,),
            AboutUsWidget(),
          ],
        ),
      ),
    );
  }
}
