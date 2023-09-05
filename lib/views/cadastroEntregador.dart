import 'package:entreggo/controllers/cadastroEntregadorController.dart';
import 'package:entreggo/controllers/cadastroEstabelecimentoController.dart';
import 'package:flutter/material.dart';

class CadastroEntregador extends StatefulWidget {
  CadastroEntregador({super.key});

  @override
  State<CadastroEntregador> createState() => _CadastroEntregadorState();
}

class _CadastroEntregadorState extends State<CadastroEntregador> {
  final CadastroEntregadorController cadastroEntregadorController = CadastroEntregadorController();

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
                      controller: cadastroEntregadorController.nome,
                      decoration: const InputDecoration(
                        hintText: 'Nome:',
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
                      controller: cadastroEntregadorController.cpf,
                      decoration: const InputDecoration(
                        hintText: 'CPF:',
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
                      controller: cadastroEntregadorController.rg,
                      decoration: const InputDecoration(
                        hintText: 'RG:',
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
                      controller: cadastroEntregadorController.email,
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
                    TextField(
                      controller: cadastroEntregadorController.telefone,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: TextField(
                        controller: cadastroEntregadorController.numeroCNH,
                        decoration: const InputDecoration(
                          hintText: 'Número CNH:',
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
                    TextField(
                      controller: cadastroEntregadorController.logradouro,
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
                              controller: cadastroEntregadorController.numero,
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
                              controller: cadastroEntregadorController.bairro,
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
                              controller: cadastroEntregadorController.cidade,
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
                              controller: cadastroEntregadorController.estado,
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
                        controller: cadastroEntregadorController.nomeUsuario,
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
                      controller: cadastroEntregadorController.senha,
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
                            value: cadastroEntregadorController.checkboxVerificacao,
                            onChanged: (bool? value) {
                              setState(() {
                                cadastroEntregadorController.checkboxVerificacao = value!;
                              });
                            },
                            checkColor: const Color(0xFF004AAD),
                            fillColor: MaterialStateProperty.resolveWith((states) {
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
                        cadastroEntregadorController.cadastrar();
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
