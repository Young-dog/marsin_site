import 'package:flutter/material.dart';

import '../../models/admin_panel_control.dart';
import '../../res/for_text/styles_for_desctop_txt.dart';
import '../admin_panel_widget/admin_panel_for_pc.dart';

class ControlPassWidget extends StatefulWidget {
  const ControlPassWidget({super.key});

  @override
  State<ControlPassWidget> createState() => _ControlPassWidgetState();
}

class _ControlPassWidgetState extends State<ControlPassWidget> {

  String _passwd = "";

  bool _controlPass(value) {
    bool pass = false;
    if (value == "123456") pass = true;
    return pass;
  }

  @override
  Widget build(BuildContext context) {
    if (AdminControl.adminPanelActive) {
      return Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            setState(() {
              AdminControl.adminPanelActive = !AdminControl.adminPanelActive;
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
                        Navigator.of(context).pushReplacementNamed(AdminPanelForDesctop.id);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Container();
  }
}
