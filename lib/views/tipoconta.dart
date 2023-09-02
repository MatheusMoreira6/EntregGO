import 'package:flutter/material.dart';

class TipoConta extends StatelessWidget {
  const TipoConta({super.key});

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
            children: [
              const Text(
                "Tipo de Conta",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.accessible_forward),
                        Text(
                          'Entregador',
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.add_box_outlined),
                        Text(
                          'Estabelecimento',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                'Selecione acima o tipo de conta:',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'CONTINUAR',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
