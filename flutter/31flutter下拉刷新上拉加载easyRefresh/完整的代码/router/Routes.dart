import 'package:flutter/material.dart';
import 'package:app/pages/Animation/index.dart';
import 'package:app/pages/Guide/index.dart';
import 'package:app/pages/Tabs/index.dart';

// 配置路由
final routes= {
  '/start': (context)=>AnimationPage(), // 动画页面
  '/guide': (context)=>GuidePage(), // 启动页面
  '/': (context)=>Tabs(), // 首页
  // '/search': (context,{arguments})=>SearchPage(arguments:arguments),
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