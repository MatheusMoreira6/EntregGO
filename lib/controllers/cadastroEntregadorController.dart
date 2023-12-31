import 'package:entreggo/views/inicioEntregador.dart';
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

  final TextEditingController _cep = TextEditingController();
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

  final FocusNode _focoCEP = FocusNode();
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
  final _maskCEP = MaskTextInputFormatter(mask: '#####-###', filter: {"#": RegExp(r'[0-9]')});

  /*
  * Metodos Gets e Sets.
  * */
  TextEditingController get nome => _nome;

  TextEditingController get sobrenome => _sobrenome;

  TextEditingController get cpf => _cpf;

  TextEditingController get rg => _rg;

  TextEditingController get numeroCNH => _numeroCNH;

  TextEditingController get telefone => _telefone;

  TextEditingController get email => _email;

  TextEditingController get senha => _senha;

  TextEditingController get cep => _cep;

  TextEditingController get logradouro => _logradouro;

  TextEditingController get numero => _numero;

  TextEditingController get bairro => _bairro;

  TextEditingController get cidade => _cidade;

  TextEditingController get estado => _estado;

  FocusNode get focoNome => _focoNome;

  FocusNode get focoSobrenome => _focoSobrenome;

  FocusNode get focoCPF => _focoCPF;

  FocusNode get focoRG => _focoRG;

  FocusNode get focoNumeroCNH => _focoNumeroCNH;

  FocusNode get focoTelefone => _focoTelefone;

  FocusNode get focoEmail => _focoEmail;

  FocusNode get focoSenha => _focoSenha;

  FocusNode get focoCEP => _focoCEP;

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

  get maskCEP => _maskCEP;

  set checkboxVerificacao(bool value) {
    _checkboxVerificacao = value;
  }

  /*
  * Metodos de operações da tela.
  * */
  Future<void> cadastrar(BuildContext context) async {
    final senha = sha256.convert(utf8.encode(_senha.text)).toString();

    final Estado estado = Estado(_estado.text);
    final Cidade cidade = Cidade(_cidade.text, estado);
    final Endereco endereco = Endereco(
      _maskCEP.getMaskedText(),
      _logradouro.text,
      int.parse(numero.text),
      _bairro.text,
      cidade,
    );

    EntregadorModel.salvarEntregador(
      Entregador(
        _nome.text,
        _sobrenome.text,
        _maskCPF.getMaskedText(),
        _maskRG.getMaskedText(),
        _maskCNH.getMaskedText(),
        _maskTelefone.getMaskedText(),
        _email.text,
        senha,
        endereco,
      ),
    ).then((credenciais) {
      if (credenciais.user!.uid.isNotEmpty) {
        _dialog(context, 'Cadastro Realizado com Sucesso!');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InicioEntregador(),
          ),
        );
      }
    }).catchError((exception) {
      throw exception;
    });

    _limparCampos();
  }

  void avancarTela(BuildContext context) {
    if (_pageController.hasClients && _pageController.page != null) {
      int paginaAtual = _pageController.page!.round();
      bool validarFormulario = false;

      if (_formKeyTela1.currentState != null && identical(paginaAtual, 0)) {
        validarFormulario = _formKeyTela1.currentState!.validate();
      } else if (_formKeyTela2.currentState != null && identical(paginaAtual, 1)) {
        validarFormulario = _formKeyTela2.currentState!.validate();
      }

      if (paginaAtual >= 0 && paginaAtual <= 1 && validarFormulario) {
        _pageController
            .nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
            )
            .then(
              (value) => _focoCampoCEP(),
            );
      } else if (paginaAtual == 2) {
        if (_checkboxVerificacao) {
          cadastrar(context).catchError((exception) {
            if (exception == 'weak-password') {
              _pageController.jumpToPage(0);
              _focoSenha.requestFocus();

              _dialog(context, 'Senha fraca!');
            } else if (exception == 'email-already-in-use') {
              _pageController.jumpToPage(0);
              _focoEmail.requestFocus();

              _dialog(context, 'O email já está em uso!');
            } else {}
          });
        } else {
          _dialog(context, 'Por favor, aceite os termos de uso!');
        }
      }
    }
  }

  void _focoCampoCEP() {
    if (_pageController.hasClients && _pageController.page != null && _pageController.page!.round() <= 1) {
      _focoCEP.requestFocus();
    }
  }

  void _dialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 5,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004AAD),
                  ),
                  child: const Text('Dispensar'),
                ),
              ),
            ],
          ),
        ),
      ),
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
    _cep.clear();
    _logradouro.clear();
    _numero.clear();
    _bairro.clear();
    _cidade.clear();
    _estado.clear();
  }
}
