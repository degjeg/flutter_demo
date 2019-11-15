import 'package:flutter/material.dart';
import 'package:flutter_route/pages.dart';
import 'package:flutter_route/route_util.dart';

void main() {
  initRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorObservers: [navigatorObserver],
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: () => pushNamed(PageNames.LOGIN),
            title: Text("登录"),
          ),
          ListTile(
            onTap: () => pushNamed(PageNames.SETTINGS, {"title": "打酱油", "content": "1斤酱油"}),
            title: Text("设置"),
          ),
          ListTile(
            onTap: () => pushNamed(PageNames.PROFILE, "参数1"),
            title: Text("资料1"),
          ),
          ListTile(
            onTap: () => pushNamed(PageNames.PROFILE, "参数2"),
            title: Text("资料2"),
          )
        ],
      ),
    );
  }
}


