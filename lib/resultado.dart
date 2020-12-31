import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultado;
  final void Function() quandoResetado;

  Resultado(this.resultado, this.quandoResetado);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text('Parabéns, pontos finais: $resultado',
                style: TextStyle(fontSize: 28))),
        FlatButton(
          onPressed: quandoResetado,
          child: Text('Reiniciar'),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
