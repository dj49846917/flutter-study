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
        floatingActionButton: FloatingActionButton( // 浮动按钮
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('颜色按钮'),
                  // color: Colors.blue, // 背景色
                  // textColor: Colors.white, // 文字颜色
                  onPressed: (){}
                ),
                RaisedButton(
                  child: Text('阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: (){}
                ),
                RaisedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.search), 
                  label: Text('图标按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    child: Text('按钮改宽高'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: (){}
                  ),
                  width: 200,
                  height: 50,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: RaisedButton(
                      child: Text('自适应按钮'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      onPressed: (){}
                    ),
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  )
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('圆角按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  shape: RoundedRectangleBorder( // 设置圆角
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: (){}
                ),
                Container(
                  // width: 100,
                  height: 60,
                  child: RaisedButton(
                    child: Text('圆形按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    splashColor: Colors.yellow, // 点击的颜色
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.white)
                    ),
                    onPressed: (){}
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                FlatButton( // 扁平化按钮，和RaisedButton一样
                  child: Text('扁平化按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){}
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                OutlineButton( // 线框按钮，没有背景色
                  child: Text('线框按钮'),
                  color: Colors.blue, // 没有效果
                  textColor: Colors.blue,
                  onPressed: (){}
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                IconButton( // 图标按钮
                  icon: Icon(Icons.access_alarm), 
                  onPressed: (){}
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                ButtonBar( // 按钮组
                  children: <Widget>[
                    RaisedButton(
                      child: Text('注册'),
                      color: Colors.blue, // 背景色
                      textColor: Colors.white, // 文字颜色
                      onPressed: (){}
                    ),
                    RaisedButton(
                      child: Text('登录'),
                      color: Colors.blue, // 背景色
                      textColor: Colors.white, // 文字颜色
                      onPressed: (){}
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}