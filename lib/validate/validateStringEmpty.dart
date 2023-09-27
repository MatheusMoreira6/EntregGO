class ValidateStringEmpty {
  static String? validate(String? value) {
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return 'Campo Obrigatório!';
    }
  }
}
