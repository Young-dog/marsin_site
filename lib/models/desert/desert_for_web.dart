import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'desert.dart';

class DesertForWeb extends Desert {
  final String id;

  DesertForWeb({
    required super.image,
    required super.name,
    required super.price,
    required this.id,
  });

  //Загрузка отредактированного товара в БД
  void editProduct(BuildContext context) {
    context
        .read<DesertsCubit>()
        .editDesert(id: id, name: super.name, price: super.price);
  }

  //Удаление продукта
  void delProduct(BuildContext context) {
    context.read<DesertsCubit>().delDesert(docId: id);
  }
}
