import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marsin_site/utils/firebase/firebase_options.dart';
import 'marsin_site.dart';
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


