import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';


class TitleForAdvantages extends StatelessWidget {
  const TitleForAdvantages({Key? key}) : super(key: key);

  final title = 'Преимущества';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: ResponsiveLayout.isSmallScreen(context)
          ? theme.textTheme.bodyMedium
          : theme.textTheme.displaySmall,
    );
  }
}
