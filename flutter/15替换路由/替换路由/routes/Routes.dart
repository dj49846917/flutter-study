import 'package:flutter/material.dart';
import '../pages/tabs.dart';
import '../pages/Search.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';

// 配置路由
final routes= {
  '/': (context)=>Tabs(),
  '/search': (context,{arguments})=>SearchPage(arguments:arguments),
  '/first': (context)=>RegisterFirstPage(),
  '/second': (context)=>RegisterSecondPage(),
  '/third': (context)=>RegisterThirdPage(),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) { // 固定写法,统一配置路由和传值
  final String name = settings.name; 
  print(name);
  final Function pageContentBuilder = routes[name]; 
  if (pageContentBuilder != null) { 
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute( 
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      ); 
      return route; 
    } else {
      final Route route = MaterialPageRoute( 
        builder: (context) => pageContentBuilder(context)
      ); 
      return route; 
    }
  } else {
    return null;
  }
};