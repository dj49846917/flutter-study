import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  // 注意，弹窗组件不能直接放到MaterialApp下面，必须把MaterialApp这个根组件设置成statelessWidget，不然就会报错
  _alertDialog() async{
    var res = await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('提示信息！'),
          content: Text('你确认要删除吗？'),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                print('取消');
                Navigator.pop(context, 'data'); // 关闭弹窗
              }, 
              child: Text('取消')
            ),
            FlatButton(
              onPressed: (){
                print('确定');
                Navigator.pop(context, 'data'); // 关闭弹窗
              }, 
              child: Text('确定')
            )
          ],
        );
      }
    );
    print(res);
  }

  _simpleDialog() async{
    var res = showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text('选择内容'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: (){
                print('Option A');
                Navigator.pop(context); // 关闭弹窗
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: (){
                print('Option B');
                Navigator.pop(context);
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: (){
                print('Option C');
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
    print(res);
  }

  _modelBottomSheet() async{
    var res = await showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("分享 A"),
                onTap: (){
                  Navigator.pop(context, "分享 A");
                },
              ),
              ListTile(
                title: Text("分享 B"),
                onTap: (){
                  Navigator.pop(context, "分享 B");
                },
              ),
              ListTile(
                title: Text("分享 C"),
                onTap: (){
                  Navigator.pop(context, "分享 C");
                },
              ),
            ]
          ),
        );
      }
    );
    print(res);
  }

  _toast(){
    Fluttertoast.showToast(
      msg: "提示信息",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('alert弹出框-AlertDialog'),
            onPressed: _alertDialog
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('select弹出框-SimpleDialog'),
            onPressed: _simpleDialog
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('ActionSheet弹出框-showModalBottomSheet'),
            onPressed: _modelBottomSheet
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('flutter-toast第三方库'),
            onPressed: _toast
          ),
          SizedBox(height: 20),
        ]
      )
    );
  }
}