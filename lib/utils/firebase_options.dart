// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB5GFiGSqPib2UyoHfPi4IROExAlSrtzRA',
    appId: '1:105133918015:web:638514e8d18e1f5f70f58a',
    messagingSenderId: '105133918015',
    projectId: 'marsin-e4819',
    authDomain: 'marsin-e4819.firebaseapp.com',
    storageBucket: 'marsin-e4819.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc-0rZO5rNAHig_0rA0TN5xoQkZubAd5M',
    appId: '1:105133918015:android:a7f6cac0f9e3bab070f58a',
    messagingSenderId: '105133918015',
    projectId: 'marsin-e4819',
    storageBucket: 'marsin-e4819.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbulV4QWLPZmN5dPSaX1SFdReQ0p5tP6E',
    appId: '1:105133918015:ios:120c75fc3babf28470f58a',
    messagingSenderId: '105133918015',
    projectId: 'marsin-e4819',
    storageBucket: 'marsin-e4819.appspot.com',
    iosClientId: '105133918015-fucfcdkv0epgat3eir88mf6tal4bd07i.apps.googleusercontent.com',
    iosBundleId: 'com.example.marsin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbulV4QWLPZmN5dPSaX1SFdReQ0p5tP6E',
    appId: '1:105133918015:ios:120c75fc3babf28470f58a',
    messagingSenderId: '105133918015',
    projectId: 'marsin-e4819',
    storageBucket: 'marsin-e4819.appspot.com',
    iosClientId: '105133918015-fucfcdkv0epgat3eir88mf6tal4bd07i.apps.googleusercontent.com',
    iosBundleId: 'com.example.marsin',
  );
}
