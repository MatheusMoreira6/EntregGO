class ValidateCNH {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um número de CNH!';
    }

    String cnh = value.replaceAll(RegExp(r'\D'), ''); // Remove caracteres não numéricos

    if (cnh.length != 11) {
      return 'CNH inválida!';
    }

    if (cnh == '00000000000' ||
        cnh == '11111111111' ||
        cnh == '22222222222' ||
        cnh == '33333333333' ||
        cnh == '44444444444' ||
        cnh == '55555555555' ||
        cnh == '66666666666' ||
        cnh == '77777777777' ||
        cnh == '88888888888' ||
        cnh == '99999999999') {
      return 'CNH inválida!';
    }

    return null;
  }
}
