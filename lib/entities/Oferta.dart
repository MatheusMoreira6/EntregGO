import 'package:entreggo/entities/Entregador.dart';
import 'package:entreggo/entities/Estabelecimento.dart';

class Oferta {
  int _id;
  DateTime _dataPostagem;
  DateTime _dataRealizacao;
  double _valor;
  String _rota;
  Entregador? _entregador;
  Estabelecimento _estabelecimento;

  Oferta(
    this._id,
    this._dataPostagem,
    this._dataRealizacao,
    this._valor,
    this._rota,
    this._entregador,
    this._estabelecimento,
  );

  Estabelecimento get estabelecimento => _estabelecimento;

  set estabelecimento(Estabelecimento value) {
    _estabelecimento = value;
  }

  Entregador get entregador => _entregador!;

  set entregador(Entregador value) {
    _entregador = value;
  }

  String get rota => _rota;

  set rota(String value) {
    _rota = value;
  }

  double get valor => _valor;

  set valor(double value) {
    _valor = value;
  }

  DateTime get dataRealizacao => _dataRealizacao;

  set dataRealizacao(DateTime value) {
    _dataRealizacao = value;
  }

  DateTime get dataPostagem => _dataPostagem;

  set dataPostagem(DateTime value) {
    _dataPostagem = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
