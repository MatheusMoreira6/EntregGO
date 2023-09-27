import 'package:entreggo/controllers/cadastroEntregadorController.dart';
import 'package:entreggo/decorations/textFormFieldDecoration.dart';
import 'package:entreggo/validate/validateCNH.dart';
import 'package:entreggo/validate/validateCPF.dart';
import 'package:entreggo/validate/validateEmail.dart';
import 'package:entreggo/validate/validatePassword.dart';
import 'package:entreggo/validate/validateRG.dart';
import 'package:entreggo/validate/validateStringEmpty.dart';
import 'package:entreggo/validate/validateTelefone.dart';
import 'package:flutter/material.dart';

class CadastroEntregador extends StatefulWidget {
  const CadastroEntregador({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Cadastro Entregador",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Righteous',
                      fontSize: 38,
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    children: [
                      SingleChildScrollView(
                        child: Form(
                          key: cadastroEntregadorController.formKeyTela1,
                          child: Column(
                            children: [
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.nome,
                                  focusNode: cadastroEntregadorController.focoNome,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoSobrenome);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Nome:',
                                    icon: Icons.person,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.sobrenome,
                                  focusNode: cadastroEntregadorController.focoSobrenome,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoCPF);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Sobrenome:',
                                    icon: Icons.person_add_alt_1,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.cpf,
                                  focusNode: cadastroEntregadorController.focoCPF,
                                  validator: (value) => ValidateCPF.validate(value),
                                  inputFormatters: [cadastroEntregadorController.maskCPF],
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoRG);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'CPF:',
                                    icon: Icons.badge,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.rg,
                                  focusNode: cadastroEntregadorController.focoRG,
                                  validator: (value) => ValidateRG.validate(value),
                                  inputFormatters: [cadastroEntregadorController.maskRG],
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoNumeroCNH);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'RG:',
                                    icon: Icons.badge_outlined,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.numeroCNH,
                                  focusNode: cadastroEntregadorController.focoNumeroCNH,
                                  validator: (value) => ValidateCNH.validate(value),
                                  inputFormatters: [cadastroEntregadorController.maskCNH],
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoTelefone);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'CNH:',
                                    icon: Icons.badge_rounded,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.telefone,
                                  focusNode: cadastroEntregadorController.focoTelefone,
                                  validator: (value) => ValidateTelefone.validate(value),
                                  inputFormatters: [cadastroEntregadorController.maskTelefone],
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoEmail);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Telefone:',
                                    icon: Icons.phone,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.email,
                                  focusNode: cadastroEntregadorController.focoEmail,
                                  validator: (value) => ValidateEmail.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoSenha);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'E-mail:',
                                    icon: Icons.email,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.senha,
                                  focusNode: cadastroEntregadorController.focoSenha,
                                  validator: (value) => ValidatePassword.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus();
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Senha:',
                                    icon: Icons.lock,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {},
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
                      'AVANÇAR',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
