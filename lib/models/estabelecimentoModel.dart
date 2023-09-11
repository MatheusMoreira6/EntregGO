import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:entreggo/entities/Estabelecimento.dart';

class EstabelecimentoModel {
  static final CollectionReference _firestore = FirebaseFirestore.instance.collection('usuarios');
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<UserCredential> salvarEstabelecimento(Estabelecimento estabelecimento) async {
    try {
      final UserCredential credenciais = await _auth.createUserWithEmailAndPassword(
        email: estabelecimento.email,
        password: estabelecimento.senha,
      );

      try {
        await _firestore.doc(credenciais.user?.uid).set(estabelecimento.toMap());
      } catch (exception) {
        throw Exception('Erro ao gravar os dados no banco!');
      }

      return credenciais;
    } on FirebaseAuthException catch (exception) {
      throw Exception(exception.code);
    } catch (exception) {
      throw Exception('Erro ao gravar o login no banco!');
    }
  }
}
