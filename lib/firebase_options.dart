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
    apiKey: 'AIzaSyCTREJETzcup7ELYF9uYBHQrz0qUvqRs44',
    appId: '1:340047693711:web:d78f9dc9a2dad9ba5a6dfa',
    messagingSenderId: '340047693711',
    projectId: 'firebase-video-call-webrtc',
    authDomain: 'fir-video-call-webrtc.firebaseapp.com',
    storageBucket: 'firebase-video-call-webrtc.appspot.com',
  );
/*
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA05KPMeRCE4V8xnT2YeLpPlPLQm5gtxgM',
    appId: '1:340047693711:android:65c14573347575a15a6dfa',
    messagingSenderId: '340047693711',
    projectId: 'firebase-video-call-webrtc',
    storageBucket: 'firebase-video-call-webrtc.appspot.com',
  );*/
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeZfplsC_YW7bwj6XXQeOj0GlJfg9qirI',
    appId: '1:983528704143:android:cbced18f48e8cc07d888fa',
    messagingSenderId: '983528704143',
    projectId: 'petseba-85b3a',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaUePsfg75I-tkLW_r8c-a1vIyjYcsApo',
    appId: '1:340047693711:ios:3fc08586602f0f4d5a6dfa',
    messagingSenderId: '340047693711',
    projectId: 'firebase-video-call-webrtc',
    storageBucket: 'firebase-video-call-webrtc.appspot.com',
    iosClientId: '340047693711-kn33imgei727fd4fsrnn8qc536rhuiep.apps.googleusercontent.com',
    iosBundleId: 'it.maionemiky.flutterFirebaseVideoCallWebrtc',
  );
}
