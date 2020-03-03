import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:demo/provide/demo.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Provide<Demo>(
          builder: (context, child, item){
            print(item.count);
            return Text('${item.count}');
          }
        ),
      )
    );
  }
}