import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animaç favorito',
      'Qual é a sua comida favorita'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Perguntas')),
            body: Column(
              children: [
                Text(perguntas[_perguntaSelecionada]),
                RaisedButton(
                  child: Text('Resposta 1'),
                  onPressed: _responder,
                ),
                RaisedButton(child: Text('Resposta 2'), onPressed: _responder),
                RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: _responder,
                ),
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
