import 'package:app/router/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';

void main(){
  var home =HomeData();
  var providers  = Providers();
  providers
    ..provide(Provider<HomeData>.value(home));
  runApp(ProviderNode(child:Myapp(),providers:providers));
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

