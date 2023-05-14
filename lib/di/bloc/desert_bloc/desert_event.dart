part of 'desert_bloc.dart';

@immutable
abstract class DesertEvent {}

class DesertGetDesertEvent extends DesertEvent {
  final String category;

  DesertGetDesertEvent(this.category);
}

class DesertAddDesertEvent<DesertForAdd>  extends DesertEvent{
  final DesertForAdd product;

  DesertAddDesertEvent(this.product);
}

class DesertEditDesertEvent<DesertForWeb>  extends DesertEvent{
  final DesertForWeb product;

  DesertEditDesertEvent(this.product);
}
