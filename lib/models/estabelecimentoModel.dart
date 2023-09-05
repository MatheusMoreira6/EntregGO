import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:entreggo/entities/Estabelecimento.dart';

class EstabelecimentoModel {
  static final CollectionReference estabelecimentos = FirebaseFirestore.instance.collection('estabelecimentos');

  static Future<void> salvarEstabelecimento(Estabelecimento estabelecimento) async {
    await estabelecimentos.add(estabelecimento.toMap());
  }
}
