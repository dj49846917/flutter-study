// import 'package:flutter/material.dart';
// import 'routes/Routes.dart';

// void main() {
//   runApp(Myapp());
// }

// class Myapp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/', // 初始化加载的路由
//       onGenerateRoute: onGenerateRoute
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            title: Text('登录'),
            centerTitle: true, // 文字居中
            bottom: TabBar( // 选项卡
              tabs: <Widget>[
                Tab(text:'热门'),
                Tab(text:'食品')
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('我是热门的数据1')
                  ),
                   ListTile(
                    title: Text('我是热门的数据2')
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('我是食品的数据1')
                  ),
                   ListTile(
                    title: Text('我是食品的数据2')
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}