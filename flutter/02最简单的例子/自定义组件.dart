// 自定义组件
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello, world2',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
