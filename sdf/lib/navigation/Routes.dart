import 'package:flutter/material.dart';
import 'package:suvidhasarathi/Screen/Dashbord.dart';
import 'package:suvidhasarathi/Screen/Login.dart';
import 'package:suvidhasarathi/Screen/Registerscreen.dart';
import 'package:suvidhasarathi/Screen/Splashscreen.dart';
import 'package:suvidhasarathi/navigation/route_screen.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteScreen.Splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case RouteScreen.Login:
        return MaterialPageRoute(builder: (_) => Login());
      case RouteScreen.Registerscreen:
        return MaterialPageRoute(builder: (_) => NewRegister());
      case RouteScreen.Dashboard:
        return MaterialPageRoute(builder: (_) => Dashboard());

      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Page  in Route'),
                ));
    }
  }
}
