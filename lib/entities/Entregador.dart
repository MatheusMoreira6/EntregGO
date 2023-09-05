import 'package:entreggo/entities/Avaliacao.dart';
import 'package:entreggo/entities/Endereco.dart';
import 'package:entreggo/entities/Veiculo.dart';

class Entregador {
  int? _id;
  String _nome;
  String _cpf;
  String _rg;
  String _email;
  String _telefone;
  String _cnh;
  Endereco _endereco;
  String _login;
  String _senha;
  Veiculo _veiculo;
  List<Avaliacao>? _avaliacoes;

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
      this._veiculo,
      this._avaliacoes);

  List<Avaliacao> get avaliacao => _avaliacoes!;

  set avaliacao(List<Avaliacao> value) {
    _avaliacoes = value;
  }

  Veiculo get veiculo => _veiculo;

  set veiculo(Veiculo value) {
    _veiculo = value;
  }

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

  int get id => _id!;

  set id(int value) {
    _id = value;
  }

  //Validação das informações

  bool validarCPF() {
    String cpf = this._cpf.replaceAll(RegExp(r'\D'), '');

    if (cpf.length != 11) return false;

    for (int i = 0; i < 10; i++) {
      if (cpf == '${i}' * 11) return false;
    }

    List<int> numbers =
        cpf.split('').map((number) => int.parse(number)).toList();

    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += numbers[i] * (10 - i);
    }
    int mod = 11 - (sum % 11);
    if (mod == 10 || mod == 11) mod = 0;
    if (mod != numbers[9]) return false;

    sum = 0;
    for (int i = 0; i < 10; i++) {
      sum += numbers[i] * (11 - i);
    }
    mod = 11 - (sum % 11);
    if (mod == 10 || mod == 11) mod = 0;
    if (mod != numbers[10]) return false;

    return true;
  }

  bool validarRG() {
    return this._rg.length >= 5;
  }

  bool validarCNH() {
    String cnh = this._cnh.replaceAll(RegExp(r'\D'), '');

    if (cnh.length != 11) return false;

    return true;
  }

  bool validarEmail() {
    RegExp regex = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$',
      caseSensitive: false,
      multiLine: false,
    );

    return regex.hasMatch(this._email);
  }
}
