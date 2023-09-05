import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:entreggo/entities/Entregador.dart';

class EntregadorModel {
  static final CollectionReference entregadores = FirebaseFirestore.instance.collection('entregadores');

  static Future<void> salvarEntregador(Entregador entregador) async {
    await entregadores.add(entregador.toMap());
  }
}
