import 'dart:math';

import 'package:caracoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HeadsAndTails(),
  ));
}

class HeadsAndTails extends StatefulWidget {
  const HeadsAndTails({Key? key}) : super(key: key);

  @override
  _HeadsAndTailsState createState() => _HeadsAndTailsState();
}

class _HeadsAndTailsState extends State<HeadsAndTails> {
  void _exibirResultado() {
    var resultados = ["Cara", "Coroa"];
    var numeroSorteado = Random().nextInt(resultados.length);
    var resultado = resultados[numeroSorteado];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("src/img/logo.png"),
            GestureDetector(
              child: Image.asset("src/img/botao_jogar.png"),
              onTap: _exibirResultado,
            )
          ],
        ),
      ),
    );
  }
}
