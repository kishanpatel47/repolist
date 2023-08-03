import 'package:flutter/material.dart';

import 'package:widgetdemo/units/Route_screen.dart';

class TextSpanwidget extends StatefulWidget {
  const TextSpanwidget({Key? key}) : super(key: key);

  @override
  State<TextSpanwidget> createState() => _TextSpanwidgetState();
}

class _TextSpanwidgetState extends State<TextSpanwidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('TextSpanWidget')),
        body: SafeArea(
          child: Column(
            children: [
              Text.rich(
                TextSpan(text: 'Already register user', children: [
                  TextSpan(text: ' ? '),
                  TextSpan(
                    text: 'Register now',
                    style: TextStyle(color: Colors.teal),
                  ),
                ]),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routescreen.DeafultTextStyle);
                },
                child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.lightBlue.shade100),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            (context), Routescreen.DeafultTextStyle);
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
                      child: Text('Next'),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
