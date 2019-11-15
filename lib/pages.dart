import 'package:flutter/material.dart';
import 'package:flutter_route/route_util.dart';

import 'login_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

abstract class PageNames {
  static const String SETTINGS = "/settings";
  static const String PROFILE = "/profile";
  static const String LOGIN = "/login";
}

initRoutes() {
  <String, Function>{
    /// 没有参数
    PageNames.LOGIN: (par) => LoginPage(),

    /// 2个参数
    PageNames.SETTINGS: (par) => SettingsPage(par["title"], par["content"]),

    /// 1个参数
    PageNames.PROFILE: (par) => MaterialPageRoute(builder: (ctx) => ProfilePage(par))
  }.forEach((name, builder) {
    defineRoute(name, builder);
  });
}