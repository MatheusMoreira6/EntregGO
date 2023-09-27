class ValidateEmail {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um e-mail!';
    }

    bool emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value);
    if (!emailValid) {
      return 'Por favor, insira um e-mail válido!';
    }

    return null;
  }
}
