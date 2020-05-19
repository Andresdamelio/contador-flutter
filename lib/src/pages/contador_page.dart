import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _styleText = new TextStyle( fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de tabs', style: _styleText),
            Text('$_contador', style: _styleText )
          ],
        ),
      ),
      floatingActionButton: _createButton()
    );
  }

  Widget _createButton() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox( width: 30.0,),
          FloatingActionButton(
            child: Icon( Icons.exposure_zero),
            onPressed: _clean
          ),
          Expanded( child: SizedBox()),
          FloatingActionButton(
            child: Icon( Icons.remove),
            onPressed: _remove
          ),
          SizedBox( width: 5.0,),
          FloatingActionButton(
            child: Icon( Icons.add ),
            onPressed: _add
          )
        ],
      );
  }

  void _add() {
    setState(() {
      _contador++;
    });
  }

  void _remove() {
    setState(() {
      if( _contador > 0 ) {
        _contador--;
      }
    });
  }

  void _clean() {
    setState(() {
      _contador = 0;
    });
  }
}