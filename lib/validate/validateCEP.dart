class ValidateCEP {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um CEP!';
    }

    String cep = value.replaceAll(RegExp(r'\D'), '');

    if (cep.length != 8) {
      return 'CEP inválido!';
    }

    return null;
  }
}
