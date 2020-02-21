import 'package:flutter/material.dart';

class ProductionPage extends StatefulWidget {
  final Map arguments;
  ProductionPage({Key key, this.arguments}) : super(key: key);

  @override
  _ProductionPageState createState() => _ProductionPageState(arguments:this.arguments);
}

class _ProductionPageState extends State<ProductionPage> {
  Map arguments;
  _ProductionPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A商品'),
      ),
      body: Text("pid=${arguments['pid']}")
    );
  }
}