class ValidatePassword {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira uma senha!';
    }

    if (value.length < 8) {
      return 'A senha deve ter 8 dígitos ou mais!';
    }

    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'A senha deve conter pelo menos uma letra maiúscula!';
    }

    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'A senha deve conter pelo menos uma letra minúscula!';
    }

    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'A senha deve conter pelo menos um número!';
    }

    if (!RegExp(r'(?=.*[!@#$%^&*()_+\-=\[\]{};:"\\|,.<>\/?]+)').hasMatch(value)) {
      return 'A senha deve conter pelo menos um caractere especial!';
    }

    return null;
  }
}
