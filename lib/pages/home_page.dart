import 'package:flutter/material.dart';

import '../res/common_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backColorSite,
        ),
        child: ListView(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
