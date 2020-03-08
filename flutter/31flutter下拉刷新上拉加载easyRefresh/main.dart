import 'package:app/router/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  var home = HomeData();
  var providers = Providers();
  providers..provide(Provider<HomeData>.value(home));
  runApp(ProviderNode(child: Myapp(), providers: providers));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 禁止滚动条
      initialRoute: '/start',
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: [
        GlobalEasyRefreshLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('zh', 'CN'),
      ],
    );
  }
}
