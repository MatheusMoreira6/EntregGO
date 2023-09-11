import 'package:entreggo/entities/Endereco.dart';

class Entregador {
  String _nome;
  String _cpf;
  String _rg;
  String _email;
  String _telefone;
  String _cnh;
  Endereco _endereco;
  String _login;
  String _senha;

  Entregador(
    this._nome,
    this._cpf,
    this._rg,
    this._email,
    this._telefone,
    this._cnh,
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

  String get cnh => _cnh;

  set cnh(String value) {
    _cnh = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get rg => _rg;

  set rg(String value) {
    _rg = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': _nome,
      'cpf': _cpf,
      'rg': _rg,
      'email': _email,
      'telefone': _telefone,
      'cnh': _cnh,
      'endereco': _endereco.toMap(),
      'tipoConta': 'Entregador'
    };
  }
}
