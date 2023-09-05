import 'package:flutter/cupertino.dart';

class CadastroEstabelecimentoController {
  final TextEditingController _razaoSocial = TextEditingController();
  final TextEditingController _nomeFantasia = TextEditingController();
  final TextEditingController _dataAbertura = TextEditingController();
  final TextEditingController _porteEmpresa = TextEditingController();
  final TextEditingController _cnpj = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telefone = TextEditingController();
  final TextEditingController _logradouro = TextEditingController();
  final TextEditingController _numero = TextEditingController();
  final TextEditingController _bairro = TextEditingController();
  final TextEditingController _cidade = TextEditingController();
  final TextEditingController _estado = TextEditingController();
  final TextEditingController _nomeUsuario = TextEditingController();
  final TextEditingController _senha = TextEditingController();
  bool _checkboxVerificacao = false;

  TextEditingController get razaoSocial => _razaoSocial;

  TextEditingController get nomeFantasia => _nomeFantasia;

  TextEditingController get dataAbertura => _dataAbertura;

  TextEditingController get porteEmpresa => _porteEmpresa;

  TextEditingController get cnpj => _cnpj;

  TextEditingController get email => _email;

  TextEditingController get telefone => _telefone;

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
