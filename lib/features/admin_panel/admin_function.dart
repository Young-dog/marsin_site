
import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();

ScrollController scrollController = ScrollController();


String type = "Фигурные наборы";
final List<String> types = ["Фигурные наборы", "Букеты"];
String dropDownValue = "Фигурные наборы";

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "Букеты", child: Text("Букеты")),
    const DropdownMenuItem(
        value: "Фигурные наборы", child: Text("Фигурные наборы")),
  ];
  return menuItems;
}



String? docId;
String? imageUrl;

//Сброс значений






//Редактирование товара



