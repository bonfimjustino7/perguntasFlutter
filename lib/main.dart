import 'package:app_teste/questionario.dart';
import 'package:app_teste/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatefulWidget {
  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;

  final perguntas = [
    {
      'texto': 'Qual é o seu nome?',
      'respostas': [
        {'texto': 'Bonfim', 'nota': 10},
        {'texto': 'Esther', 'nota': 4},
        {'texto': 'Diego', 'nota': 5},
      ]
    },
    {
      'texto': 'Qual a sua idade?',
      'respostas': [
        {'texto': '20', 'nota': 10},
        {'texto': '15', 'nota': 1},
        {'texto': '22', 'nota': 5},
      ]
    },
    {
      'texto': 'Qual linguagem de progração que você mais gosta?',
      'respostas': [
        {'texto': 'Python', 'nota': 10},
        {'texto': 'Dart', 'nota': 5},
        {'texto': 'JavaScritp', 'nota': 7},
      ]
    },
  ];

  void responder(int pontuacao) {
    if (valid) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
  }

  void resetar() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get valid {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.restore),
                tooltip: 'Reiniciar',
                onPressed: resetar,
              )
            ],
          ),
          body: valid
              ? Questionario(
                  perguntaSelecionada: perguntaSelecionada,
                  perguntas: perguntas,
                  responder: responder,
                )
              : Resultado(pontuacaoTotal)),
    );
  }
}
