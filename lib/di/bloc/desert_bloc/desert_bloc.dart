import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as fires;


part 'desert_event.dart';
part 'desert_state.dart';

class DesertBloc extends Bloc<DesertEvent, DesertState> {
  DesertBloc() : super(DesertInitialState()) {
    on<DesertGetDesertEvent>(_onGetDesert);
    // on<DesertEditDesertEvent>(_onEditDesert);
    // on<DesertEditDesertEvent>(_onDelDesert);
    // on<DesertAddDesertEvent>(_onAddDesert);
  }

  final products = FirebaseFirestore.instance.collection('deserts');

  _onGetDesert(DesertGetDesertEvent event, emit) async {
    emit(const DesertLoadingState());
    final querySnapshot = await products.where("category", isEqualTo: event.category).get();
    List<DesertForWeb> deserts = [];
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      DesertForWeb desertForWeb = DesertForWeb(
        image: queryDocumentSnapshot["urlImage"],
        name: queryDocumentSnapshot["name"],
        price: queryDocumentSnapshot["price"],
        id: queryDocumentSnapshot["desertId"],
      );
      deserts.add(desertForWeb);
    }
    emit(DesertLoadedState(products: deserts));
    print('Bloc $deserts');
  }


  // _onDelDesert(DesertEditDesertEvent event, Emitter<DesertState> emit) async {
  //   final desert = event.product;
  //   await products.doc(desert.id).delete();
  //   emit(state.copyWith(isLoading: true));
  // }
  //
  // _onAddDesert(DesertAddDesertEvent event, Emitter<DesertState> emit) async {
  //   final desert = event.product;
  //   late String imageUrl;
  //   if (desert.name.trim().isNotEmpty) {
  //     //1. write image to storage
  //     fires.FirebaseStorage storage =
  //         fires.FirebaseStorage.instance; // Создание экземпляра
  //
  //     //Загружаем файл, получаем ссылку
  //     await storage
  //         .ref("images/${UniqueKey().toString()}.png")
  //         .putData(desert.imageFile)
  //         .then((taskSnapshot) async {
  //       imageUrl = await taskSnapshot.ref.getDownloadURL();
  //     });
  //   }
  //
  //   FirebaseFirestore.instance.collection("deserts").add({
  //     "timestamp": Timestamp.now(),
  //     "urlImage": imageUrl,
  //     "name": desert.name,
  //     "price": desert.price,
  //     "category": desert.category,
  //   }).then((docRef) => docRef.update({"desertId": docRef.id}));
  //   emit(state.copyWith(isLoading: true));
  // }

}