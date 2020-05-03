import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final TextStyle estilo = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    final conteo = 10;
    return Scaffold(
      appBar: AppBar(
        title:  Text("Titulo"),
        centerTitle: true,
        elevation: 2.0,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de Clicks:", style: estilo ,),
            Text(conteo.toString(), style: estilo),
            ],
          )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Hola Mundo!");
          // conteo = conteo +1;
        },
        child: Icon(Icons.attach_money),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}