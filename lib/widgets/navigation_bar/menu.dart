import 'package:flutter/material.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  final navLinks = ["О нас",  "Преимущества", "Контакты",  "Каталог"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: styleRegular,
            ),
          ),
          const SizedBox(width: 30,)
        ],
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[...navItem()]);
  }
}
