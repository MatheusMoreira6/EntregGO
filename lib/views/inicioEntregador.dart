import 'package:flutter/material.dart';

class InicioEntregador extends StatelessWidget {
  const InicioEntregador({Key? key}) : super(key: key);

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
          child: const Center(
            child: Column(
              children: [
                Text("Entregador"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
