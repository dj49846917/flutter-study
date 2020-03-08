import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 启动动画
class AnimationPage extends StatefulWidget {
  AnimationPage({Key key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;//AnimationController是Animation的一个子类，它可以控制Animation，可以控制动画的时间，类型，过渡3曲线
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    //上面两行代码表示初始化一个Animation控制器， vsync垂直同步，动画执行时间3000毫秒,然后我们设置一个Animation动画，使用上面设置的控制器


    //监听动画运行状态，当状态为completed时，动画执行结束，跳转首页
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.pushNamed(context, '/guide');
      }
    });
    _controller.forward(); // 播放动画
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();//释放动画
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 667, allowFontScaling: true);
    return Scaffold(
      body: Container(
        child: Image.asset('images/img_ani.png', height: ScreenUtil().setHeight(667), fit: BoxFit.fill),
      ),
    );
  }
}