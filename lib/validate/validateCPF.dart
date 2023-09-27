class ValidateCPF {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um CPF!';
    }

    // Remove caracteres não numéricos
    String cpf = value.replaceAll(RegExp(r'\D'), '');

    if (cpf.length != 11) {
      return 'CPF inválido!';
    }

    // Validação dos dígitos verificadores
    for (int s = 9; s < 11; s++) {
      int sum = 0;

      for (int i = 0; i < s; i++) {
        sum += int.parse(cpf[i]) * ((s + 1) - i);
      }

      int remainder = sum % 11;

      if (remainder < 2) {
        remainder = 0;
      } else {
        remainder = 11 - remainder;
      }

      if (remainder != int.parse(cpf[s])) {
        return 'CPF inválido!';
      }
    }

    return null;
  }
}
