class Avaliacao {
  int _nota;
  String _comentario;

  Avaliacao(this._nota, this._comentario);

  String get comentario => _comentario;

  set comentario(String value) {
    _comentario = value;
  }

  int get nota => _nota;

  set nota(int value) {
    _nota = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'nota': _nota,
      'comentario': _comentario,
    };
  }
}
