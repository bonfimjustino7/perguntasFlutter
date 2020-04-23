import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPrecionado;

  Resposta(this.texto, this.onPrecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(texto),
        onPressed: onPrecionado,
      ),
    );
  }
}
