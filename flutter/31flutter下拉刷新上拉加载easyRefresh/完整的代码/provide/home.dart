import 'package:flutter/material.dart';

class HomeData with ChangeNotifier {
  Map dataSource = {}; // 获取首页的数据

  getHomeData(data){
    dataSource = data;
    notifyListeners();
  }
}