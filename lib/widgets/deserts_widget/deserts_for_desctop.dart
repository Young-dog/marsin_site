import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marsin_site/widgets/deserts_widget/pass_widget.dart';
import 'package:marsin_site/widgets/deserts_widget/title.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';
import 'button.dart';

part 'deserts_for_mobile.dart';

class DesertsCatalogForDesctop extends ConsumerStatefulWidget {
  const DesertsCatalogForDesctop({Key? key}) : super(key: key);

  @override
  ConsumerState<DesertsCatalogForDesctop> createState() =>
      _DesertsCatalogForDesctopState();
}

class _DesertsCatalogForDesctopState extends ConsumerState<DesertsCatalogForDesctop> {


  final List<String> _categories = ["Фигурные наборы", "Букеты"];
  String category = "Фигурные наборы";


  @override
  Widget build(BuildContext context) {

    final adminPanelActive = ref.watch(adminPanelProvider);

    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    dynamic getStyle(String name) {
      if (category == name) {
        return styleForCategoriesYDesctop(context);
      } else {
        return styleForCategoriesNDesctop(context);
      }
    }

    return SizedBox(
      height: hh,
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              //Icon & title
              Row(
                children: [
                  const MyIconButton(),
                  SizedBox(
                    width: wh / 5,
                  ),
                  const TitleForDesertsCatalog(),
                ],
              ),
              //Buttton for categories
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        category = _categories[0];
                      });
                    },
                    child: Text(
                      _categories[0],
                      style: getStyle(_categories[0]),
                    ),
                  ),
                  SizedBox(
                    width: wh * 0.35,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        category = _categories[1];
                      });
                    },
                    child: Text(
                      _categories[1],
                      style: getStyle(_categories[1]),
                    ),
                  ),
                ],
              ),
              //Deserts Catalog
              Row(
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
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ControlPassWidget(),
        ],
      ),
    );
  }
}
