import 'package:flutter/material.dart';

import '../../models/admin_panel_control.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({Key? key}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {

  final logo = 'assets/images/cupcake.png';

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    return MaterialButton(
      onPressed: () {
        setState(() {
          AdminControl.adminPanelActive = !AdminControl.adminPanelActive;
        });
      },
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      mouseCursor: MouseCursor.defer,
      child: Image.asset(logo, width: wh*0.07,),
    );
  }
}
