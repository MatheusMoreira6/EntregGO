import 'package:entreggo/controllers/cadastroEstabelecimentoController.dart';
import 'package:flutter/material.dart';

class CadastroEstabelecimento extends StatefulWidget {
  CadastroEstabelecimento({super.key});

  @override
  State<CadastroEstabelecimento> createState() => _CadastroEstabelecimentoState();
}

class _CadastroEstabelecimentoState extends State<CadastroEstabelecimento> {
  final CadastroEstabelecimentoController cadastroEstabelecimentoController = CadastroEstabelecimentoController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF5DE0E6),
                Color(0xFF004AAD),
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: cadastroEstabelecimentoController.razaoSocial,
                      decoration: const InputDecoration(
                        hintText: 'Razão Social:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.nomeFantasia,
                      decoration: const InputDecoration(
                        hintText: 'Nome Fantasia:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.dataAbertura,
                      decoration: const InputDecoration(
                        hintText: 'Data de Abertura:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.porteEmpresa,
                      decoration: const InputDecoration(
                        hintText: 'Porte da Empresa:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.cnpj,
                      decoration: const InputDecoration(
                        hintText: 'CNPJ:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.email,
                      decoration: const InputDecoration(
                        hintText: 'E-mail:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: TextField(
                        controller: cadastroEstabelecimentoController.telefone,
                        decoration: const InputDecoration(
                          hintText: 'Telefone:',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.logradouro,
                      decoration: const InputDecoration(
                        hintText: 'Logradouro:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                      keyboardType: TextInputType.streetAddress,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextField(
                              controller: cadastroEstabelecimentoController.numero,
                              decoration: const InputDecoration(
                                hintText: 'Número:',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              controller: cadastroEstabelecimentoController.bairro,
                              decoration: const InputDecoration(
                                hintText: 'Bairro:',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              keyboardType: TextInputType.streetAddress,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextField(
                              controller: cadastroEstabelecimentoController.cidade,
                              decoration: const InputDecoration(
                                hintText: 'Cidade:',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              keyboardType: TextInputType.streetAddress,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              controller: cadastroEstabelecimentoController.estado,
                              decoration: const InputDecoration(
                                hintText: 'Estado:',
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              keyboardType: TextInputType.streetAddress,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: TextField(
                        controller: cadastroEstabelecimentoController.nomeUsuario,
                        decoration: const InputDecoration(
                          hintText: 'Nome de Usuário:',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    TextField(
                      controller: cadastroEstabelecimentoController.senha,
                      decoration: const InputDecoration(
                        hintText: 'Senha:',
                        hintStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Checkbox(
                            value: cadastroEstabelecimentoController.checkboxVerificacao,
                            onChanged: (bool? value) {
                              setState(() {
                                cadastroEstabelecimentoController.checkboxVerificacao = value!;
                              });
                            },
                            checkColor: const Color(0xFF004AAD),
                            fillColor:
                                MaterialStateProperty.resolveWith((states) {
                              return const Color(0xFFFFFFFF);
                            }),
                          ),
                          const Text(
                            'Li e Aceito os Termos',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        cadastroEstabelecimentoController.cadastrar();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 70,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        backgroundColor: const Color(0xFF004AAD),
                      ),
                      child: const Text(
                        'CADASTRAR',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
