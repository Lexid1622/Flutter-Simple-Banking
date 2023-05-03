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
    apiKey: 'AIzaSyAz--hYFyTqFvsJ-uCqBkPzpf2blbcDptA',
    appId: '1:216705380150:web:07157af65aeadd04510d97',
    messagingSenderId: '216705380150',
    projectId: 'davisflutterbanking',
    authDomain: 'davisflutterbanking.firebaseapp.com',
    storageBucket: 'davisflutterbanking.appspot.com',
    measurementId: 'G-DMMFXF3HMC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOkdBUaR3ObVOPQ47fYwcqfQtKjR_qwpw',
    appId: '1:216705380150:android:b4406cbc58f0e6df510d97',
    messagingSenderId: '216705380150',
    projectId: 'davisflutterbanking',
    storageBucket: 'davisflutterbanking.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgBG9SbJjor4_zO7N4xLy-665auKwycxk',
    appId: '1:216705380150:ios:e7370d57407f308f510d97',
    messagingSenderId: '216705380150',
    projectId: 'davisflutterbanking',
    storageBucket: 'davisflutterbanking.appspot.com',
    iosClientId: '216705380150-qjj4vllh4333eg1ldik8bvg8l1u57mm9.apps.googleusercontent.com',
    iosBundleId: 'com.example.test5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgBG9SbJjor4_zO7N4xLy-665auKwycxk',
    appId: '1:216705380150:ios:e7370d57407f308f510d97',
    messagingSenderId: '216705380150',
    projectId: 'davisflutterbanking',
    storageBucket: 'davisflutterbanking.appspot.com',
    iosClientId: '216705380150-qjj4vllh4333eg1ldik8bvg8l1u57mm9.apps.googleusercontent.com',
    iosBundleId: 'com.example.test5',
  );
}
