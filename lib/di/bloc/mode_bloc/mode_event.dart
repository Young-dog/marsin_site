part of 'mode_bloc.dart';

@immutable
abstract class ModeEvent {}

class ModeGetModeEvent extends ModeEvent {
  final String mode;

  ModeGetModeEvent(this.mode);
}