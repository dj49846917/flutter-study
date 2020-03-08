import 'package:flutter/material.dart';

class HomeData with ChangeNotifier {
  Map dataSource = {};

  getHomeData(data){
    dataSource = data;
    notifyListeners();
  }
}