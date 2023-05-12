import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  final navLinks = ["О нас",  "Преимущества", "Контакты",  "Каталог"];

  List<Widget> navItem(BuildContext context) {
    return navLinks.map((text) {
      return Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
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
        children: <Widget>[...navItem(context)]);
  }
}
