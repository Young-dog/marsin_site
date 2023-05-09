part of 'desert_bloc.dart';

@immutable
abstract class DesertState {}

class DesertInitialState extends DesertState {}

class DesertLoadedState extends DesertState {
  final List<DesertForWeb> products;

  DesertLoadedState(this.products);
}

class DesertLoadingState extends DesertState {}

class DesertAddedState extends DesertState {
  final DesertForAdd product;

  DesertAddedState(this.product);
}

class DesertEditedState extends DesertState {
  final DesertForWeb product;

  DesertEditedState(this.product);
}

class DesertDelState extends DesertState {
  final DesertForWeb product;

  DesertDelState(this.product);
}
