import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'vermelho', 'nota': 10},
        {'texto': 'azul', 'nota': 20},
        {'texto': 'verde', 'nota': 30},
        {'texto': 'amarelo', 'nota': 50},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'macaco', 'nota': 70},
        {'texto': 'pato', 'nota': 20},
        {'texto': 'tigre', 'nota': 80},
        {'texto': 'peixe', 'nota': 30},
      ]
    },
    {
      'texto': 'Qual sua comida favorita?',
      'respostas': [
        {'texto': 'pizza', 'nota': 10},
        {'texto': 'lasanha', 'nota': 70},
        {'texto': 'hambuguer', 'nota': 40},
        {'texto': 'frango assado', 'nota': 60},
      ]
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
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
                : Resultado(resultado: _pontuacaoTotal)));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
