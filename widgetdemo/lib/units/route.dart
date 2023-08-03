import 'package:flutter/material.dart';
import 'package:widgetdemo/Pages/ContainerWidget.dart';
import 'package:widgetdemo/Pages/DeafultTextStyle.dart';
import 'package:widgetdemo/Pages/TextSpanwidget.dart';
import 'package:widgetdemo/Pages/TextWidget.dart';
import 'package:widgetdemo/units/Route_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routescreen.TextSpanwidget:
        return MaterialPageRoute(builder: (context) => TextSpanwidget());
      case Routescreen.DeafultTextStyle:
        return MaterialPageRoute(builder: (context) => DeafultTextStyle());
      case Routescreen.TextWidget:
        return MaterialPageRoute(builder: (context) => TextWidget());
      case Routescreen.ContainerWidget:
        return MaterialPageRoute(builder: (context) => ContainerWidget());

      default:
        return MaterialPageRoute(
            builder: (_) => Container(
                  child: Text('No Page  Route'),
                ));
    }
  }
}
