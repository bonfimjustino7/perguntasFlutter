import 'package:app_teste/questao.dart';
import 'package:app_teste/resposta.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List perguntas;
  final void Function(int) responder;

  bool get valid {
    return perguntaSelecionada < perguntas.length;
  }

  Questionario({
    @required this.perguntaSelecionada,
    @required this.perguntas,
    @required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    List respostas = valid ? perguntas[perguntaSelecionada]['respostas'] : null;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas
            .map((res) => Resposta(
                  res['texto'],
                  () => responder(res['nota']),
                ))
            .toList()
      ],
    );
  }
}
