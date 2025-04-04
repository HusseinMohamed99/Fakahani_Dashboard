// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  static FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.env['firebaseApiKeyWeb']!,
    appId: dotenv.env['firebaseAppIdWeb']!,
    messagingSenderId: '993626480061',
    projectId: 'fakahani-73130',
    authDomain: 'fakahani-73130.firebaseapp.com',
    storageBucket: 'fakahani-73130.firebasestorage.app',
    measurementId: 'G-KX9XYYNMWD',
  );

  static FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.env['firebaseApiKeyAndroid']!,
    appId: dotenv.env['firebaseAppIdAndroid']!,
    messagingSenderId: '993626480061',
    projectId: 'fakahani-73130',
    storageBucket: 'fakahani-73130.firebasestorage.app',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.env['firebaseApiKeyIos']!,
    appId: dotenv.env['firebaseAppIdIos']!,
    messagingSenderId: '993626480061',
    projectId: 'fakahani-73130',
    storageBucket: 'fakahani-73130.firebasestorage.app',
    androidClientId:
        '993626480061-4d77v771203tutcjldrb4vbmvjk13h3t.apps.googleusercontent.com',
    iosClientId:
        '993626480061-lf3db293nqurkff7bvhm1s5faj6sm52f.apps.googleusercontent.com',
    iosBundleId: 'com.Dev.fakahaniDashboard',
  );

  static FirebaseOptions macos = FirebaseOptions(
    apiKey: dotenv.env['firebaseApiKeyMacOs']!,
    appId: dotenv.env['firebaseAppIdMacOs']!,
    messagingSenderId: '993626480061',
    projectId: 'fakahani-73130',
    storageBucket: 'fakahani-73130.firebasestorage.app',
    androidClientId:
        '993626480061-4d77v771203tutcjldrb4vbmvjk13h3t.apps.googleusercontent.com',
    iosClientId:
        '993626480061-lf3db293nqurkff7bvhm1s5faj6sm52f.apps.googleusercontent.com',
    iosBundleId: 'com.Dev.fakahaniDashboard',
  );

  static FirebaseOptions windows = FirebaseOptions(
    apiKey: dotenv.env['firebaseApiKeyWindows']!,
    appId: dotenv.env['firebaseAppIdWindows']!,
    messagingSenderId: '993626480061',
    projectId: 'fakahani-73130',
    authDomain: 'fakahani-73130.firebaseapp.com',
    storageBucket: 'fakahani-73130.firebasestorage.app',
    measurementId: 'G-1W4LP6WBKN',
  );
}
