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
    apiKey: 'AIzaSyCs4c_4_JKKCF8jornY3kwwMYcmsuN51_k',
    appId: '1:678188170104:web:3196dfe09ef16c6602e68d',
    messagingSenderId: '678188170104',
    projectId: 'expense-tracker-be078',
    authDomain: 'expense-tracker-be078.firebaseapp.com',
    storageBucket: 'expense-tracker-be078.appspot.com',
    measurementId: 'G-YL9SL85ET4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdDMg6Hlp4iGKWwADoo35bBc0E3-KVtJs',
    appId: '1:678188170104:android:e96e74f2efd5cb4602e68d',
    messagingSenderId: '678188170104',
    projectId: 'expense-tracker-be078',
    storageBucket: 'expense-tracker-be078.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBZ5ifXGcIm1VdxwyCi3ydlavyqguv84U',
    appId: '1:678188170104:ios:c5b166f492d451c102e68d',
    messagingSenderId: '678188170104',
    projectId: 'expense-tracker-be078',
    storageBucket: 'expense-tracker-be078.appspot.com',
    iosBundleId: 'com.example.expenseTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBZ5ifXGcIm1VdxwyCi3ydlavyqguv84U',
    appId: '1:678188170104:ios:60ff40700a5e2f5302e68d',
    messagingSenderId: '678188170104',
    projectId: 'expense-tracker-be078',
    storageBucket: 'expense-tracker-be078.appspot.com',
    iosBundleId: 'com.example.expenseTracker.RunnerTests',
  );
}
