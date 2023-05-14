import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

class ImageForStartWidget extends StatelessWidget {
  const ImageForStartWidget({Key? key}) : super(key: key);

  final image = 'assets/images/chocolate_for_start.png';

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        ResponsiveLayout.isSmallScreen(context)
            ? Image.asset(
                image,
                width: wh,
                fit: BoxFit.cover,
              )
            : Image.asset(image, width: wh * 0.8, fit: BoxFit.fill),
      ],
    );
  }
}
