import 'package:entreggo/entities/Cidade.dart';

class Endereco {
  String _cep;
  String _logradouro;
  int _numero;
  String _bairro;
  Cidade _cidade;

  Endereco(this._cep, this._logradouro, this._numero, this._bairro, this._cidade);

  Cidade get cidade => _cidade;

  set cidade(Cidade value) {
    _cidade = value;
  }

  String get bairro => _bairro;

  set bairro(String value) {
    _bairro = value;
  }

  int get numero => _numero;

  set numero(int value) {
    _numero = value;
  }

  String get rua => _logradouro;

  set rua(String value) {
    _logradouro = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'logradouro': _logradouro,
      'numero': _numero,
      'bairro': _bairro,
      'cidade': _cidade.toMap(),
    };
  }
}
