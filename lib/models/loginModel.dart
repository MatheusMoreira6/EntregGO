import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginModel {
  static final CollectionReference _firestore = FirebaseFirestore.instance.collection('usuarios');
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<String?> autenticarLogin(String email, String senha) async {
    try {
      final UserCredential credenciais = await _auth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );

      final usuario = await _firestore.doc(credenciais.user?.uid).get();

      if (usuario.exists) {
        final Map<String, dynamic> dadosUsuario = usuario.data() as Map<String, dynamic>;

        return dadosUsuario['tipoConta'];
      }
    } on FirebaseAuthException catch (exception) {
      throw Exception(exception.code);
    } catch (exception) {
      throw Exception('Erro ao autenticar o login!');
    }
  }
}
