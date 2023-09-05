import 'package:flutter/material.dart';
import 'package:entreggo/views/login.dart';
import 'package:entreggo/models/firebaseInitialization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitialization.initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
