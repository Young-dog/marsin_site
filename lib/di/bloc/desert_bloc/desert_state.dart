part of 'desert_bloc.dart';

class DesertState {
  final List<DesertForWeb> products;
  final Desert? product;
  final bool isLoading;

  DesertState({
    this.products = const [],
    this.product,
    this.isLoading = false,
  });

  DesertState copyWith({
    List<DesertForWeb>? products,
    Desert? product,
    bool isLoading = false,
  }) {
    return DesertState(
      products: products ?? this.products,
      product: product ?? this.product,
      isLoading: isLoading,
    );
  }
}