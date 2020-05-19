import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleText = new TextStyle( fontSize: 25);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de tabs', style: styleText),
            Text('$contador', style: styleText )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );
  }
}