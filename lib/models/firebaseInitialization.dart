import 'package:firebase_core/firebase_core.dart';
import 'package:entreggo/models/firebaseOptions.dart';

class FirebaseInitialization {
  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
