import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState()=> new _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{
  final TextStyle _estilo = TextStyle(fontSize: 30);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Titulo (Statefull)"),
        centerTitle: true,
        elevation: 2.0,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de taps:", style: _estilo ,),
            Text(_conteo.toString(), style: _estilo),
            ],
          )
        ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30),
        FloatingActionButton(child: Icon(Icons.exposure_zero) , onPressed: _zeroContador,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove) , onPressed: _subsContador,),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add) , onPressed: _addContador,)
      ],
    );
    // return FloatingActionButton(child: Icon(Icons.attachment) , onPressed: null,);
  }

  void _addContador(){
    setState(() => _conteo++);
  }
  void _subsContador(){
    setState(() => _conteo--);
  }
  void _zeroContador(){
    setState(() => _conteo=0);
  }

}