import 'package:flutter/material.dart';

typedef Widget RouteWidgetBuilder(BuildContext ctx, dynamic parameter);
typedef Route RouteBuilder(dynamic parameter);

NavigatorObserver navigatorObserver = NavigatorObserver();
Map pages = <String, Function>{};

void defineRoute(String name, Function builder) => pages[name] = builder;

Route<dynamic> generateRoute(RouteSettings setting) {
  Function builder = pages[setting.name];

  print("generateRoute ${setting.name} $builder");
  if (builder is RouteWidgetBuilder) {
    return MaterialPageRoute(builder: (ctx) {
      return builder(ctx, setting.arguments);
    });
  } else if (builder is RouteBuilder) {
    return builder(setting.arguments);
  }
  return null;
}

Future pushNamed(String page, [Object arg]) {
  return navigatorObserver.navigator.pushNamed(page, arguments: arg);
}
