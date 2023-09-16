import 'package:entreggo/controllers/cadastroEntregadorController.dart';
import 'package:flutter/material.dart';

class CadastroEntregador extends StatefulWidget {
  const CadastroEntregador({super.key});

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
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: cadastroEntregadorController.pageController,
            children: [
              Form(
                key: cadastroEntregadorController.formKeyTela1,
                child: Center(
                  child: SingleChildScrollView(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.nome,
                            focusNode: cadastroEntregadorController.focoNome,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um nome', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoSobrenome);
                            },
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              labelText: 'Nome:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.sobrenome,
                            focusNode: cadastroEntregadorController.focoSobrenome,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um sobrenome', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoCPF);
                            },
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              labelText: 'Sobrenome:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.cpf,
                            focusNode: cadastroEntregadorController.focoCPF,
                            inputFormatters: [cadastroEntregadorController.maskCPF],
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um CPF', 'O CPF', 11),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoRG);
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.badge),
                              border: OutlineInputBorder(),
                              labelText: 'CPF:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.rg,
                            focusNode: cadastroEntregadorController.focoRG,
                            inputFormatters: [cadastroEntregadorController.maskRG],
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um RG', 'O RG', 6),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoTelefone);
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.badge),
                              border: OutlineInputBorder(),
                              labelText: 'RG:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.numeroCNH,
                            focusNode: cadastroEntregadorController.focoNumeroCNH,
                            inputFormatters: [cadastroEntregadorController.maskCNH],
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira uma CNH', 'A CNH', 11),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoEmail);
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.badge),
                              border: OutlineInputBorder(),
                              labelText: 'CNH:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.telefone,
                            focusNode: cadastroEntregadorController.focoTelefone,
                            inputFormatters: [cadastroEntregadorController.maskTelefone],
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um telefone', 'O telefone', 11),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoNumeroCNH);
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.call),
                              border: OutlineInputBorder(),
                              labelText: 'Telefone:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 40,
                            left: 30,
                            right: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.email,
                            focusNode: cadastroEntregadorController.focoEmail,
                            validator: (value) => cadastroEntregadorController.validarEmail(value),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoSenha);
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(),
                              labelText: 'E-mail:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 30,
                            right: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.senha,
                            focusNode: cadastroEntregadorController.focoSenha,
                            validator: (value) => cadastroEntregadorController.validarSenha(value),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoLogradouro);
                            },
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                              labelText: 'Senha:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 26, bottom: 20),
                          child: ElevatedButton(
                            focusNode: cadastroEntregadorController.focoContinuar,
                            onPressed: () {
                              cadastroEntregadorController.avancarTela();
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoLogradouro);
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
              Form(
                key: cadastroEntregadorController.formKeyTela2,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7.5,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.logradouro,
                            focusNode: cadastroEntregadorController.focoLogradouro,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um endereço', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoNumero);
                            },
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.home),
                              border: OutlineInputBorder(),
                              labelText: 'Logradouro:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7.5,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.numero,
                            focusNode: cadastroEntregadorController.focoNumero,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um número', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoBairro);
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.pin),
                              border: OutlineInputBorder(),
                              labelText: 'Número:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7.5,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.bairro,
                            focusNode: cadastroEntregadorController.focoBairro,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um bairro', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoCidade);
                            },
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.signpost),
                              border: OutlineInputBorder(),
                              labelText: 'Bairro:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7.5,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.cidade,
                            focusNode: cadastroEntregadorController.focoCidade,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira uma cidade', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoEstado);
                            },
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              border: OutlineInputBorder(),
                              labelText: 'Cidade:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7.5,
                            horizontal: 30,
                          ),
                          child: TextFormField(
                            controller: cadastroEntregadorController.estado,
                            focusNode: cadastroEntregadorController.focoEstado,
                            validator: (value) => cadastroEntregadorController.validarString(value, 'insira um estado', null, 0),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(cadastroEntregadorController.focoCheckBox);
                            },
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.location_on),
                              border: OutlineInputBorder(),
                              labelText: 'Estado:',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF862C),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF862C),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 313),
                          child: ElevatedButton(
                            focusNode: cadastroEntregadorController.focoContinuar,
                            onPressed: () => FocusScope.of(context).requestFocus(cadastroEntregadorController.focoLogradouro),
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
              Form(
                key: cadastroEntregadorController.formKeyTela3,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
