import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marsin_site/di/bloc/deserts_cubit.dart';
import 'package:marsin_site/di/bloc/desert_bloc/desert_bloc.dart';
import 'package:marsin_site/pages/home_page.dart';
import 'package:marsin_site/utils/firebase_options.dart';
import 'package:marsin_site/widgets/admin_panel_widget/admin_panel.dart';
import '';

import 'models/admin_controll.dart';

final adminProvider = StateProvider<bool>((ref) {
  AdminControl adminControl = AdminControl();
  return adminControl.adminActivity;
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

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
        home: const HomePage(),
        routes: {
          AdminPanel.id : (context) => const AdminPanel(),
          HomePage.id : (context) => const HomePage(),
        },
      ),
    );
  }
}