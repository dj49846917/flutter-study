import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog{
  final String title;
  final String content;

  MyDialog(this.title, this.content);

  // 设置定时器
  _showTimer(context){
    Timer.periodic(
      Duration(milliseconds: 2000),(t){
        Navigator.pop(context);
        t.cancel();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context); // 设置定时器2秒消失
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text(this.title),
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text(this.content, textAlign: TextAlign.left)
              )
            ],
          ),
        ),
      )
    );
  }
}