import 'package:flutter/material.dart';
import 'dart:math';

class Logica extends StatefulWidget {
  @override
  _LogicaState createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {
  
  var _imagem = AssetImage("images/padrao.png");
  var _mensagem = "Escolha sua opção: ";

  void _comecandoJogo(String opcaoUsuario){

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
    // Validando ganhador

    // Verificando usuario
    if (
        opcaoUsuario == "tesoura" && escolhaDoAplicativo == "papel"
        ||
        opcaoUsuario == "pedra" && escolhaDoAplicativo == "tesoura"
        ||
        opcaoUsuario == "papel" && escolhaDoAplicativo == "pedra"


    ){
      setState(() {
        this._mensagem = "Você é o ganhador!!!!!";
      });
    }else if(  // Verificando App
        escolhaDoAplicativo == "tesoura" && opcaoUsuario == "papel"
        ||
        escolhaDoAplicativo == "pedra" && opcaoUsuario == "tesoura"
        ||
        escolhaDoAplicativo == "papel" && opcaoUsuario == "pedra"
    ){
      setState(() {
        this._mensagem = "O app é o ganhador!!!!!";
      });
    }else{  // Empate
      setState(() {
        this._mensagem = "Empateeee!!!!";
      });

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
          // Imagem da variavel
          Image(image: this._imagem,),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              this._mensagem,
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
