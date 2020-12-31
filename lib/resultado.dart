import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultado;

  Resultado({
    @required this.resultado,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Parabéns, pontos finais: $resultado',
            style: TextStyle(fontSize: 28)));
  }
}
