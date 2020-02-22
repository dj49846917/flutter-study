import 'package:flutter/material.dart';
// import 'routes/Routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo')
        ),
        body: Text('的mo'),
        drawer: Drawer( // 左侧导航栏
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        // color: Colors.red, // 设置背景色
                        image: DecorationImage( // 设置背景图片
                          image: NetworkImage('https://www.itying.com/images/flutter/1.png'),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Text('你好flutter')
                    )
                  )]
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text('我的空间'),
              ),
              Divider(), // 分割线
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('设置'),
              )
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('右侧导航栏')
        ),
      ),
    );
  }
}