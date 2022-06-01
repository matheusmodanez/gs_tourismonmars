import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/modules/intro.dart';

class App extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      // theme: darkTheme,
      home: IntroPage(),
    );
  }
}