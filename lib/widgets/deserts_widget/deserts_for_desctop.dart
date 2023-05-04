import 'package:flutter/material.dart';
import 'package:marsin_site/widgets/deserts_widget/title.dart';

import '../../res/for_text/styles_for_desctop_txt.dart';

part 'deserts_for_mobile.dart';

class DesertsCatalogForDesctop extends StatefulWidget {
  const DesertsCatalogForDesctop({Key? key}) : super(key: key);

  @override
  State<DesertsCatalogForDesctop> createState() =>
      _DesertsCatalogForDesctopState();
}

class _DesertsCatalogForDesctopState extends State<DesertsCatalogForDesctop> {
  final logo = 'assets/images/cupcake.png';

  final List<String> _categories = ["Фигурные наборы", "Букеты"];
  String category = "Фигурные наборы";

// set up the buttons
  String _passwd = "";
  bool _adminPanelActive = false;

  bool _controlPass(value) {
    bool pass = false;
    if (value == "123456") pass = true;
    return pass;
  }

  @override
  Widget build(BuildContext context) {

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
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _adminPanelActive = !_adminPanelActive;
                      });
                    },
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    mouseCursor: MouseCursor.defer,
                    child: Image.asset(logo, width: wh*0.07,),
                  ),
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
          _adminPanelActive == true ?
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _adminPanelActive = false;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white.withOpacity(0.1),
                child: AlertDialog(
                  backgroundColor: const Color(0xFF4B1A3D),
                  title: Text(
                    "Авторизация",
                    style: styleBold,
                  ),
                  actions: [
                    TextField(
                      obscureText: true,
                      onChanged: (value) {
                        _passwd = value;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(70),
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          "Войти",
                          style: styleRegular
                        ),
                        onPressed: () {
                          if (_controlPass(_passwd)) {
                            // Navigator.of(context).pushReplacementNamed(AdminPanel.id);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
