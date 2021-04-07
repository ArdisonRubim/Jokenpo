import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Logica extends StatefulWidget {
  @override
  _LogicaState createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joken Po"), // Titulo
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Centraliza o conteudo
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              "Escolha do app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold   // Cor do conteudo
              ),
            ),
          ),
          Image.asset("images/padrao.png"),
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
