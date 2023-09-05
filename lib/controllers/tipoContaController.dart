import 'package:entreggo/views/cadastroEstabelecimento.dart';
import 'package:flutter/material.dart';

class TipoContaController {
  int _botaoSelecionado = 0;

  int get botaoSelecionado => _botaoSelecionado;

  set botaoSelecionado(int value) {
    _botaoSelecionado = value;
  }

  void continuar(BuildContext context) {
    if (_botaoSelecionado == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CadastroEstabelecimento(),
        ),
      );
    } else if (_botaoSelecionado == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CadastroEstabelecimento(),
        ),
      );
    }
  }
}
