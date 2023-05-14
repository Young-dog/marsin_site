part of 'desert_bloc.dart';


@immutable
abstract class DesertState extends Equatable{
  const DesertState();

  @override
  List<Object> get props => [];
}

class DesertInitialState extends DesertState {
  const DesertInitialState();


}

class DesertLoadedState extends DesertState {
  final List<DesertForWeb> products;
  const DesertLoadedState({required this.products});

  @override
  List<Object> get props => [products];
}

class DesertLoadingState extends DesertState {
  const DesertLoadingState();
}


// class DesertAddState extends DesertState {
//   final DesertForAdd product;
//
//   DesertAddState(this.product);
// }
//
// class DesertEditeState extends DesertState {
//   final DesertForWeb product;
//
//   DesertEditeState(this.product);
// }
//
// class DesertRemoveState extends DesertState {
//   final DesertForWeb product;
//
//   DesertRemoveState(this.product);
// }

// class DesertState {
//   final List<DesertForWeb> products;
//   final Desert? product;
//   final bool isLoading;
//
//   DesertState({
//     this.products = const [],
//     this.product,
//     this.isLoading = false,
//   });
//
//   DesertState copyWith({
//     List<DesertForWeb>? products,
//     Desert? product,
//     bool isLoading = false,
//   }) {
//     return DesertState(
//       products: products ?? this.products,
//       product: product ?? this.product,
//       isLoading: isLoading,
//     );
//   }
// }