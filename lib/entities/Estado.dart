class Estado {
  String _nome;

  Estado(this._nome);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': _nome,
    };
  }
}
