import 'package:flutter/material.dart';
import 'package:entreggo/entities/Oferta.dart';

class OfertaEntregador extends StatelessWidget {
  const OfertaEntregador({required Oferta oferta, Key? key})
      : _oferta = oferta,
        super(key: key);

  final Oferta _oferta;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF004AAD),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Pontos de Entrega: ${_oferta.pontosEntrega}',
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Data de P.: ${_oferta.getDataPostagem()}',
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Valor: ${_oferta.valor}',
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Data de R.: ${_oferta.getDataRealizacao()}',
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              'Estabelecimento: ${_oferta.estabelecimento}',
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xFF004AAD),
                          minimumSize: const Size(double.infinity, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.check),
                            ),
                            Text(
                              'Aceitar',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xFF004AAD),
                          minimumSize: const Size(double.infinity, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.location_on),
                            ),
                            Text(
                              'Mapa',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xFF004AAD),
                          minimumSize: const Size(double.infinity, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.attach_money),
                            ),
                            Text(
                              'Sugerir\nValor',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
