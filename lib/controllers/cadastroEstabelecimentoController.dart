import 'package:entreggo/entities/Cidade.dart';
import 'package:entreggo/entities/Endereco.dart';
import 'package:entreggo/entities/Estado.dart';
import 'package:entreggo/entities/Estabelecimento.dart';
import 'package:entreggo/models/estabelecimentoModel.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class CadastroEstabelecimentoController {
  final TextEditingController _razaoSocial = TextEditingController();
  final TextEditingController _nomeFantasia = TextEditingController();
  final TextEditingController _dataAbertura = TextEditingController();
  final TextEditingController _porteEmpresa = TextEditingController();
  final TextEditingController _cnpj = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telefone = TextEditingController();
  final TextEditingController _cep = TextEditingController();
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

  void cadastrar() {
    final senha = sha256.convert(utf8.encode(_senha.text)).toString();

    final Estado estado = Estado(_estado.text);
    final Cidade cidade = Cidade(_cidade.text, estado);
    final Endereco endereco = Endereco(
      _cep.text,
      _logradouro.text,
      int.parse(numero.text),
      _bairro.text,
      cidade,
    );

    EstabelecimentoModel.salvarEstabelecimento(
      Estabelecimento(_razaoSocial.text, _nomeFantasia.text, DateTime.parse(_dataAbertura.text), _porteEmpresa.text, _cnpj.text,
          _email.text, _telefone.text, endereco, _nomeUsuario.text, senha),
    ).then((credenciais) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const TipoConta(),
      //   ),
      // );
    }).catchError((exception) {
      if (exception == 'weak-password') {
        print('The password provided is too weak.');
      } else if (exception == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {}
    });

    _limparCampos();
  }

  void _limparCampos() {
    _razaoSocial.clear();
    _nomeFantasia.clear();
    _dataAbertura.clear();
    _porteEmpresa.clear();
    _cnpj.clear();
    _email.clear();
    _telefone.clear();
    _logradouro.clear();
    _numero.clear();
    _bairro.clear();
    _cidade.clear();
    _estado.clear();
    _nomeUsuario.clear();
    _senha.clear();
  }
}
