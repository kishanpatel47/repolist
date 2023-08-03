import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/Screen/Aboutus.dart';
import 'package:suvidha_sarathi/Screen/Dashbord.dart';
import 'package:suvidha_sarathi/Screen/Events.dart';
import 'package:suvidha_sarathi/Screen/Login.dart';
import 'package:suvidha_sarathi/Screen/Registerscreen.dart';
import 'package:suvidha_sarathi/Screen/Splashscreen.dart';
import 'package:suvidha_sarathi/Screen/Suvidhasarathi_Home.dart';
import 'package:suvidha_sarathi/Screen/WhySuvidhasarathi.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteScreen.Splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case RouteScreen.Login:
        return MaterialPageRoute(builder: (_) => const Login());
      case RouteScreen.WhySuvidhasarathi:
        return MaterialPageRoute(
            builder: (_) => const WhySuvidhasarathi(
                  index: 1,
                ));

      case RouteScreen.Registerscreen:
        return MaterialPageRoute(builder: (_) => const NewRegister());
      case RouteScreen.Dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case RouteScreen.Suvidhasarathi_Home:
        return MaterialPageRoute(
            builder: (_) => const Suvidhasarathi_Home(
                  index: 0,
                ));
      case RouteScreen.Event:
        return MaterialPageRoute(
            builder: (_) => const Events(
                  index: 2,
                ));
      case RouteScreen.Aboutus:
        return MaterialPageRoute(
            builder: (_) => const Aboutus(
                  index: 5,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text('No Page  in Route'),
                ));
    }
  }
}
