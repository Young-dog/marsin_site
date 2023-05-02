import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

import 'logo.dart';
import 'menu.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    return SizedBox(
      width: wh,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const LogoMarsin(),
            if (!ResponsiveLayout.isSmallScreen(context) && !ResponsiveLayout.isMediumScreen(context))
              Menu()
            else
              IconButton(onPressed: () {}, iconSize: 27, icon: Image.asset('assets/icons/icon_menu.png'))
          ],
        ),
      ),
    );
  }
}
