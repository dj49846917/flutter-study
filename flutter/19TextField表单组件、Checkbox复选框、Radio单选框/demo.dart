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
          title: Text('文本框')
        ),
        body: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: '请输入搜索的内容', // 相当于placeholder
                  border: OutlineInputBorder() // 添加边框
                ),
              ),
              SizedBox(height:20),
              TextField(
                maxLines: 4, // 变成文本域
                decoration: InputDecoration(
                  hintText: '多行文本框', // 相当于placeholder
                  border: OutlineInputBorder() // 添加边框
                ),
              ),
              SizedBox(height:20),
              TextField(
                obscureText: true, // 加这句后变成密码框相当于type:password
                decoration: InputDecoration(
                  hintText: '密码框', // 相当于placeholder
                  border: OutlineInputBorder() // 添加边框
                ),
              ),
              SizedBox(height:20),
              TextField(
                decoration: InputDecoration(
                  hintText: '请输入用户名', // 相当于placeholder
                  border: OutlineInputBorder(), // 添加边框
                  labelText: "用户名" // 相当于label
                ),
              ),
              SizedBox(height:20),
              TextField(
                decoration: InputDecoration(
                  hintText: '请输入用户名', // 相当于placeholder
                  // border: OutlineInputBorder(), // 添加边框
                  icon: Icon(Icons.people), // 增加图标
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}