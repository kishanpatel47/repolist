import 'package:flutter/material.dart';
import 'package:widgetdemo/units/Route_screen.dart';
import 'package:widgetdemo/units/route.dart';

void main() {
  runApp(const Routefile());
}

class Routefile extends StatefulWidget {
  const Routefile({Key? key}) : super(key: key);

  @override
  State<Routefile> createState() => _RoutefileState();
}

class _RoutefileState extends State<Routefile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routescreen.ContainerWidget,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
