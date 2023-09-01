import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 45),
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
                      padding: const EdgeInsets.only(bottom: 65),
                      child: Image.asset(
                        'assets/images/Icon.png',
                        height: 130,
                        width: 130,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
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
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Senha:',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
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
                          'ENTRAR',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Não tem Conta? Cadastre-se',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
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
