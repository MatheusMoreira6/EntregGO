import 'package:intl/intl.dart';
import 'package:entreggo/entities/Entregador.dart';
import 'package:entreggo/entities/Estabelecimento.dart';

class Oferta {
  int _pontosEntrega;
  double _valor;
  DateTime _dataPostagem;
  DateTime _dataRealizacao;
  Entregador _entregador;
  Estabelecimento _estabelecimento;

  Oferta({
    required int pontosEntrega,
    required double valor,
    required DateTime dataPostagem,
    required DateTime dataRealizacao,
    required Entregador entregador,
    required Estabelecimento estabelecimento,
  })  : _pontosEntrega = pontosEntrega,
        _valor = valor,
        _dataPostagem = dataPostagem,
        _dataRealizacao = dataRealizacao,
        _entregador = entregador,
        _estabelecimento = estabelecimento;

  Estabelecimento get estabelecimento => _estabelecimento;

  set estabelecimento(Estabelecimento value) {
    _estabelecimento = value;
  }

  Entregador get entregador => _entregador;

  set entregador(Entregador value) {
    _entregador = value;
  }

  int get pontosEntrega => _pontosEntrega;

  set pontosEntrega(int value) {
    _pontosEntrega = value;
  }

  double get valor => _valor;

  set valor(double value) {
    _valor = value;
  }

  String getDataRealizacao() {
    return DateFormat('dd/MM/yyyy').format(_dataRealizacao);
  }

  set dataRealizacao(DateTime value) {
    _dataRealizacao = value;
  }

  String getDataPostagem() {
    return DateFormat('dd/MM/yyyy').format(_dataPostagem);
  }

  set dataPostagem(DateTime value) {
    _dataPostagem = value;
  }
}
