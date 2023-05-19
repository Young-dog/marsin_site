part of 'desert.dart';


class DesertForAdd extends Desert {
  final String category;

  DesertForAdd({
    required super.image,
    required super.name,
    required super.price,
    required this.category,
  });

  void addProduct(BuildContext context) {
    context.read<DesertsCubit>().addDesert(
          name: name,
          imageFile: image as Uint8List,
          price: price,
          category: category,
          timestamp: Timestamp.now(),
        );

  }
}
