import 'package:entreggo/entities/Oferta.dart';
import 'package:entreggo/widgets/ofertaEntregador.dart';
import 'package:flutter/material.dart';
import 'package:entreggo/views/login.dart';
import 'package:entreggo/firebase/firebaseInitialization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitialization.initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Oferta oferta = Oferta(, _pontosEntrega, _valor, _dataPostagem, _dataRealizacao, _entregador, _estabelecimento)
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OfertaEntregador(),
    );
  }
}
