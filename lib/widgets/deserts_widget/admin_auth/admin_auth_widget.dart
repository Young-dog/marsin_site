import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../res/for_text/styles_for_desctop_txt.dart';
import '../deserts_for_desctop.dart';


class AdminAuthWidget extends ConsumerStatefulWidget {
  const AdminAuthWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminAuthWidget> createState() => _AdminAuthWidgetState();
}

class _AdminAuthWidgetState extends ConsumerState<AdminAuthWidget> {

  String _passwd = '';

  bool _controlPass(value) {
    bool pass = false;
    if (value == "123456") pass = true;
    return pass;
  }
  void onSubmit(WidgetRef ref)  {
    ref.read(adminProvider.notifier).update((state) => false);
  }

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          setState(() {
            onSubmit(ref);
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
    );
  }
}
