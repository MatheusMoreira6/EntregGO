import 'package:entreggo/entities/Endereco.dart';

class Entregador {
  String _nome;
  String _cpf;
  String _rg;
  String _cnh;
  String _telefone;
  String _email;
  String _senha;
  Endereco _endereco;

  Entregador(
    this._nome,
    this._cpf,
    this._rg,
    this._cnh,
    this._telefone,
    this._email,
    this._senha,
    this._endereco,
  );

  String get nome => _nome;

  String get cpf => _cpf;

  String get rg => _rg;

  String get cnh => _cnh;

  String get telefone => _telefone;

  String get email => _email;

  String get senha => _senha;

  Endereco get endereco => _endereco;

  Map<String, dynamic> toMap() {
    return {
      'nome': _nome,
      'cpf': _cpf,
      'rg': _rg,
      'telefone': _telefone,
      'cnh': _cnh,
      'endereco': _endereco.toMap(),
      'tipoConta': 'Entregador'
    };
  }
}
