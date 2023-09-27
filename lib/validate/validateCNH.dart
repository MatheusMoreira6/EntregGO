class ValidateCNH {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um número de CNH!';
    }

    String cnh = value.replaceAll(RegExp(r'\D'), '');

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

    int v1 = 0;
    for (int i = 0; i < 9; i++) {
      v1 += int.parse(cnh[i]) * (10 - i);
    }
    v1 = 11 - (v1 % 11);
    if (v1 >= 10) v1 = 0;

    int v2 = 0;
    for (int i = 0; i < 9; i++) {
      v2 += int.parse(cnh[i]) * (11 - i);
    }
    v2 += v1 * 2;
    v2 = 11 - (v2 % 11);
    if (v2 >= 10) v2 = 0;

    if (v1 != int.parse(cnh[9]) || v2 != int.parse(cnh[10])) {
      return 'CNH inválida!';
    }

    return null;
  }
}
