import 'package:flutter/material.dart';
import '../../theme/for_text/styles_for_desctop_txt.dart';

class TitleForDesertsCatalog extends StatelessWidget {
  const TitleForDesertsCatalog({Key? key}) : super(key: key);

  final String _title = 'Категории десертиков';

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style:
      styleBoldForDesctop(context),
    );
  }
}
