import 'package:entreggo/views/inicioEstabelecimento.dart';
import 'package:entreggo/views/inicioEntregador.dart';
import 'package:entreggo/views/tipoConta.dart';
import 'package:entreggo/models/loginModel.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class LoginController {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _focoEmail = FocusNode();
  final FocusNode _focoSenha = FocusNode();
  final FocusNode _focoLogin = FocusNode();

  TextEditingController get email => _email;

  TextEditingController get senha => _senha;

  GlobalKey<FormState> get formKey => _formKey;

  FocusNode get focoEmail => _focoEmail;

  FocusNode get focoSenha => _focoSenha;

  FocusNode get focoLogin => _focoLogin;

  Future<void> login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final senha = sha256.convert(utf8.encode(_senha.text)).toString();

      await LoginModel.autenticarLogin(_email.text, senha).then((tipoConta) {
        if (tipoConta == 'Entregador') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InicioEntregador(),
            ),
          );
        } else if (tipoConta == 'Estabelecimento') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InicioEstabelecimento(),
            ),
          );
        } else {
          throw Exception('Por favor, entre em contato\ncom o suporte!');
        }
      }).catchError((exception) {
        if (exception.toString().contains('user-not-found')) {
          throw Exception('E-mail Não Encontrado!');
        } else if (exception.toString().contains('wrong-password')) {
          throw Exception('Senha Incorreta!');
        } else if (exception.toString().contains('too-many-requests')) {
          throw Exception('Por favor, tente novamente\nmais tarde!');
        } else {
          throw Exception('Falha ao Realizar o Login!');
        }
      });
    }
  }

  void cadastrar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TipoConta(),
      ),
    );
  }
}
