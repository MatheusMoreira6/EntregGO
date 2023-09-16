import 'package:entreggo/controllers/loginController.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController loginController = LoginController();

  String mensagemErro = "";
  double heightErro = 0.0;

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
              child: Form(
                key: loginController.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 45,
                      ),
                      child: Text(
                        'EntregGO',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Righteous',
                          fontSize: 60,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 74),
                      child: Image.asset(
                        'assets/images/Icon.png',
                        height: 130,
                        width: 130,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 50,
                      ),
                      child: TextFormField(
                        controller: loginController.email,
                        focusNode: loginController.focoEmail,
                        validator: (value) => loginController.validarEmail(value),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(loginController.focoSenha);
                        },
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 50,
                      ),
                      child: TextFormField(
                        controller: loginController.senha,
                        focusNode: loginController.focoSenha,
                        validator: (value) => loginController.validarSenha(value),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(loginController.focoLogin);
                          realizarLogin(context);
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
                    SizedBox(
                      height: heightErro,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            mensagemErro,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFFFF862C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 41),
                      child: ElevatedButton(
                        focusNode: loginController.focoLogin,
                        onPressed: () => realizarLogin(context),
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
                          'ENTRAR',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextButton(
                        onPressed: () => loginController.cadastrar(context),
                        child: const Text(
                          'Não tem Conta? Cadastre-se',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
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

  void realizarLogin(BuildContext context) {
    loginController.login(context).then((value) {
      setState(() {
        mensagemErro = "";
        heightErro = 0;
      });
    }).catchError((exception) {
      setState(() {
        mensagemErro = exception.toString().substring(11);
        heightErro = 15.0 * exception.toString().split('\n').length;
      });
    });
  }
}
