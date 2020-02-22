import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 初始化加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}

// import 'package:flutter/material.dart';
// // import 'routes/Routes.dart';

// void main() {
//   runApp(Myapp());
// }

// class Myapp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('demo')
//         ),
//         body: Text('的mo'),
//         drawer: Drawer( // 左侧导航栏
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: UserAccountsDrawerHeader(
//                       accountName: Text('一笑、奈何'), // 用户名
//                       accountEmail: Text('821084785@qq.com'), // 邮箱
//                       currentAccountPicture: CircleAvatar( // 左侧图片
//                         backgroundImage: NetworkImage('https://www.itying.com/images/flutter/4.png'),
//                       ),
//                       decoration: BoxDecoration(
//                         image: DecorationImage( // 背景图片
//                           image: NetworkImage('https://www.itying.com/images/flutter/5.png'),
//                           fit: BoxFit.cover
//                         )
//                       ),
//                       otherAccountsPictures: <Widget>[
//                         Image.network('https://www.itying.com/images/flutter/6.png'),
//                         Image.network('https://www.itying.com/images/flutter/1.png')
//                       ],
//                     )
//                   )]
//               ),
//               ListTile(
//                 leading: CircleAvatar(child: Icon(Icons.home)),
//                 title: Text('我的空间'),
//               ),
//               Divider(), // 分割线
//               ListTile(
//                 leading: CircleAvatar(child: Icon(Icons.settings)),
//                 title: Text('设置'),
//               )
//             ],
//           ),
//         ),
//         endDrawer: Drawer(
//           child: Text('右侧导航栏')
//         ),
//       ),
//     );
//   }
// }