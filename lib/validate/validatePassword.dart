class ValidatePassword {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira uma senha!';
    }

    if (value.length < 8) {
      return 'A senha deve ter 8 dígitos ou mais!';
    }

    return null;
  }
}
