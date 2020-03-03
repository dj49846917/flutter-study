import 'package:flutter/material.dart';

class Demo with ChangeNotifier{
  int count = 0;

  add() {
    count ++;
    notifyListeners(); // 通知相关组件，内容改了
  }
}