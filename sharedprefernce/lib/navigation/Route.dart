import 'package:flutter/material.dart';
import 'package:sharedprefernce/Pages/Login.dart';
import 'package:sharedprefernce/navigation/Route_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routescreen.LOGIN:
        return MaterialPageRoute(builder: (_) => Login());

      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Route Found'),
                ));
    }
  }
}
