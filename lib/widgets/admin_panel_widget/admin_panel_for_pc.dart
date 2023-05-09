import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/res/common_styles.dart';
import 'package:marsin_site/res/for_text/styles_for_desctop_txt.dart';

class AdminPanelForDesctop extends StatefulWidget {
  static const String id = 'admin_panel_for_pc';

  const AdminPanelForDesctop({Key? key}) : super(key: key);

  @override
  State<AdminPanelForDesctop> createState() => _AdminPanelForDesctopState();
}

class _AdminPanelForDesctopState extends State<AdminPanelForDesctop> {
  String heading = "Добавление товара";
  final List<String> modes = [
    "Добавление товара",
    "Редактирование и удаление товара"
  ];
  String type = "Фигурные наборы";
  final List<String> types = ["Фигурные наборы", "Букеты"];
  String dropDownValue = "Фигурные наборы";

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    dynamic getStyle({required String title, required String name}) {
      if (title == name) {
        return styleForModesY;
      } else {
        return styleForModesN;
      }
    }

    return Scaffold(
      body: BlocBuilder<DesertsCubit, DesertsState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              width: wh,
              decoration: BoxDecoration(
                gradient: backColorSite,
              ),
              child: Column(
                children: [
                  //Title
                  Text(
                    heading,
                    style: styleBold,
                  ),
                  sizedBoxForDesctop,
                  //Modes
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: wh * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              heading = modes[0];
                              context.read<DesertsCubit>().desertAddState();
                            });
                          },
                          child: Text(
                            modes[0],
                            style: getStyle(title: heading, name: modes[0]),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              heading = modes[1];
                              context.read<DesertsCubit>().desertEditState();
                            });
                          },
                          child: Text(
                            modes[1],
                            style: getStyle(title: heading, name: modes[1]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //ff
                  sizedBoxForDesctop,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
