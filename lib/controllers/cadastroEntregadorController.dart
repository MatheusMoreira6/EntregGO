import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:entreggo/entities/Cidade.dart';
import 'package:entreggo/entities/Endereco.dart';
import 'package:entreggo/entities/Estado.dart';
import 'package:entreggo/entities/Entregador.dart';
import 'package:entreggo/models/entregadorModel.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class CadastroEntregadorController {
  /*
  * Declaração de Variaveis.
  * */
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _sobrenome = TextEditingController();
  final TextEditingController _cpf = TextEditingController();
  final TextEditingController _rg = TextEditingController();
  final TextEditingController _numeroCNH = TextEditingController();
  final TextEditingController _telefone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  final TextEditingController _logradouro = TextEditingController();
  final TextEditingController _numero = TextEditingController();
  final TextEditingController _bairro = TextEditingController();
  final TextEditingController _cidade = TextEditingController();
  final TextEditingController _estado = TextEditingController();

  final FocusNode _focoNome = FocusNode();
  final FocusNode _focoSobrenome = FocusNode();
  final FocusNode _focoCPF = FocusNode();
  final FocusNode _focoRG = FocusNode();
  final FocusNode _focoNumeroCNH = FocusNode();
  final FocusNode _focoTelefone = FocusNode();
  final FocusNode _focoEmail = FocusNode();
  final FocusNode _focoSenha = FocusNode();

  final FocusNode _focoLogradouro = FocusNode();
  final FocusNode _focoNumero = FocusNode();
  final FocusNode _focoBairro = FocusNode();
  final FocusNode _focoCidade = FocusNode();
  final FocusNode _focoEstado = FocusNode();

  final FocusNode _focoCheckBox = FocusNode();

  final FocusNode _focoContinuar = FocusNode();
  final FocusNode _focoCadastrar = FocusNode();

  final GlobalKey<FormState> _formKeyTela1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyTela2 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyTela3 = GlobalKey<FormState>();
  final PageController _pageController = PageController();
  bool _checkboxVerificacao = false;

  final _maskCPF = MaskTextInputFormatter(mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});
  final _maskRG = MaskTextInputFormatter(mask: '##.###.###-#', filter: {"#": RegExp(r'[0-9]')});
  final _maskCNH = MaskTextInputFormatter(mask: '###########', filter: {"#": RegExp(r'[0-9]')});
  final _maskTelefone = MaskTextInputFormatter(mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  /*
  * Metodos Gets e Sets.
  * */
  TextEditingController get nome => _nome;

  TextEditingController get sobrenome => _sobrenome;

  TextEditingController get cpf => _cpf;

  TextEditingController get rg => _rg;

  TextEditingController get telefone => _telefone;

  TextEditingController get numeroCNH => _numeroCNH;

  TextEditingController get email => _email;

  TextEditingController get senha => _senha;

  TextEditingController get logradouro => _logradouro;

  TextEditingController get numero => _numero;

  TextEditingController get bairro => _bairro;

  TextEditingController get cidade => _cidade;

  TextEditingController get estado => _estado;

  FocusNode get focoNome => _focoNome;

  FocusNode get focoSobrenome => _focoSobrenome;

  FocusNode get focoCPF => _focoCPF;

  FocusNode get focoRG => _focoRG;

  FocusNode get focoTelefone => _focoTelefone;

  FocusNode get focoNumeroCNH => _focoNumeroCNH;

  FocusNode get focoEmail => _focoEmail;

  FocusNode get focoSenha => _focoSenha;

  FocusNode get focoLogradouro => _focoLogradouro;

  FocusNode get focoNumero => _focoNumero;

  FocusNode get focoBairro => _focoBairro;

  FocusNode get focoCidade => _focoCidade;

  FocusNode get focoEstado => _focoEstado;

  FocusNode get focoCheckBox => _focoCheckBox;

  FocusNode get focoContinuar => _focoContinuar;

  FocusNode get focoCadastrar => _focoCadastrar;

  GlobalKey<FormState> get formKeyTela1 => _formKeyTela1;

  GlobalKey<FormState> get formKeyTela2 => _formKeyTela2;

  GlobalKey<FormState> get formKeyTela3 => _formKeyTela3;

  PageController get pageController => _pageController;

  bool get checkboxVerificacao => _checkboxVerificacao;

  get maskCPF => _maskCPF;

  get maskRG => _maskRG;

  get maskCNH => _maskCNH;

  get maskTelefone => _maskTelefone;

  set checkboxVerificacao(bool value) {
    _checkboxVerificacao = value;
  }

  /*
  * Metodos de operações da tela.
  * */
  void cadastrar(BuildContext context) {
    final senha = sha256.convert(utf8.encode(_senha.text)).toString();

    final Estado estado = Estado(_estado.text);
    final Cidade cidade = Cidade(_cidade.text, estado);
    final Endereco endereco = Endereco(
      _logradouro.text,
      int.parse(numero.text),
      _bairro.text,
      cidade,
    );

    try {
      EntregadorModel.salvarEntregador(
        Entregador(
          _nome.text,
          _maskCPF.getMaskedText(),
          _maskRG.getMaskedText(),
          _maskCNH.getMaskedText(),
          _maskTelefone.getMaskedText(),
          _email.text,
          senha,
          endereco,
        ),
      ).then((credenciais) {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const TipoConta(),
        //   ),
        // );
      });
    } catch (exception) {
      if (exception == 'weak-password') {
        print('The password provided is too weak.');
      } else if (exception == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {}
    }

    _limparCampos();
  }

  void avancarTela() {
    _pageController
        .nextPage(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        )
        .then(
          (value) => _focoLogradouro.requestFocus(),
        );
  }

  void _limparCampos() {
    _nome.clear();
    _cpf.clear();
    _rg.clear();
    _numeroCNH.clear();
    _telefone.clear();
    _email.clear();
    _senha.clear();
    _logradouro.clear();
    _numero.clear();
    _bairro.clear();
    _cidade.clear();
    _estado.clear();
  }
}
