import 'package:entreggo/views/tipoConta.dart';
import 'package:flutter/material.dart';

class LoginController {
  TextEditingController _usuario = TextEditingController();
  TextEditingController _senha = TextEditingController();

  TextEditingController get usuario => _usuario;

  TextEditingController get senha => _senha;

  void login() {}

  void cadastrar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TipoConta(),
      ),
    );
  }
}
