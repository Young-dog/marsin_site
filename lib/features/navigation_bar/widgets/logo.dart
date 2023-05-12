import 'package:flutter/material.dart';

import '../../../res/for_text/styles_for_desctop_txt.dart';

class LogoMarsin extends StatelessWidget {
  const LogoMarsin({Key? key}) : super(key: key);

  final image = 'assets/images/cupcake.png';
  final tittle = 'МАРСИН';

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image,  width: wh*0.07,),
          Text(
            tittle,
            style: styleRegularForButton(context),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
