import 'package:entreggo/entities/Avaliacao.dart';
import 'package:entreggo/entities/Endereco.dart';

class Estabelecimento {
  int? _id;
  String _razaoSocial;
  String _nomeFantasia;
  DateTime _dataAbertura;
  String _porteEmpresa;
  String _cnpj;
  String _email;
  String _telefone;
  Endereco _endereco;
  String _tipo;
  String _login;
  String _senha;
  List<Avaliacao>? _avaliacoes;

  Estabelecimento(
      this._id,
      this._razaoSocial,
      this._nomeFantasia,
      this._dataAbertura,
      this._porteEmpresa,
      this._cnpj,
      this._email,
      this._telefone,
      this._endereco,
      this._tipo,
      this._login,
      this._senha,
      this._avaliacoes);

  List<Avaliacao> get avaliacoes => _avaliacoes!;

  set avaliacoes(List<Avaliacao> value) {
    _avaliacoes = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get login => _login;

  set login(String value) {
    _login = value;
  }

  String get tipo => _tipo;

  set tipo(String value) {
    _tipo = value;
  }

  Endereco get endereco => _endereco;

  set endereco(Endereco value) {
    _endereco = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get cnpj => _cnpj;

  set cnpj(String value) {
    _cnpj = value;
  }

  String get porteEmpresa => _porteEmpresa;

  set porteEmpresa(String value) {
    _porteEmpresa = value;
  }

  DateTime get dataAbertura => _dataAbertura;

  set dataAbertura(DateTime value) {
    _dataAbertura = value;
  }

  String get nomeFantasia => _nomeFantasia;

  set nomeFantasia(String value) {
    _nomeFantasia = value;
  }

  String get razaoSocial => _razaoSocial;

  set razaoSocial(String value) {
    _razaoSocial = value;
  }

  int get id => _id!;

  set id(int value) {
    _id = value;
  }

  //Validação das Informações

  bool validarCNPJ() {
    String cnpj = this._cnpj.replaceAll(RegExp(r'\D'), '');

    if (cnpj.length != 14) return false;

    List<int> numbers =
        cnpj.split('').map((number) => int.parse(number)).toList();

    // Verifica se todos os dígitos são iguais (caso contrário, não é válido)
    if (Set.from(numbers).length == 1) return false;

    int sum = 0;
    int digit = 0;
    int weight = 2;

    for (int i = 11; i >= 0; i--) {
      sum += numbers[i] * weight;
      weight = (weight == 9) ? 2 : weight + 1;

      if (i == 2) {
        digit = sum % 11;
        digit = digit < 2 ? 0 : 11 - digit;

        if (numbers[12] != digit) return false;
        sum = 0;
      }
    }

    digit = sum % 11;
    digit = digit < 2 ? 0 : 11 - digit;

    if (numbers[13] != digit) return false;

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
