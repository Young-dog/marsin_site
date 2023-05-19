import 'package:flutter/material.dart';
import '../../../models/categories.dart';
import '../../../theme/for_text/styles_for_desctop_txt.dart';

class ButtonsForCategories extends StatefulWidget {
  const ButtonsForCategories({Key? key}) : super(key: key);

  @override
  State<ButtonsForCategories> createState() => _ButtonsForCategoriesState();
}

class _ButtonsForCategoriesState extends State<ButtonsForCategories> {

  final Categories categories = Categories();
  late String category;

  @override
  void initState() {
    category = categories.categories[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    dynamic getStyle(String name) {
      if (category == name) {
        return styleForCategoriesYDesctop(context);
      } else {
        return styleForCategoriesNDesctop(context);
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              category = categories.categories[0];
            });
          },
          child: Text(
            categories.categories[0],
            style: getStyle(categories.categories[0]),
          ),
        ),
        SizedBox(
          width: wh * 0.35,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              category = categories.categories[1];
            });
          },
          child: Text(
            categories.categories[1],
            style: getStyle(categories.categories[1]),
          ),
        ),
      ],
    );
  }
}
