import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Provide<HomeData>(
            builder: (context, child, obj){
              return Text('${obj.dataSource}');
            }
        ),
      ),
    );
  }
}