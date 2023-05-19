import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/models/modes_for_admin_panel.dart';

import '../../../theme/for_text/styles_for_desctop_txt.dart';


class ButtonsForModesAdminPanel extends StatefulWidget {
  final DesertsState state;

  const ButtonsForModesAdminPanel(this.state, {super.key});

  @override
  State<ButtonsForModesAdminPanel> createState() =>
      _ButtonsForModesAdminPanelState();
}

class _ButtonsForModesAdminPanelState extends State<ButtonsForModesAdminPanel> {
  ModesForAdminPanel modesForAdminPanel = ModesForAdminPanel();

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;

    dynamic getStyle(String name) {
      if ((widget.state is DesertsAdd && name == modesForAdminPanel.modes[0]) ||
          (widget.state is DesertsEdit &&
              name == modesForAdminPanel.modes[1])) {
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
              context.read<DesertsCubit>().desertAddState();
              //reset();
            });
          },
          child: Text(
            modesForAdminPanel.modes[0],
            style: getStyle(modesForAdminPanel.modes[0]),
          ),
        ),
        SizedBox(
          width: wh * 0.35,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              context.read<DesertsCubit>().desertEditState();
              //reset();
            });
          },
          child: Text(
            modesForAdminPanel.modes[1],
            style: getStyle(modesForAdminPanel.modes[1]),
          ),
        ),
      ],
    );
  }
}
