import 'package:flutter/material.dart';

import '../../admin_panel/catalog.dart';


class ArrowButtons extends StatelessWidget {
  const ArrowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
            )),
        SizedBox(
          height: hh * 0.7,
          width: wh * 0.8,
          child: CatalogDesert(),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
