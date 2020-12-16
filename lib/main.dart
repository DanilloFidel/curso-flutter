import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

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
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Perguntas')),
            body: _temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    responder: _responder,
                    perguntaSelecionada: _perguntaSelecionada)
                : Resultado()));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
