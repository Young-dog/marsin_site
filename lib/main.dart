import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marsin_site/pages/home_page.dart';

import 'models/admin_controll.dart';

final adminProvider = StateProvider<bool>((ref) {
  AdminControl adminControl = AdminControl();
  return adminControl.adminActivity;
});

void main() {
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
    return const MaterialApp(
      home: HomePage(),
      routes: {},
    );
  }
}
