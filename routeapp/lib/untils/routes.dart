import 'package:flutter/material.dart';
import 'package:routeapp/WidgetScreen.dart';
import 'package:routeapp/home_screen.dart';
import 'package:routeapp/screen_three.dart';
import 'package:routeapp/screen_two.dart';
import 'package:routeapp/untils/route_screens.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteScreen.Homescreen:
        return MaterialPageRoute(builder: (_) => Homescreen());
      case RouteScreen.Screentwo:
        return MaterialPageRoute(
            builder: (_) => Screentwo(
                  data: settings.arguments as Map,
                ));
      case RouteScreen.ScreenThree:
        return MaterialPageRoute(builder: (_) => ScreenThree());
      case RouteScreen.Widgetscreen:
        return MaterialPageRoute(builder: (_) => WidgetScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No Page Route'),
            ),
          );
        });
    }
  }
}
