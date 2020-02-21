import 'package:flutter/material.dart';
import 'pages/tabs.dart';
import 'pages/Search.dart';
import 'pages/Info.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/search': (context)=>SearchPage(),
        '/info': (context)=>Info()
      },
    );
  }
}