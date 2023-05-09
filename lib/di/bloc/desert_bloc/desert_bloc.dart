import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:marsin_site/models/desert/desert_for_add.dart';

import '../../../models/desert/desert.dart';
import '../../../models/desert/desert_for_web.dart';

part 'desert_event.dart';
part 'desert_state.dart';

class DesertBloc extends Bloc<DesertEvent, DesertState> {
  DesertBloc() : super(DesertInitialState()) {
    on<DesertGetDesertEvent>(_onGetDesert);
  }

  final products = FirebaseFirestore.instance.collection('deserts');

  _onGetDesert(DesertGetDesertEvent event, Emitter<DesertState> emit) async {
    emit(DesertLoadingState());
    final querySnapshot = await products.where("category", isEqualTo: event.category).get();
    List<Desert> deserts = [];
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      DesertForWeb desertForWeb = DesertForWeb(
        image: queryDocumentSnapshot["urlImage"],
        name: queryDocumentSnapshot["name"],
        price: queryDocumentSnapshot["price"],
        id: queryDocumentSnapshot["desertId"],
      );
      deserts.add(desertForWeb);
    }
  }




}