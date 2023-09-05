import 'package:flutter/material.dart';

class CadastroEntregadorController {
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _cpf = TextEditingController();
  final TextEditingController _rg = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telefone = TextEditingController();
  final TextEditingController _numeroCNH = TextEditingController();
  final TextEditingController _logradouro = TextEditingController();
  final TextEditingController _numero = TextEditingController();
  final TextEditingController _bairro = TextEditingController();
  final TextEditingController _cidade = TextEditingController();
  final TextEditingController _estado = TextEditingController();
  final TextEditingController _nomeUsuario = TextEditingController();
  final TextEditingController _senha = TextEditingController();
  bool _checkboxVerificacao = false;

  TextEditingController get nome => _nome;

  TextEditingController get cpf => _cpf;

  TextEditingController get rg => _rg;

  TextEditingController get email => _email;

  TextEditingController get telefone => _telefone;

  TextEditingController get numeroCNH => _numeroCNH;

  TextEditingController get logradouro => _logradouro;

  TextEditingController get numero => _numero;

  TextEditingController get bairro => _bairro;

  TextEditingController get cidade => _cidade;

  TextEditingController get estado => _estado;

  TextEditingController get nomeUsuario => _nomeUsuario;

  TextEditingController get senha => _senha;

  bool get checkboxVerificacao => _checkboxVerificacao;

  set checkboxVerificacao(bool value) {
    _checkboxVerificacao = value;
  }

  void cadastrar() {}
}
