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
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF5DE0E6),
                Color(0xFF004AAD),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ofertas',
                      style: TextStyle(
                        fontFamily: 'Righteous',
                        color: Color(0xFFFFFFFF),
                        fontSize: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 26,
                        backgroundColor: Color(0xFFBEBEBE),
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
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
                        'Oferta Vigente',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
