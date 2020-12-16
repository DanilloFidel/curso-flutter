import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['azul', 'vermelho', 'verde', 'amarelo']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['macaco', 'pato', 'tigre', 'peixe']
    },
    {
      'texto': 'Qual sua comida favorita?',
      'respostas': ['pizza', 'lasanha', 'hambuguer', 'frango assado']
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  bool get _temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = _temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Perguntas')),
            body: _temPerguntaSelecionada
                ? Column(
                    children: [
                      Questao(_perguntas[_perguntaSelecionada]['texto']),
                      ...respostas
                          .map((resp) => Resposta(resp, _responder))
                          .toList()
                    ],
                  )
                : null));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
