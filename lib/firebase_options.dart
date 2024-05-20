// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAlJZl6gCjxHzG-93077hw90knH0QYv-hw',
    appId: '1:23031447424:web:099820ed7fbcca78e7cb65',
    messagingSenderId: '23031447424',
    projectId: 'furniture-1f40c',
    authDomain: 'furniture-1f40c.firebaseapp.com',
    storageBucket: 'furniture-1f40c.appspot.com',
    measurementId: 'G-VL5R4C0PD7',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMlZnhNaf1sJXvAHf9Q2wjP7N88vOq_xE',
    appId: '1:23031447424:ios:261aa7de5c25885fe7cb65',
    messagingSenderId: '23031447424',
    projectId: 'furniture-1f40c',
    storageBucket: 'furniture-1f40c.appspot.com',
    iosBundleId: 'com.example.furnitureShoppingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMlZnhNaf1sJXvAHf9Q2wjP7N88vOq_xE',
    appId: '1:23031447424:ios:261aa7de5c25885fe7cb65',
    messagingSenderId: '23031447424',
    projectId: 'furniture-1f40c',
    storageBucket: 'furniture-1f40c.appspot.com',
    iosBundleId: 'com.example.furnitureShoppingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAlJZl6gCjxHzG-93077hw90knH0QYv-hw',
    appId: '1:23031447424:web:59c789069fccc287e7cb65',
    messagingSenderId: '23031447424',
    projectId: 'furniture-1f40c',
    authDomain: 'furniture-1f40c.firebaseapp.com',
    storageBucket: 'furniture-1f40c.appspot.com',
    measurementId: 'G-BS523TMVHG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWLbK2TGuPU7hHFpYtvyCPEloCBqFyYik',
    appId: '1:23031447424:android:ad416c570eb487b1e7cb65',
    messagingSenderId: '23031447424',
    projectId: 'furniture-1f40c',
    storageBucket: 'furniture-1f40c.appspot.com',
  );

}