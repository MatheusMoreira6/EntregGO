import 'package:entreggo/entities/Marca.dart';

class Modelo {
  Marca _marca;
  String _nome;

  Modelo(this._marca, this._nome);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Marca get marca => _marca;

  set marca(Marca value) {
    _marca = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'marca': _marca.toMap(),
      'nome': _nome,
    };
  }
}
