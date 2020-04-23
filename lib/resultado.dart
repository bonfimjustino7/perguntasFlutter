import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get texto {
    if (pontuacao == 30) {
      return 'Muito Bem';
    } else if (pontuacao < 30 && pontuacao >= 20) {
      return 'Legal';
    } else {
      return 'Ahhh, sua nota foi baixa, tente novamente';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(
            'Você conseguiu acertar $pontuacao pontos.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
