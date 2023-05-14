import 'package:flutter/material.dart';
import '../../../utils/responsive_layout/responsive_layout.dart';

class DescriptionForAboutUs extends StatelessWidget {
  const DescriptionForAboutUs({Key? key}) : super(key: key);

  final String title = 'О нас';

  @override
  Widget build(BuildContext context) {
    final bodyText = Theme.of(context).textTheme.bodyLarge;
    double wh = MediaQuery.of(context).size.width;

    final styleRegularMobile = Theme.of(context).textTheme.bodySmall;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: ResponsiveLayout.isSmallScreen(context)
              ? styleRegularMobile
              : bodyText,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: wh * 0.08,)
      ],
    );
  }
}
