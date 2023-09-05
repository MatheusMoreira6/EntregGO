import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWjmaX0LS26d137NNCLXWxIfAUaM5Zp8s',
    appId: '1:255972789686:android:354bd82d5a054694c0c517',
    messagingSenderId: '255972789686',
    projectId: 'entreggo-6e3ee',
    storageBucket: 'entreggo-6e3ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuYxYe4eJ6v4FfLt5N4pPVD550f5Ik3i8',
    appId: '1:255972789686:ios:844e86a6a316df1bc0c517',
    messagingSenderId: '255972789686',
    projectId: 'entreggo-6e3ee',
    storageBucket: 'entreggo-6e3ee.appspot.com',
    iosClientId: '255972789686-qlhs9ghvv2m633e18fa7qs0ujp75noeo.apps.googleusercontent.com',
    iosBundleId: 'com.unigran.engsoftware.entreggo',
  );
}
