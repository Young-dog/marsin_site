import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/bloc/desert_bloc/desert_bloc.dart';
import '../../repositories/models/desert/desert.dart';

class CatalogDesert extends StatefulWidget {
  const CatalogDesert({Key? key}) : super(key: key);

  @override
  State<CatalogDesert> createState() => _CatalogDesertState();
}

class _CatalogDesertState extends State<CatalogDesert> {

  final listBloc =  DesertBloc();

  @override
  Widget build(BuildContext context) {

    final styleForField = Theme.of(context).textTheme.labelMedium;

    return BlocBuilder<DesertBloc, DesertState>(
      bloc: listBloc,
      builder: (context, state) {
        context.read<DesertBloc>().add(DesertGetDesertEvent("Фигурные наборы"));
        print(state.props);
        if (state is DesertLoadingState) {
          return CircularProgressIndicator();
        }
        if (state is DesertLoadedState) {
          var products = state.products;
          return GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30,
                crossAxisSpacing: 60,
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final doc = products[index];
                final DesertForWeb desert = doc;

                return SizedBox(
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
                );
              }
          );
        }
        return CircularProgressIndicator();
      }
    );
  }
}
