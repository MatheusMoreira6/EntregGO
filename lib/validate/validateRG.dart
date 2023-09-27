class ValidateRG {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um RG!';
    }

    String rg = value.replaceAll(RegExp(r'\D'), '');

    if (rg.length < 5 || rg.length > 9) {
      return 'RG inválido!';
    }

    return null;
  }
}
