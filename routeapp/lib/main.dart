import 'package:flutter/material.dart';
import 'package:routeapp/home_screen.dart';
import 'package:routeapp/screen_two.dart';
import 'package:routeapp/untils/route_screens.dart';
import 'package:routeapp/untils/routes.dart';

void main() {
  runApp(const Mainapp());
}

class Mainapp extends StatefulWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      initialRoute: RouteScreen.Widgetscreen,
      onGenerateRoute: Routes.generateRoute,
      // routes: {
      //   Homescreen.id: (context) => Homescreen(),
      //   Screentwo.id: (context) => Screentwo()
      // },
    );
  }
}
