

import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_page.dart';

//import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  // COntext contiene la informacion del arbol de widget
  Widget build( contex ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}