import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/res/common_styles.dart';
import 'package:marsin_site/widgets/admin_panel_widget/title_and_buttons/modes_for_admin_panel.dart';
import 'package:marsin_site/widgets/admin_panel_widget/title_and_buttons/title_for_admin_panel.dart';
import '../../di/bloc/deserts_cubit.dart';
import '../../models/desert/desert_for_add.dart';
import '../../models/desert/desert_for_web.dart';
import '../../models/desert_image.dart';
import '../../models/modes_for_admin_panel.dart';
import '../../pages/home_page.dart';
import '../../res/for_text/styles_for_desctop_txt.dart';
import 'admin_function.dart';

// part 'admin_panel_for_mobile.dart';

class AdminPanelForPC extends StatefulWidget {
  static const String id = "admin_panel_for_pc";

  const AdminPanelForPC({Key? key}) : super(key: key);

  @override
  State<AdminPanelForPC> createState() => _AdminPanelForPCState();
}

class _AdminPanelForPCState extends State<AdminPanelForPC> {
  ImageDesert imageDesert = ImageDesert();

  late ModesForAdminPanel modesForAdminPanel;
  final priceFocusNode = FocusNode();
  final controllerName = TextEditingController();
  final controllerPrice = TextEditingController();

  String? _name;
  String? _price;
  String? _imageUrl;
  String? _id;

  void _submit(BuildContext context, DesertsState state) {
    FocusScope.of(context).unfocus();

    if (!formKey.currentState!.validate()) {
      //Invalid
      return;
    }

    formKey.currentState!.save();

    if (state is DesertsAdd) {
      DesertForAdd desertForAdd = DesertForAdd(
          image: imageDesert.imageFile,
          name: _name!,
          price: _price!,
          category: dropDownValue);
      desertForAdd.addProduct(context);
    } else {
      DesertForWeb desertsForWeb = DesertForWeb(
          image: _imageUrl, name: _name!, price: _price!, id: _id!);
      desertsForWeb.editProduct(context);
    }
    reset();
  }

  void editDesert(
      {required String name,
      required String price,
      required String imageUrl,
      required String docId}) {
    _name = name;
    _price = price;
    _imageUrl = imageUrl;
    _id = docId;
    controllerName.text = name;
    controllerPrice.text = price;
  }

  //Удаление товара
  void delDesert(BuildContext context) {
    FocusScope.of(context).unfocus();

    if (!formKey.currentState!.validate()) {
      //Invalid
      return;
    }

    formKey.currentState!.save();

    context.read<DesertsCubit>().delDesert(docId: _id!);
    reset();
  }

  void reset() {
    _name = null;
    _price = null;
    _imageUrl = null;
    imageDesert.imageFile = null;
    controllerName.clear();
    controllerPrice.clear();
  }

  @override
  void initState() {
    modesForAdminPanel = ModesForAdminPanel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocBuilder<DesertsCubit, DesertsState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: backColorSite,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Заголовок
                  TitleForAdminPanel(state is DesertsAdd
                      ? modesForAdminPanel.modes[0]
                      : modesForAdminPanel.modes[1]),
                  sizedBox,
                  //Выбор режима (добавление/редактирование)
                  ButtonsForModesAdminPanel(state),
                  sizedBox,
                  //Взаимодествие и отображение товаров
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Добавление или редактирование одного товара
                        Container(
                          width: wh / 4,
                          height: hh / 1.3,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: SingleChildScrollView(
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    sizedBox,
                                    //Картинка
                                    state is DesertsAdd
                                        ? GestureDetector(
                                            onTap: () {
                                              imageDesert
                                                  .getImage()
                                                  .then((value) {
                                                setState(() {});
                                              });
                                            },
                                            child: Container(
                                              width: 352,
                                              height: 287,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(70),
                                              ),
                                              child: imageDesert.imageFile ==
                                                      null
                                                  ? Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Добавить фото",
                                                        style: styleForModesN,
                                                      ),
                                                    )
                                                  : GestureDetector(
                                                      onTap: () {
                                                        imageDesert
                                                            .getImage()
                                                            .then((value) {
                                                          setState(() {});
                                                        });
                                                      },
                                                      child: Image.memory(
                                                          imageDesert
                                                              .imageFile!),
                                                    ),
                                            ),
                                          )
                                        : Container(
                                            width: 352,
                                            height: 287,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: _imageUrl != null
                                                ? Expanded(
                                                    child: Image(
                                                        image: NetworkImage(
                                                            _imageUrl!)))
                                                : Container(),
                                          ),
                                    sizedBox,
                                    //Название
                                    Text(
                                      "Описание",
                                      style: styleForModesN,
                                    ),
                                    SizedBox(
                                      width: 400,
                                      child: TextFormField(
                                        controller: controllerName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "IBMPlexSerif",
                                          fontSize: 32,
                                        ),
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            borderSide: const BorderSide(
                                                color: Colors.white,
                                                width: 2.0),
                                          ),
                                        ),
                                        textInputAction: TextInputAction.done,
                                        onFieldSubmitted: (_) {
                                          FocusScope.of(context)
                                              .requestFocus(priceFocusNode);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Необходимо ввести название десерта";
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                          _name = value!;
                                        },
                                      ),
                                    ),
                                    //Цена
                                    Text(
                                      "Цена",
                                      style: styleForModesN,
                                    ),
                                    SizedBox(
                                      width: 400,
                                      child: TextFormField(
                                        focusNode: priceFocusNode,
                                        controller: controllerPrice,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "IBMPlexSerif",
                                          fontSize: 32,
                                        ),
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            borderSide: const BorderSide(
                                                color: Colors.white,
                                                width: 2.0),
                                          ),
                                        ),
                                        textInputAction: TextInputAction.done,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Необходимо ввести цену";
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                          _price = value!;
                                        },
                                      ),
                                    ),
                                    sizedBox,
                                    //Выбор категории либо удаления товара (зависит от режима, в котором работаем)
                                    state is DesertsAdd
                                        ? Column(
                                            children: [
                                              Text(
                                                "Категория",
                                                style: styleForModesN,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                child: DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(35),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 2.0),
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(35),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white,
                                                                width: 2.0),
                                                      ),
                                                      filled: true,
                                                    ),
                                                    dropdownColor: Colors.white,
                                                    focusColor: Colors.white,
                                                    iconEnabledColor:
                                                        Colors.white,
                                                    value: dropDownValue,
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        dropDownValue =
                                                            newValue!;
                                                      });
                                                    },
                                                    items: dropdownItems),
                                              ),
                                              sizedBox,
                                            ],
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: imageUrl != null
                                                  ? TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          delDesert(context);
                                                          reset();
                                                        });
                                                      },
                                                      child: Text(
                                                        "Удалить",
                                                        style: styleForField,
                                                      ),
                                                    )
                                                  : Container(),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Кнопка Добавление товара
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    _submit(context, state);
                                  });
                                },
                                icon: const Icon(Icons.add))
                          ],
                        ),
                        Container(
                            width: wh / 1.7,
                            height: hh / 1.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              reset();
                                              type = types[0];
                                            });
                                          },
                                          child: type == types[0]
                                              ? Text(
                                                  types[0],
                                                  style: styleForModesY,
                                                )
                                              : Text(
                                                  types[0],
                                                  style: styleForModesN,
                                                ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              reset();
                                              type = types[1];
                                            });
                                          },
                                          child: type == types[1]
                                              ? Text(
                                                  types[1],
                                                  style: styleForModesY,
                                                )
                                              : Text(
                                                  types[1],
                                                  style: styleForModesN,
                                                ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection("deserts")
                                          .where("category", isEqualTo: type)
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        int countCurlySets = 0;
                                        int countBouquets = 0;
                                        int len = snapshot.data!.docs.length;

                                        //Считаем кол-во товаров разных категорий
                                        for (int i = 0; i < len; i++) {
                                          if (snapshot.data!.docs[i]
                                                  ["category"] ==
                                              types[0]) {
                                            countCurlySets++;
                                          } else {
                                            countBouquets++;
                                          }
                                        }
                                        //Ожидание
                                        if (snapshot.connectionState ==
                                                ConnectionState.waiting ||
                                            snapshot.connectionState ==
                                                ConnectionState.none) {
                                          return const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          );
                                        }

                                        //Ошибка
                                        if (snapshot.hasError) {
                                          return const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          );
                                        }

                                        return SizedBox(
                                            width: wh / 1.8,
                                            height: hh / 1.4,
                                            child: GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisSpacing: 30,
                                                  crossAxisSpacing: 60,
                                                  crossAxisCount: 2,
                                                  childAspectRatio: 1.5,
                                                ),
                                                itemCount: type == types[0]
                                                    ? countCurlySets
                                                    : countBouquets,
                                                itemBuilder: (context, index) {
                                                  final QueryDocumentSnapshot
                                                      doc = snapshot
                                                          .data!.docs[index];
                                                  final DesertForWeb desert =
                                                      DesertForWeb(
                                                    price: doc["price"] ?? "0",
                                                    name: doc["name"] ?? "",
                                                    image:
                                                        doc["urlImage"] ?? "",
                                                    id: doc["desertId"] ?? "",
                                                  );

                                                  return state is DesertsAdd
                                                      ? SizedBox(
                                                          width: 350,
                                                          height: 300,
                                                          child: Card(
                                                            elevation: 0,
                                                            color: Colors
                                                                .transparent,
                                                            child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Image(
                                                                      image: NetworkImage(
                                                                          desert
                                                                              .image),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    desert.name,
                                                                    style:
                                                                        styleForField,
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "${desert.price} руб",
                                                                    style:
                                                                        styleForField,
                                                                  ),
                                                                ]),
                                                          ),
                                                        )
                                                      : GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              editDesert(
                                                                  name: desert
                                                                      .name,
                                                                  price: desert
                                                                      .price,
                                                                  imageUrl:
                                                                      desert
                                                                          .image,
                                                                  docId: desert
                                                                      .id);
                                                              setState(() {
                                                                imageUrl =
                                                                    desert
                                                                        .image;
                                                              });
                                                            });
                                                          },
                                                          child: Card(
                                                            elevation: 0,
                                                            color: Colors
                                                                .transparent,
                                                            child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Image(
                                                                      image: NetworkImage(
                                                                          desert
                                                                              .image),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    desert.name,
                                                                    style:
                                                                        styleForField,
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "${desert.price} руб",
                                                                    style:
                                                                        styleForField,
                                                                  ),
                                                                ]),
                                                          ),
                                                        );
                                                }));
                                      })
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  sizedBox,
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(HomePage.id);
                      },
                      child: Text(
                        "Назад",
                        style: styleForModesN,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
