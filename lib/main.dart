import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/pages/home_page.dart';
import 'package:marsin_site/widgets/admin_panel_widget/admin_panel_for_pc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DesertsCubit(),
      child: MaterialApp(
        home: const HomePage(),
        routes: {
          HomePage.id : (context) => const HomePage(),
          AdminPanelForDesctop.id : (context) => AdminPanelForDesctop(),
        },
      ),
    );
  }
}