import 'package:flutter/material.dart';
import 'package:flutter_route/profile_page.dart';
import 'package:flutter_route/route_util.dart';
import 'package:flutter_route/settings_page.dart';

abstract class PageNames {
  static const String SETTINGS = "/settings";
  static const String PROFILE = "/profile";
}

initRoutes() {
  defineRoute(PageNames.SETTINGS, (ctx, par) => SettingsPage(par["title"], par["content"]));
  defineRoute(PageNames.PROFILE, (par) => MaterialPageRoute(builder: (ctx) => ProfilePage(par)));
}
