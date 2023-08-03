import 'package:flutter/material.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({Key? key}) : super(key: key);

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Ram kumer i am Good ',
      // textDirection: TextDirection.rtl,

      // textScaleFactor: 78,

      style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          // letterSpacing: 5.0,
          wordSpacing: 50.0,
          // color: Colors.lightGreen,
          foreground: Paint()
            ..color = Colors.brown
            ..strokeWidth = 0.5
            ..style = PaintingStyle.stroke),
            textAlign: TextAlign.center,
    );
  }
}
