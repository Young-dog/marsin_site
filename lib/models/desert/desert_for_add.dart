import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/models/desert/desert.dart';

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
