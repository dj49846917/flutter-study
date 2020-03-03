import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import 'provide/demo.dart';

void main(){
  var demo = Demo();
  var providers = Providers();
  providers..provide(Provider<Demo>.value(demo));
  runApp(
    ProviderNode(child: MyApp(), providers: providers)
  );
}

class MyApp extends StatelessWidget {
  final int num = 17815182648;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        // title: '百姓生活+',
        debugShowCheckedModeBanner: false, // 取消app右上角的debug图标
        theme: ThemeData(
          primaryColor: Colors.pink
        ),
        home: IndexPage()
      ),
    );
  }
}
