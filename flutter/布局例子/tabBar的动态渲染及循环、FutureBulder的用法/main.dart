import 'package:app/router/Routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 禁止滚动条
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

