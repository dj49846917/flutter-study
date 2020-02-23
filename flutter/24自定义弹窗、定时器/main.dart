import 'package:flutter/material.dart';
import 'MyDialog.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog例子')
        ),
        body: DialogPage(),
      ),
    );
  }
}

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('自定义弹窗'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context){
                  return MyDialog('标题', '内容');
                }
              );
            }
          ),

        ]
      )
    );
  }
}