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
    apiKey: 'AIzaSyBisA6GkLfvzSa9izC3Mi4gTsMmH4THvcY',
    appId: '1:743633997483:web:e4d33f371ecd9bfe7f31ee',
    messagingSenderId: '743633997483',
    projectId: 'ptoyekbaru2',
    authDomain: 'ptoyekbaru2.firebaseapp.com',
    storageBucket: 'ptoyekbaru2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6PSeebGIIjUhws5LPGJyM5wfh-zhBPYA',
    appId: '1:743633997483:android:8013079069a68f487f31ee',
    messagingSenderId: '743633997483',
    projectId: 'ptoyekbaru2',
    storageBucket: 'ptoyekbaru2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVrFBIJAysjO4fRC1XDaxRSCOZC5TPC-Y',
    appId: '1:743633997483:ios:dbb8015816eb94437f31ee',
    messagingSenderId: '743633997483',
    projectId: 'ptoyekbaru2',
    storageBucket: 'ptoyekbaru2.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVrFBIJAysjO4fRC1XDaxRSCOZC5TPC-Y',
    appId: '1:743633997483:ios:b9fb82d37f91654d7f31ee',
    messagingSenderId: '743633997483',
    projectId: 'ptoyekbaru2',
    storageBucket: 'ptoyekbaru2.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
