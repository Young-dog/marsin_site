part of 'desert_bloc.dart';

@immutable
abstract class DesertEvent {}

class DesertGetDesertEvent extends DesertEvent {
  final String category;

  DesertGetDesertEvent(this.category);
}

class DesertAddDesertEvent extends DesertEvent {
  final DesertForWeb product;

  DesertAddDesertEvent(this.product);
}