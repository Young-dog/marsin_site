import 'package:flutter/material.dart';
import 'package:marsin_site/res/for_text/styles_for_desctop_txt.dart';

class TitleForAdminPanel extends StatelessWidget {
  final String title;
  const TitleForAdminPanel(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final styleBold = Theme.of(context).textTheme.bodyMedium;
    return Text(title, style: styleBold,);
  }
}
