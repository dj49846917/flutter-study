import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 初始化加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}
