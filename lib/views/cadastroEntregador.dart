import 'package:entreggo/controllers/cadastroEntregadorController.dart';
import 'package:entreggo/decorations/textFormFieldDecoration.dart';
import 'package:entreggo/validate/validateCEP.dart';
import 'package:entreggo/validate/validateCNH.dart';
import 'package:entreggo/validate/validateCPF.dart';
import 'package:entreggo/validate/validateEmail.dart';
import 'package:entreggo/validate/validatePassword.dart';
import 'package:entreggo/validate/validateRG.dart';
import 'package:entreggo/validate/validateStringEmpty.dart';
import 'package:entreggo/validate/validateTelefone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroEntregador extends StatefulWidget {
  const CadastroEntregador({Key? key}) : super(key: key);

  @override
  State<CadastroEntregador> createState() => _CadastroEntregadorState();
}

class _CadastroEntregadorState extends State<CadastroEntregador> {
  final CadastroEntregadorController cadastroEntregadorController = CadastroEntregadorController();
  String? _termoDeUso;

  @override
  void initState() {
    super.initState();
    _loadTermoDeUso();
  }

  _loadTermoDeUso() async {
    String termo = await rootBundle.loadString('assets/terms/termo_de_uso.txt');
    setState(() {
      _termoDeUso = termo;
    });
  }

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
                  padding: EdgeInsets.symmetric(vertical: 30),
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
                    controller: cadastroEntregadorController.pageController,
                    physics: const NeverScrollableScrollPhysics(),
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
                                    icon: Icons.description,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.number,
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
                                    icon: Icons.badge,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.number,
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
                                    icon: Icons.directions_car,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.number,
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
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 45,
                                  bottom: 6,
                                  left: 30,
                                  right: 30,
                                ),
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
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.senha,
                                  focusNode: cadastroEntregadorController.focoSenha,
                                  validator: (value) => ValidatePassword.validate(value),
                                  onFieldSubmitted: (value) {
                                    cadastroEntregadorController.avancarTela();
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Senha:',
                                    icon: Icons.lock,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Form(
                          key: cadastroEntregadorController.formKeyTela2,
                          child: Column(
                            children: [
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.cep,
                                  focusNode: cadastroEntregadorController.focoCEP,
                                  validator: (value) => ValidateCEP.validate(value),
                                  inputFormatters: [cadastroEntregadorController.maskCEP],
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoLogradouro);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'CEP:',
                                    icon: Icons.location_on,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.logradouro,
                                  focusNode: cadastroEntregadorController.focoLogradouro,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoNumero);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Logradouro:',
                                    icon: Icons.home,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.numero,
                                  focusNode: cadastroEntregadorController.focoNumero,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoBairro);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Número',
                                    icon: Icons.pin,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.bairro,
                                  focusNode: cadastroEntregadorController.focoBairro,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoCidade);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Bairro:',
                                    icon: Icons.domain,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.cidade,
                                  focusNode: cadastroEntregadorController.focoCidade,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).requestFocus(cadastroEntregadorController.focoEstado);
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Cidade',
                                    icon: Icons.location_city,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                              Padding(
                                padding: TextFormFieldDecoration.padding(),
                                child: TextFormField(
                                  controller: cadastroEntregadorController.estado,
                                  focusNode: cadastroEntregadorController.focoEstado,
                                  validator: (value) => ValidateStringEmpty.validate(value),
                                  onFieldSubmitted: (value) {
                                    cadastroEntregadorController.avancarTela();
                                  },
                                  decoration: TextFormFieldDecoration.decoration(
                                    label: 'Estado:',
                                    icon: Icons.map,
                                  ),
                                  style: TextFormFieldDecoration.style(),
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 30,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                _termoDeUso ?? 'Carregando...',
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 30,
                                right: 30,
                              ),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      cadastroEntregadorController.avancarTela();
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
