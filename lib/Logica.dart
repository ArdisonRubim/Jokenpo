import 'package:flutter/material.dart';
import 'dart:math';

class Logica extends StatefulWidget {
  @override
  _LogicaState createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {
  
  var _imagem = AssetImage("images/padrao.png");

  void _comecandoJogo(String Opcao){

    // Construir logica do app
    var jogadas = ["pedra", "papel", "tesoura"];
    var numbers = Random().nextInt(3);
    var escolhaDoAplicativo = jogadas[numbers];

    // Escolha do aplicativo
    switch (escolhaDoAplicativo) {
      case "pedra":
        setState(() {
          this._imagem = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagem = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagem = AssetImage("images/tesoura.png");
        });
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joken Po"), // Titulo
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Centraliza o conteudo
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              "Escolha do app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),
          ),
<<<<<<< HEAD
          // Imagem da variavel
          Image(image: this._imagem,),
=======
          Image.asset("images/padrao.png"),
>>>>>>> 07ce630f76d33d8a667fdbf0e1c9a63272abc674
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              "Escolha sua opção: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),
          ),
          //Criando linha para adcionar as 3 imagens
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alinhamento da row
            children: <Widget>[
<<<<<<< HEAD
              // Papel
              GestureDetector(
                onTap: () => _comecandoJogo("papel"),
                child: Image.asset("images/papel.png", height: 100,),
              ),
              // Tesoura
              GestureDetector(
                onTap: () => _comecandoJogo("tesoura"),
                child: Image.asset("images/tesoura.png", height: 100,),
              ),
              // Pedra
              GestureDetector(
                onTap: () => _comecandoJogo("pedra"),
                child: Image.asset("images/pedra.png", height: 100,),
              ),
              //Image.asset("images/papel.png"),
              //Image.asset("images/tesoura.png"),
              //Image.asset("images/pedra.png"),
=======
              Image.asset("images/papel.png", height: 100),
              Image.asset("images/tesoura.png", height: 100),
              Image.asset("images/pedra.png", height: 100),
>>>>>>> 07ce630f76d33d8a667fdbf0e1c9a63272abc674
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar( // Roda pe do app
        color: Colors.orangeAccent,
        child: Padding(
          padding: EdgeInsets.all(20), // Espacamento em todos os lados
        ),
      ),
    );
  }
}
