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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD7RdgyjlQK2wo3gNJn7ZQ8lgBlHQ1gGwY',
    appId: '1:498751366733:web:8ba60ad38e69a15a4ade04',
    messagingSenderId: '498751366733',
    projectId: 'mashood-dev-portfolio',
    authDomain: 'mashood-dev-portfolio.firebaseapp.com',
    storageBucket: 'mashood-dev-portfolio.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxuPORtjmZsXZ4Z1I7RMI7JOwjIymQ_r0',
    appId: '1:498751366733:android:89c2681c0ea896e84ade04',
    messagingSenderId: '498751366733',
    projectId: 'mashood-dev-portfolio',
    storageBucket: 'mashood-dev-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvob1sV7CBxHs6z5OMWSIkL5wSmooJzyM',
    appId: '1:498751366733:ios:0afad362eb1451224ade04',
    messagingSenderId: '498751366733',
    projectId: 'mashood-dev-portfolio',
    storageBucket: 'mashood-dev-portfolio.appspot.com',
    iosClientId: '498751366733-plen3r7b5st5f5php01qldhqu3i81hrq.apps.googleusercontent.com',
    iosBundleId: 'com.example.myPortfolio',
  );
}