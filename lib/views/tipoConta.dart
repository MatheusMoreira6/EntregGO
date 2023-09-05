import 'package:entreggo/controllers/tipoContaController.dart';
import 'package:flutter/material.dart';

class TipoConta extends StatefulWidget {
  const TipoConta({super.key});

  @override
  State<TipoConta> createState() => _TipoContaState();
}

class _TipoContaState extends State<TipoConta> {
  final TipoContaController tipoContaController = TipoContaController();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 120),
                child: Text(
                  "Tipo de Conta",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Righteous',
                    fontSize: 55,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (tipoContaController.botaoSelecionado != 1) {
                            tipoContaController.botaoSelecionado = 1;
                          } else {
                            tipoContaController.botaoSelecionado = 0;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            tipoContaController.botaoSelecionado == 1 ? const Color(0xFF0ADE72) : const Color(0xFF004AAD),
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Column(
                        children: [
                          /*
                          * https://www.flaticon.com/br/icones-gratis/entrega-de-alimentos"
                          */
                          Image.asset(
                            'assets/images/Entregador.png',
                            height: 85,
                            width: 100,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Entregador',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (tipoContaController.botaoSelecionado != 2) {
                            tipoContaController.botaoSelecionado = 2;
                          } else {
                            tipoContaController.botaoSelecionado = 0;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            tipoContaController.botaoSelecionado == 2 ? const Color(0xFF0ADE72) : const Color(0xFF004AAD),
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Column(
                        children: [
                          /*
                          * https://www.flaticon.com/br/icones-gratis/restaurante
                          */
                          Image.asset(
                            'assets/images/Restaurante.png',
                            height: 85,
                            width: 100,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Estabelecimento',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Selecione acima o tipo de conta:',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: ElevatedButton(
                  onPressed: () {
                    tipoContaController.continuar(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 45,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    backgroundColor: tipoContaController.botaoSelecionado != 0 ? const Color(0xFF004AAD) : const Color(0xFF105AA1),
                  ),
                  child: const Text(
                    'CONTINUAR',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 30,
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
