import 'package:entreggo/entities/Modelo.dart';

class Veiculo {
  Modelo _modelo;
  String _cor;
  DateTime _ano;
  String _documento;

  Veiculo(this._modelo, this._cor, this._ano, this._documento);

  String get documento => _documento;

  set documento(String value) {
    _documento = value;
  }

  DateTime get ano => _ano;

  set ano(DateTime value) {
    _ano = value;
  }

  String get cor => _cor;

  set cor(String value) {
    _cor = value;
  }

  Modelo get modelo => _modelo;

  set modelo(Modelo value) {
    _modelo = value;
  }
}
