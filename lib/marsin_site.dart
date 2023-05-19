import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/di/bloc/desert_bloc/desert_bloc.dart';
import 'package:marsin_site/features/home_page/home_page.dart';
import 'package:marsin_site/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/utils/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DesertsCubit()),
        BlocProvider(create: (context) => DesertBloc()),
      ],
      child: MaterialApp(
        theme: darkTheme,
        home: const HomePage(),
        routes: routes,
      ),
    );
  }
}