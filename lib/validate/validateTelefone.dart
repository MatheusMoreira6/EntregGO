class ValidateTelefone {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um número de celular!';
    }

    String celular = value.replaceAll(RegExp(r'\D'), '');

    // Verifica se tem o tamanho correto: 2 dígitos para o DDD + 9 dígitos para o número
    if (celular.length != 11 || celular[2] != '9') {
      return 'Número de celular inválido!';
    }

    return null;
  }
}
