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
    apiKey: 'AIzaSyC8MFpZ2z10t8RDjOCmLDPbqTCRboC1L4g',
    appId: '1:773269994371:web:c7de65f1bd3d047b1694b6',
    messagingSenderId: '773269994371',
    projectId: 'fir-login-cff89',
    authDomain: 'fir-login-cff89.firebaseapp.com',
    storageBucket: 'fir-login-cff89.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTSr_7fTo7hZhyVNDnrZ43sRoAtfgf76A',
    appId: '1:773269994371:android:aae218ca092a02ac1694b6',
    messagingSenderId: '773269994371',
    projectId: 'fir-login-cff89',
    storageBucket: 'fir-login-cff89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbQmL9Wy_KRJG8GxrjmFJBKtzuF9ZM_Gg',
    appId: '1:773269994371:ios:41e50850d0720a951694b6',
    messagingSenderId: '773269994371',
    projectId: 'fir-login-cff89',
    storageBucket: 'fir-login-cff89.appspot.com',
    androidClientId: '773269994371-emgp21klct7tulbfac1ju32ki23k9i3h.apps.googleusercontent.com',
    iosClientId: '773269994371-3j14f62lh31ejnvg131ihat5s9ejbd3b.apps.googleusercontent.com',
    iosBundleId: 'com.example.authTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbQmL9Wy_KRJG8GxrjmFJBKtzuF9ZM_Gg',
    appId: '1:773269994371:ios:41e50850d0720a951694b6',
    messagingSenderId: '773269994371',
    projectId: 'fir-login-cff89',
    storageBucket: 'fir-login-cff89.appspot.com',
    androidClientId: '773269994371-emgp21klct7tulbfac1ju32ki23k9i3h.apps.googleusercontent.com',
    iosClientId: '773269994371-3j14f62lh31ejnvg131ihat5s9ejbd3b.apps.googleusercontent.com',
    iosBundleId: 'com.example.authTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8MFpZ2z10t8RDjOCmLDPbqTCRboC1L4g',
    appId: '1:773269994371:web:583cc7e98800ea161694b6',
    messagingSenderId: '773269994371',
    projectId: 'fir-login-cff89',
    authDomain: 'fir-login-cff89.firebaseapp.com',
    storageBucket: 'fir-login-cff89.appspot.com',
  );
}
