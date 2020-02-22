import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var flag;

  @override
  void initState() {
    super.initState();
    flag = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本框')
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Checkbox( // 复选框组件
                value: this.flag, 
                activeColor: Colors.red, // 选中的颜色
                onChanged: (value){
                  setState(() {
                    this.flag = value;
                  });
                }
              ),
              Divider(),
              SizedBox(height: 20),
              CheckboxListTile(
                value: this.flag, 
                activeColor: Colors.red, // 选中的颜色
                onChanged: (value){
                  setState(() {
                    this.flag = value;
                  });
                },
                title: Text('大标题'),
                subtitle: Text('小标题'),
                secondary: Icon(Icons.help),
              )
            ],
          ),
        )
      ),
    );
  }
}