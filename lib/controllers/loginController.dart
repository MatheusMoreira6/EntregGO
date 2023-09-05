import 'package:entreggo/views/tipoConta.dart';
import 'package:flutter/material.dart';

class LoginController {
  TextEditingController _usuario = TextEditingController();
  TextEditingController _senha = TextEditingController();

  TextEditingController getControllerUsuario() {
    return (_usuario);
  }

  TextEditingController getControllerSenha() {
    return (_senha);
  }

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
