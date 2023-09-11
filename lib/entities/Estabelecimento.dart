import 'package:entreggo/entities/Endereco.dart';

class Estabelecimento {
  String _razaoSocial;
  String _nomeFantasia;
  DateTime _dataAbertura;
  String _porteEmpresa;
  String _cnpj;
  String _email;
  String _telefone;
  Endereco _endereco;
  String _login;
  String _senha;

  Estabelecimento(
    this._razaoSocial,
    this._nomeFantasia,
    this._dataAbertura,
    this._porteEmpresa,
    this._cnpj,
    this._email,
    this._telefone,
    this._endereco,
    this._login,
    this._senha,
  );

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get login => _login;

  set login(String value) {
    _login = value;
  }

  Endereco get endereco => _endereco;

  set endereco(Endereco value) {
    _endereco = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get cnpj => _cnpj;

  set cnpj(String value) {
    _cnpj = value;
  }

  String get porteEmpresa => _porteEmpresa;

  set porteEmpresa(String value) {
    _porteEmpresa = value;
  }

  DateTime get dataAbertura => _dataAbertura;

  set dataAbertura(DateTime value) {
    _dataAbertura = value;
  }

  String get nomeFantasia => _nomeFantasia;

  set nomeFantasia(String value) {
    _nomeFantasia = value;
  }

  String get razaoSocial => _razaoSocial;

  set razaoSocial(String value) {
    _razaoSocial = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'razaoSocial': _razaoSocial,
      'nomeFantasia': _nomeFantasia,
      'dataAbertura': _dataAbertura.toIso8601String(),
      'porteEmpresa': _porteEmpresa,
      'cnpj': _cnpj,
      'email': _email,
      'telefone': _telefone,
      'endereco': _endereco.toMap(),
      'tipoConta': 'Estabelecimento',
    };
  }
}
