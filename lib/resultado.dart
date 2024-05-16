import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  var valor;
  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.valor == "cara")
      caminhoImagem = "src/img/moeda_cara.png";
    else
      caminhoImagem = "src/img/moeda_coroa.png";
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("src/img/botao_voltar.png"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
