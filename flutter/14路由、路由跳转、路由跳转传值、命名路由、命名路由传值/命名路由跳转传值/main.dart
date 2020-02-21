import 'package:flutter/material.dart';
import 'pages/tabs.dart';
import 'pages/Search.dart';
import 'pages/Info.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  final routes= {
        '/search': (context,{arguments})=>SearchPage(arguments:arguments),
        '/info': (context)=>Info()
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute:(RouteSettings settings) { // 固定写法,统一配置路由和传值
        final String name = settings.name; 
        final Function pageContentBuilder = this.routes[name]; 
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
      }
    );
  }
}