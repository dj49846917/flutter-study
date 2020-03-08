import 'package:flutter/material.dart';
import 'package:app/pages/Tabs/Home/Hot/Tooltip.dart';
import 'package:app/pages/Tabs/Home/Hot/Category.dart';

class HotComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TooltipComponent(), // 领劵三部曲
        HotCategoryComponent() // 分类导航
      ],
    );
  }
}
