import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../models/modes_for_admin_panel.dart';

part 'mode_event.dart';

part 'mode_state.dart';

class ModeBloc extends Bloc<ModeEvent, ModeState> {
  ModeBloc() : super(ModeAddState()) {
    on<ModeGetModeEvent>(_onGetMode);
  }

  _onGetMode(ModeGetModeEvent event, Emitter<ModeState> emit) {
    ModesForAdminPanel modesForAdminPanel = ModesForAdminPanel();
    if (event.toString() == modesForAdminPanel.modes[0]) {
      emit(ModeAddState());
    } else {
      emit(ModeEditState());
    }
  }
}
